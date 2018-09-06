<%@page import="service.ProductImageService"%>
<%@page import="po.Product"%>
<%@page import="service.ProductService"%>
<%@page import="po.ShoppingCart"%>
<%@page import="java.util.List"%>
<%@page import="service.ShoppingCartService"%>
<%@page import="service.UserService"%>
<%@page import="po.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/jquery.min.js"></script>
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="js/bootstrap.min.js""></script>
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/shoppingCartPage.css" />
    <title>购物车页面</title>
</head>
<body>
	<%
		//获得对应uid 购物车
		// 1.获得 uid
		int uid = 0;
		String userName = (String)session.getAttribute("name");
		if (userName != null) {
			User o = UserService.getUserByUsername(userName);
			 uid = o.getId();
		}
		// 2.获得购物车对象
		List<ShoppingCart> shoppingCarts = ShoppingCartService.getAllShoppingCart(uid);
		
		
/* 		System.out.print("uid:--" + uid); */
	%>
	<jsp:include page="commonNav.jsp"></jsp:include>
	<jsp:include page="commonSimpleSearch.jsp"></jsp:include>
    <div class="cartDiv">
        <div class="cartTitle pull-right">
    		<span>已选商品  (不含运费)</span>
    		<span class="cartTitlePrice">￥0.00</span>
    		<button class="createOrderButton" disabled="disabled">结 算</button>
    	</div>
        <div class="cartProductList">
            <table class="cartProductTable">
                <thead>
    				<tr>
    					<th class="selectAndImage">
    						<img selectit="false" class="selectAllItem" src="image/site/cartNotSelected.png">
    					全选
    					</th>
    					<th>商品信息</th>
    					<th>单价</th>
    					<th>数量</th>
    					<th width="120px">金额</th>
    					<th class="operation">操作</th>
    				</tr>
    			</thead>
                <tbody>
                	<% 
                		for (ShoppingCart s : shoppingCarts) {
                			int pid = s.getPid();
                			//根据pid 获得 p对象
                			Product p = ProductService.getProductById(pid);
                			//根据pid 获得 p图片
                			int imgId = ProductImageService.getProductImagesByPid(pid).get(0).getId();
                			
                	%>
                		<tr class="cartProductItemTR">
	                		<td>
	    						<img selectit="false" oiid="10434" class="cartProductItemIfSelected" src="image/site/cartNotSelected.png">
	    						<a style="display:none" href="#nowhere"><img src="image/site/cartSelected.png"></a>
	    						<img class="cartProductImg" src="image/productSingle_middle/<%=imgId%>.jpg">
	    					</td>
	    					<td>
	    						<div class="cartProductLinkOutDiv">
	    							<a href="foreproduct?pid=<%=pid%>" class="cartProductLink"><%=p.getName()%></a>
	    							<div class="cartProductLinkInnerDiv">
	    								<img src="image/site/creditcard.png" title="支持信用卡支付">
	    								<img src="image/site/7day.png" title="消费者保障服务,承诺7天退货">
	    								<img src="image/site/promise.png" title="消费者保障服务,承诺如实描述">
	    							</div>
	    						</div>
	    					</td>
	    					<td>
	    						<span class="cartProductItemOringalPrice">￥<%=p.getOriginalPrice()%></span>
	    						<span class="cartProductItemPromotionPrice">￥<%=p.getPromotePrice()%></span>
	    					</td>
	    					<td>
	        					<div class="cartProductChangeNumberDiv">
	        						<span class="hidden orderItemStock " pid="<%=pid%>">84</span>
	        						<span class="hidden orderItemPromotePrice " pid="<%=pid%>"><%=p.getPromotePrice()%></span>
	        						<a pid="<%=pid%>" class="numberMinus" href="#nowhere">-</a>
	        						<input pid="<%=pid%>" oiid="10434" class="orderItemNumberSetting" autocomplete="off" value="1">
	        						<a stock="84" pid="90" class="numberPlus" href="#nowhere">+</a>
	        					</div>
	        				 </td>
	        				 <td>
    						<span class="cartProductItemSmallSumPrice" oiid="10434" pid="90">
    						￥<%=p.getPromotePrice()%>
    						</span>
    					</td>
                        <td>
    						<a class="deleteOrderItem" oiid="10434" href="#nowhere">删除</a>
    					</td>
                		</tr>
                	<%
                		}
                	%>
    			    <!-- <tr oiid="10434" class="cartProductItemTR">
                        <td>
    						<img selectit="false" oiid="10434" class="cartProductItemIfSelected" src="image/site/cartNotSelected.png">
    						<a style="display:none" href="#nowhere"><img src="image/site/cartSelected.png"></a>
    						<img class="cartProductImg" src="image/productSingle_middle/665.jpg">
    					</td>
                        <td>
    						<div class="cartProductLinkOutDiv">
    							<a href="foreproduct?pid=90" class="cartProductLink">Changhong/长虹 65S1安卓智能12核65英寸网络平板LED液晶电视机70</a>
    							<div class="cartProductLinkInnerDiv">
    								<img src="image/site/creditcard.png" title="支持信用卡支付">
    								<img src="image/site/7day.png" title="消费者保障服务,承诺7天退货">
    								<img src="image/site/promise.png" title="消费者保障服务,承诺如实描述">
    							</div>
    						</div>
    					</td>
                        <td>
    						<span class="cartProductItemOringalPrice">￥4499.01</span>
    						<span class="cartProductItemPromotionPrice">￥3824.16</span>
    					</td>
                        <td>
        					<div class="cartProductChangeNumberDiv">
        						<span class="hidden orderItemStock " pid="90">84</span>
        						<span class="hidden orderItemPromotePrice " pid="90">3824.16</span>
        						<a pid="90" class="numberMinus" href="#nowhere">-</a>
        						<input pid="90" oiid="10434" class="orderItemNumberSetting" autocomplete="off" value="1">
        						<a stock="84" pid="90" class="numberPlus" href="#nowhere">+</a>
        					</div>
        				 </td>
                         <td>
    						<span class="cartProductItemSmallSumPrice" oiid="10434" pid="90">
    						￥3,824.16
    						</span>
    					</td>
                        <td>
    						<a class="deleteOrderItem" oiid="10434" href="#nowhere">删除</a>
    					</td>
                    </tr> -->
                    
    			</tbody>
            </table>
        </div>
        <div class="cartFoot">
            <img selectit="false" class="selectAllItem" src="image/site/cartNotSelected.png">
            <span>全选</span>
            <div class="pull-right">
    			<span>已选商品 <span class="cartSumNumber">0</span> 件</span>
    			<span>合计 (不含运费): </span>
    			<span class="cartSumPrice">￥0.00</span>
    			<button class="createOrderButton" disabled="disabled">结  算</button>
    		</div>
        </div>
    </div>

    <iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe>
    <script src="js/shoppingCartPage.js"></script>
</body>
</html>
