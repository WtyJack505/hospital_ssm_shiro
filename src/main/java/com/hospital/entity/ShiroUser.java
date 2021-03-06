package com.hospital.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @version 1.0
 * @title:SHIROUSER
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/24
 * @description:
 * 自定义Authentication对象，
 * 使得Subject除了携带用户的登录名外还可以携带更多信息
 */
public class ShiroUser implements Serializable {

    private static final long serialVersionUID = 1633127907812338268L;

    public Long id;
    /** loginName IS userNickName**/
    public String loginName;

    public String name;

    public List<Long> roleList;

    public ShiroUser(Long id, String loginName, String name, List<Long> roleList){
        this.id = id;
        this.loginName = loginName;
        this.name = name;
        this.roleList = roleList;
    }

    public String getName() {
        return name;
    }

    /**
     * 本函数输出将作为默认的<shiro:principal/>输出.
     */
    @Override
    public String toString() {
        return loginName;
    }


}
