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
    <link rel="stylesheet" href="css/registrationPage.css" />
    <title>注册页面</title>
</head>
<body>
    <jsp:include page="commonNav.jsp"></jsp:include>
    <jsp:include page="commonSimpleSearch.jsp"></jsp:include>
        <div class="registerDiv">
            <div class="registerErrorMessageDiv">
                <div class="alert alert-danger" role="alert">
        		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
        		  	<span class="errorMessage"></span>
        		</div>
            </div>
            <table class="registerTable" align="center">
                <tbody>
                    <tr>
                        <td class="registerTip registerTableLeftTD">设置会员名</td>
                        <td></td>
                    </tr>
                    <tr>
            			<td class="registerTableLeftTD">登陆名</td>
            			<td class="registerTableRightTD"><input id="name" name="name" placeholder="会员名一旦设置成功，无法修改"> </td>
            		</tr>
                    <tr>
            			<td class="registerTip registerTableLeftTD">设置登陆密码</td>
            			<td class="registerTableRightTD">登陆时验证，保护账号信息</td>
            		</tr>
                    <tr>
            			<td class="registerTableLeftTD">登陆密码</td>
            			<td class="registerTableRightTD"><input id="password" name="password" type="password" placeholder="设置你的登陆密码"> </td>
            		</tr>
                    <tr>
            			<td class="registerTableLeftTD">密码确认</td>
            			<td class="registerTableRightTD"><input id="repeatpassword" type="password" placeholder="请再次输入你的密码"> </td>
            		</tr>
                    <tr>
            			<td colspan="2" class="registerButtonTD">
            				<a href="javascript:void(0);"><button>提   交</button></a>
            			</td>
            		</tr>
                </tbody>
            </table>
        </div>
    <iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe>
	<script type="text/javascript" src="js/registrationPage.js"></script>
</body>
</html>
