<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/8/25
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录--医务后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${path}/static/images/ico.jpg">
    <link href="${path}/static/layui-v2.6.8/css/layui.css" rel="stylesheet" />
    <script src="${path}/static/layui-v2.6.8/layui.js"></script>
    <script src="${path}/static/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/animate.css" media="all">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/login.css" media="all">
    <!-- [扩展JS] -->
    <script type="text/javascript" src="${staticPath}/static/js/extJs.js" charset="utf-8"></script>
    <script>
        /*刷新验证码*/
        function refreshImg() {
            document.getElementById("imgCode").src = "${path}/imageCode/showCode?timestamp="+(new Date()).getTime();
        }
        $(function (){
            if (window.parent.length>0)
                window.parent.location=location;
            /*用户登录*/
            layui.use(['layer','form'],function (){
                var layer = layui.layer,
                    form =layui.form;
                layer.alert('测试账号：admin 密码：123456',{
                    closeBtn: false,
                    offset: 't',
                    anim: 1
                });
                form.on('submit(loginForm)',function (data){
                    var url ="${staticPath}/login";
                    $.ajax({
                        url:url,
                        method:'post',
                        data:data.field,
                        dataType:'JSON',
                        success:function (data){
                            if (data.success){
                                layer.msg("登录成功",{offset: '60px', icon: 6, admin: 6, time: 1000});
                                window.location.href = '${path}/index';
                        }else{
                                refreshImg();
                                console.log("错误信息是："+data.msg);
                                layer.msg(data.msg,{offset:'60px', icon:5, anim:6, time:3000});
                            }
                        }
                    });
                });
            });
        });
        $(document).keydown(function (e) {
            if (e.keyCode ===13){
                $("#loginForm").trigger("click");
            }
        });
    </script>
</head>
<body>
<div class="main layui-layout animated shake larry-delay2" id="larry_login" style="margin-top: 94px;">
    <div class="title">WTY(医务)后台管理系统</div>
    <p class="info">登录中心</p>
    <div class="user-info">
        <div class="admin"><img src="${path}/static/images/admin.png"></div>
        <form class="layui-form" id="login" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label" style="color: #ffffff">用户名:</label>
                <input type="text" name="userNickName" style="ime-mode:disabled" required lay-verify="required" aautocomplete="off" class="layui-input larry-input" placeholder="请输入账号" autocomplete="off">
            </div>
            <div class="layui-form-item" id="userPassword">
                <label class="layui-form-label" style="color: #ffffff">密码:</label>
                <input type="password" name="userPassword" style="ime-mode:disabled" required lay-verify="required|password" aautocomplete="off" class="layui-input larry-input" placeholder="请输入密码" autocomplete="off">
            </div>
            <div class="layui-form-item larry-verfiy-code" id="larry_code">
                <input type="text" maxlength="4" name="txtCode" class="layui-input larry-input" required lay-verify="required" placeholder="输入验证码">
                <div class="code">
                    <div class="arrow"></div>
                    <div class="code-img">
                        <img src="${path}/imageCode/showCode" alt="点击切换" id="imgCode" onclick="refreshImg()">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <input type="button" class="layui-btn larry-btn" value="立即登录" id="loginForm"  lay-submit lay-filter="loginForm">
            </div>
        </form>
    </div>
    <div class="copy-right"><span style="color:#ffffff">Hospital Management System Design by wty</span></div>
</div>
</body>
</html>
