<%@page import="service.UserService"%>
<%@page import="po.User"%>
<%@page import="service.ShoppingCartService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/bootstrap.min.js""></script>
<link rel="stylesheet" href="css/commonNav.css" />
<script src="js/commonNav.js"></script>
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
	//获得当前用户uid
	int uid = 0;
	String userName = (String)session.getAttribute("name");
		if (userName != null) {
			User o = UserService.getUserByUsername(userName);
			 uid = o.getId();
		}	
	//获得当前用户购物车数目
	int num = ShoppingCartService.getUserAddShopingCartNum(uid);
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
            <a href="shoppingCartPage.jsp">
            <span class=" glyphicon glyphicon-shopping-cart redColor" ></span>
            购物车<strong><%=num%></strong>件</a>
        </span>
        <!-- 触发模态框按钮 -->
        <%
        	if (!enableLogin) {
       	%>
       		<button class="btn btn-primary btn-lg" id="modalButton" style="display:none;" data-toggle="modal" data-target="#myModal">开始演示模态框</button>  
       	<%
        	}
        %>
         <!-- 模态框 -->
        <div class="modal in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	          <div class="modal-dialog" style="width:384px">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h4 class="modal-title" id="myModalLabel">账户登录</h4>
			            </div>
			            <form action="<%=basePath%>user/login" method="post">
				            <div class="modal-body" style="width:336px;">
					            		<div class="loginInput ">
										<span class="loginInputIcon ">
											<span class=" glyphicon glyphicon-user removeMarginAndPadding"></span>
										</span>
										<input id="name" name="name" placeholder="手机/会员名/邮箱" type="text">			
									</div>
									<div class="loginInput ">
										<span class="loginInputIcon ">
											<span class=" glyphicon glyphicon-lock"></span>
										</span>
										<input id="password" name="password" type="password" placeholder="密码">	
									</div>
				            		
							</div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				                <button type="submit" class="btn btn-primary" name="loginUser">登录</button>
				            </div>
			            </form>	
			        </div><!-- /.modal-content -->
			    </div>
		</div>
    </nav>
</body>
</html>
    