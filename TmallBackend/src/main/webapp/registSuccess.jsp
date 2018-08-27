<%@page import="po.User"%>
<%@page import="java.util.List"%>
<%@page import="service.UserService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js""></script>
    <link rel="stylesheet" href="css/base.css" />
    <title>注册页面</title>
    <style type="text/css">
    	div.registerSuccessDiv {
		    margin: 10px 20px;
		    background-color: #F3FDF6;
		    border: 1px solid #DEF3E6;
		    font-size: 16px;
		    color: #3C3C3C;
		    padding: 20px 130px;
		}
    </style>
</head>

<body>
    <jsp:include page="commonNav.jsp"></jsp:include>
    <jsp:include page="commonSimpleSearch.jsp"></jsp:include>
    <div class="registerSuccessDiv">	
			<img src="image/site/registerSuccess.png">
				恭喜注册成功
	</div>
    <iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe>
</body>