package com.hospital.controller;

import com.hospital.entity.ShiroUser;
import com.hospital.entity.User;
import com.hospital.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author WTY
 * @title: 基础controller
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/25 15:24
 */
public class BaseController {

    @Autowired
    private UserService userService;

    /**
     * 获取当前登录用户
     * @return
     */
    public User getCurrentUser() {
        ShiroUser shiroUser = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        User currentUser = userService.findUserById(shiroUser.id);
        return currentUser;
    }

    /**
     * 获取当前登录用户的id
     * @return
     */
    public Long getUserId() {
        return this.getCurrentUser().getUserId();
    }

    /**
     * 获取当前登录用户的用户名
     * @return
     */
    public String getStaffName() {
        return this.getCurrentUser().getUserNickName();
    }

    /**
     *  获取当前用户性别
     */
    public Integer getUserSex(){
        return this.getCurrentUser().getUserSex();
    }



}
