<%@ page contentType="text/html; charset=UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<%@ include file="/commons/global.jsp"%>
<html>
<head>
    <%@ include file="/commons/baseJs.jsp" %>
    <meta charset="utf-8">
    <title>医务后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chorme=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${path}/static/images/ico.jpg">
    <link rel="stylesheet" href="${path}/static/layui-v2.6.8/css/layui.css" media="all" />
    <link rel="stylesheet" href="${path}/static/css/iconfont1/iconfont.css" media="all">
    <link rel="stylesheet" href="${path}/static/css/index.css" media="all" />
</head>
<body class="main_body" style="width: 100%; height: 100%" onload="showTime()">
<div class="layui-layout layui-layout-admin">
    <!-- 顶部 -->
    <div class="layui-header header">
        <div class="layui-main">
            <a href="${path}/index" class="logo"><img src="#{path}/static/images/WtyJack505.png"></a>
            <%--显示/隐藏菜单--%>
            <a href="javascript:;" class="iconfont1 hideMenu icon-toggle"></a>
            <%--当时时间--%>
            <div id="div_time"></div>
            <%--右侧菜单--%>
            <ul class="layui-nav top_menu layui-layout-right">

                <li class="layui-nav-item showNotice" id="showNotice" pc>
                    <a href="javascript:;"><i class="iconfont1 icon-xitonggonggao1"></i><cite>系统公告</cite></a>
                </li>

                <li class="layui-nav-item" mobile>
                    <a href="javascript:;" class="mobileAddTab" data-url="${path}/user/editPwdPage">
                        <i class="iconfont1 icon-xiugaimima1" data-icon="icon-xiugaimima1"></i>
                        <cite>修改密码</cite>
                    </a>
                </li>

                <li class="layui-nav-item" mobile>
                    <a href="${path}/logout" class="signOut"><i class="iconfont1 icon-tuichu1"></i> 退出登录</a>
                </li>

                <li class="layui-nav-item" pc>
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe612;</i>
                        <shiro:principal property="name"></shiro:principal>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="${path}/user/personFile"><i class="iconfont1 icon-iconzhanghunor01" data-icon="icon-iconzhanghunor01"></i><cite> 个人资料</cite></a></dd>
                        <dd><a href="javascript:;" data-url="${path}/user/editPwdPage"><i class="iconfont1 icon-xiugaimima1" data-icon="icon-xiugaimima1"></i><cite> 修改密码</cite></a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item" pc>
                    <a  href="${path}/logout" class="signOut"><i class="iconfont1 icon-tuichu1"></i><cite> 退出登录</cite></a>
                </li>

            </ul>
        </div>
    </div>
     <!-- 左侧导航 -->
    <div class="layui-side layui-bg-black" id="box0">
        <div class="navBar"></div>
    </div>
    <!-- 右侧内容 -->
    <div class="layui-body layui-form">
            <div class="layui-tab marg0" lay-filter="bodyTab" id="top_tabs_box">
                <ul class="layui-tab-title top_tab" id="top_tabs">
                    <li class="layui-this" lay-id=""><i class="iconfont1 icon-tianchongxing-"></i><cite>&nbsp;后台首页</cite></li>
                </ul>
                <!-- 当前页面操作 -->
                <ul class="layui-nav closeBox">
                    <li class="layui-nav-item" pc>
                        <a href="javascript:;"><i class="iconfont1 icon-caozuo"></i> 页面操作</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i> 刷新当前</a></dd>
                            <dd><a href="javascript:;" class="closePageOther"><i class="iconfont1 icon-jujue"></i> 关闭其他</a></dd>
                            <dd><a href="javascript:;" class="closePageAll"><i class="iconfont1 icon-guanbi"></i> 关闭全部</a></dd>
                        </dl>
                    </li>
                </ul>
                <div class="layui-tab-content clildFrame">
                    <div class="layui-tab-item layui-show">
                        <iframe src="${path}/main"></iframe>
                    </div>
                </div>
            </div>
        </div>
</div>
<!-- 移动导航 -->
<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>
<script type="text/javascript" src="${path}/static/layui/layui.js"></script>
<script type="text/javascript" src="${path}/static/js/index.js"></script>
<script type="text/javascript" src="${path}/static/js/leftNav.js"></script>

</body>
</html>
