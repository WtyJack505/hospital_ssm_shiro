package com.hospital.controller;

import com.hospital.common.shiro.ShiroUtils;
import com.hospital.entity.Result;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * @author lenovo
 * @title: wty
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/25 15:24
 */
@Controller
public class LoginController extends BaseController{

    /**
     * 登入
     *
     * @param userName
     * @param password
     * @param txtCode
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Result loginPost(String userName, String password, String txtCode, HttpSession session){
        Result result = new Result();
        //对比验证码是否正确
        if (!(txtCode.equals(session.getAttribute("code")))){
            result.setMsg("验证码错误！");
            return result;
        }
        Subject user = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
        try{
            user.login(token);
        }catch (UnknownAccountException e){
            result.setMsg("账号不存在!");
            return result;
        }catch (DisabledAccountException e){
            result.setMsg("账号未启用!");
            return result;
        }catch (IncorrectCredentialsException e){
            result.setMsg("密码错误!");
            return result;
        }catch (RuntimeException e){
            result.setMsg("未知错误,请刷新界面重新登录！"+ e.getMessage());
            return result;
        }
        result.setSuccess(true);
        session.setAttribute("sex" , getUserSex());
        return result;
    }

    /**
     * 退出
     *
     * @return
     */
    @RequestMapping("/logout")
    public String logout() {
        ShiroUtils.logout();
        return "redirect:/";
    }
}
