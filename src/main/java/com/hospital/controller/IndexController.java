package com.hospital.controller;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 11:28
 */
@Controller
public class IndexController {

    /**
     * 登录界面
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }


    /**
     * 未授权
     */
    @RequestMapping(value = "/unAuth")
    public String unAuth() {
        if (SecurityUtils.getSubject().isAuthenticated() == false) {
            return "redirect:/login";
        }
        return "error/unAuth";
    }



}
