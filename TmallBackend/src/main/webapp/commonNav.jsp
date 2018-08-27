<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js""></script>
<link rel="stylesheet" href="css/commonNav.css" />
<title>天猫公共导航部分</title>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	pageContext.setAttribute("basePath", basePath);
 %>
 
<%
	Boolean enableLogin = false;
	String sLogin = (String)session.getAttribute("enableLogin");
	if (sLogin != null) {
		if (sLogin.equals("true")) {
			enableLogin = true;
		}
	}
	/* String name = (String)session.getAttribute("name"); */
%>
<body>
    <nav class="top">
        <a href="homepage.jsp">
            <span class="glyphicon glyphicon-home redColor"></span>
            天猫首页
        </a>

        <span>喵，欢迎来天猫</span>
        	<%
        		if (enableLogin) {
        	%>
        		<a href="">${name}</a>
        		<a href="<%=basePath%>user/loginOut">退出登录</a>
        	<% 
        		} else {
        	%>
        		<a href="login.jsp">登录</a>
            	<a href="registrationPage.jsp">免费注册</a>
        	<% 
        		}
        	%>
        <span class="pull-right">
            <a href="#nowhere">我的订单</a>
            <a href="#nowhere">
            <span class=" glyphicon glyphicon-shopping-cart redColor" ></span>
            购物车<strong>0</strong>件</a>
        </span>
    </nav>
</body>
</html>
    