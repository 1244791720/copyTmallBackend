<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/jquery.min.js"></script>
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="js/bootstrap.min.js""></script>
    <link rel="stylesheet" href="css/commonSimpleSearch.css" />
    <title>公共简易搜索栏</title>
</head>
<body>
    <div class="simpleSearchOutDiv">
        <a href="#nowhere">
            <img  id="simpleLogo" class="simpleLogo" src="image/site/simpleLogo.png"/>
        </a>
        <form action="">
            <div class="simpleSearchDiv pull-right">
                <input type="text" placeholder="平衡车 原汁机" value name="keyword" />
                <button class="searchButton" type="submit" >搜天猫</button>
                <div class="searchBelow">
                    <span>
                        <a href="">冰箱</a>
                        <span>|</span>
                    </span>
                    <span>
                        <a href="">空调</a>
                        <span>|</span>
                    </span>
                    <span>
                        <a href="">女表</a>
                        <span>|</span>
                    </span>
                    <span>
                        <a href="">男装</a>
                    </span>
                </div>
            </div>
        </form>
        <div style="clear:both;"></div>
    </div>
</body>
</html>
    