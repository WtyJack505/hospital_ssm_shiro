package com.hospital.common.shiro;

import com.hospital.entity.ShiroUser;
import com.hospital.entity.User;
import com.hospital.service.RoleService;
import com.hospital.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.lang3.StringUtils;

import java.util.*;

/**
 * @version 1.0
 * @title:PersonRealm
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/25
 * @description:TODO
 */
public class PersonRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    /**
     * Shiro登录认证
     * (原理：
     *     ---- 用户提交 用户名和密码
     *     ---- shiro 封装令牌
     *     ---- realm 通过用户名将密码查询返回
     *     ---- shiro 自动去比较查询出密码和用户输入密码是否一致
     *     ---- 进行登陆控制
     *     )
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
            throws AuthenticationException {
        String userNickName = (String) token.getPrincipal();
        // 通过登录名找用戶
        User user = userService.findUserByLoginName(userNickName);
        if (user == null){
            throw new UnknownAccountException();
        }
        // 账号未启用
        if (user.getUserStatus() == 0){
            throw new DisabledAccountException();
        }
        // 根据用户id 查询出它所对应的角色id , 在ht_user_role表中查询
        List<Long> roleList = roleService.findRoleIdListByUserId(user.getUserId());
        // 将数据放到 ShiroUser(VO) 中。后面将信息存进shiro中。
        ShiroUser shiroUser = new ShiroUser(user.getUserId(), user.getUserNickName(),
                user.getUserName(), roleList);
        // 加盐
        ByteSource salt = ByteSource.Util.bytes(user.getUserNickName());
        // 最后一步交给 shiro
        // 认证缓存信息
        SimpleAuthenticationInfo getInfo =
                new SimpleAuthenticationInfo(shiroUser,user.getUserPassword(),salt,getName());
        return getInfo ;
    }

    /**
     * shiro的权限认证
     *
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //拿到用户的身份信息
        ShiroUser shiroUser = (ShiroUser) principalCollection.getPrimaryPrincipal();
        //拿到用户的角色id
        List<Long> roleList = shiroUser.roleList;
        Set<String> urlSet = new HashSet<String>();
        for (Long roleId : roleList){
            List<Map<Long,String>> roleResourceList = roleService.findRoleResourceListByRoleId(roleId);
            if (roleResourceList != null) {
                for (Map<Long, String> map : roleResourceList) {
                    if (StringUtils.isNoneBlank(map.get("permission"))) {
                        urlSet.add(map.get("permission"));
                    }
                }
            }
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addStringPermissions(urlSet);
        return info;
    }

    /**
     * 清除当前用户权限信息
     */
    public void clearCached() {
        //获取当前等的用户凭证，然后清除
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }


}
