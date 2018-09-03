<%@page import="service.PropertyValueService"%>
<%@page import="po.PropertyValue"%>
<%@page import="service.PropertyService"%>
<%@page import="po.Property"%>
<%@page import="service.ProductImageService"%>
<%@page import="po.ProductImage"%>
<%@page import="service.CategoryService"%>
<%@page import="po.Category"%>
<%@page import="po.User"%>
<%@page import="service.UserService"%>
<%@page import="java.util.List"%>
<%@page import="po.Review"%>
<%@page import="service.ReviewService"%>
<%@page import="po.Product"%>
<%@page import="service.ProductService"%>
<%@page import="java.lang.*" %>
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
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/productPage.css" />
    <title>产品页面</title>
</head>
<body>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		pageContext.setAttribute("basePath", basePath);
	 %>
	<%
		String sLogin = (String)session.getAttribute("enableLogin");
		String pid = (String)session.getAttribute("pid");
		int ipid = Integer.parseInt(pid);
		Product p = ProductService.getProductById(ipid); 
		int cid = p.getCid();
		List<Review> reviews = ReviewService.getAllReview();
		List<ProductImage> pImages = ProductImageService.getProductImagesByPid(ipid);
		List<Property> propertys = PropertyService.getPropertysByCid(cid);
		/* System.out.println(enableLogin);  */  
	%>  
	<jsp:include page="commonNav.jsp"></jsp:include>
    <jsp:include page="commonSimpleSearch.jsp"></jsp:include>
    <div class="categoryPictureInProductPageDiv">
	    <img class="categoryPictureInProductPage" src="image/category/<%=cid%>.jpg">
    </div>
    <div class="productPageDiv">
        <div class="imgAndInfo">
            <div class="imgInimgAndInfo">
                <img  class="bigImg">
        		<div class="smallImageDiv">
        				<%
        					int num = 0;
        					for (ProductImage pImage : pImages) {
        						if (pImage.getPid() == ipid) {
        							
        				%>
        							<img src="image/productSingle/<%=pImage.getId()%>.jpg" bigimageurl="image/productSingle/<%=pImage.getId()%>.jpg" class="smallImage">
        				<% 			
        							num += 1;
        							if (num == 5) {
        								break;
        							}
        						}
        					}
        				%>	
        		</div>
            </div>
            <div class="infoInimgAndInfo">
                <div class="productTitle">
			        <%=p.getName()%>
                </div>
                <div class="productSubTitle">
			        <%=p.getSubTitle()%>
		        </div>
                <div class="productPrice">
                    <div class="juhuasuan">
                        <span class="juhuasuanBig">聚划算</span>
                        <span>此商品即将参加聚划算，<span class="juhuasuanTime">1天19小时</span>后开始，</span>
                    </div>
                </div>
                <div class="productPriceDiv">
                    <div class="gouwujuanDiv">
                        <img height="16px" src="image/site/gouwujuan.png">
                        <span> 全天猫实物商品通用</span>
                    </div>
                    <div class="originalDiv">
                        <span class="originalPriceDesc">价格</span>
                        <span class="originalPriceYuan">¥</span>
                        <span class="originalPrice"><%=p.getOriginalPrice()%></span>
                    </div>
                    <div class="promotionDiv">
                        <span class="promotionPriceDesc">促销价 </span>
                        <span class="promotionPriceYuan">¥</span>
                        <span class="promotionPrice"><%=p.getPromotePrice()%></span>
                    </div>
                </div>
                <div class="productSaleAndReviewNumber">
                    <div>
                        销量
                        <span class="redColor boldWord">30</span>
                    </div>
                    <div>
                        累计评价
                        <span class="redColor boldWord"> 19</span>
                    </div>
                </div>
                <div class="productNumber">
                    <span>数量</span>
                    <span>
                        <span class="productNumberSettingSpan">
                            <input class="productNumberSetting" type="text" value="1">
                        </span>
                        <span class="arrow">
                            <a href="#nowhere" class="increaseNumber">
            					<span class="updown">
            							<img src="image/site/increase.png">
            					</span>
                                <span class="updownMiddle"> </span>
        					</a>
                            <a href="#nowhere" class="decreaseNumber">
            					<span class="updown">
            							<img src="image/site/decrease.png">
            					</span>
    					    </a>
                        </span>
                            件
                    </span>
                    <span>库存<%=p.getStock()%>件</span>
                </div>
                <div class="serviceCommitment">
                    <span class="serviceCommitmentDesc">服务承诺</span>
                    <span class="serviceCommitmentLink">
        				<a href="#nowhere">正品保证</a>
        				<a href="#nowhere">极速退款</a>
        				<a href="#nowhere">赠运费险</a>
        				<a href="#nowhere">七天无理由退换</a>
    			    </span>
                </div>
                <div class="buyDiv">
                <%
                	String aHref1 = "", aHref2 = "";
	                if (sLogin != null) {
	        			aHref1 = basePath + "order/buyCart"; 
	        			aHref2 = basePath + "order/addCart";
	        		} else {
	        			aHref1 = "javascript:void(0);";
	        			aHref2 = "javascript:void(0);";
	        		}
                %>
                    <a href="<%=aHref1%>" class="buyCartLink">
                        <button class="buyButton">立即购买</button>
                    </a>
                    <a href="<%=aHref2%>" class="addCartLink">
                        <button class="addCartButton">
                            <span class="glyphicon glyphicon-shopping-cart flipx"></span>
                            加入购物车
                        </button>
                    </a>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="productReviewDiv selected">
            <div class="productReviewTopPart">
                <a href="" class="productReviewTopPartSelectedLink">商品详情</a>
                <a href="" class="selected">
                    累计评价
                    <span class="productReviewTopReviewLinkNumber">
                        19
                    </span>
                </a>
            </div>
            <div class="productReviewContentPart">
                <%
                	for(Review r : reviews) {
                		if (r.getPid() == ipid) {
                %>
                		<div class="productReviewItem">
                			<div class="productReviewItemDesc">
                				<div class="productReviewItemContent">
                					<%=r.getContent()%>
                				</div>
                				<div class="productReviewItemDate"><%=r.getCreateDate()%></div>
                			</div>
                			<div class="productReviewItemUserInfo">
                				<% 
                					User u = UserService.getUserById(r.getUid()); 
                				%>
                				<%=u.getName()%> 
		                        <span class="userInfoGrayPart">（匿名）</span>
		                    </div>
		                    <div style="clear:both"></div>
                		</div>
                <%		
                		}
                	}
                %>       
            </div>
        </div>
        <div class="productDetailDiv">
            <div class="productDetailTopPart">
                <a href="#nowhere" class="productDetailTopPartSelectedLink selected">
                    商品详情
                </a>
                <a href="#nowhere" class="productDetailTopReviewLink">
                    累计评价
                    <span class="productDetailTopReviewLinkNumber">19</span>
                </a>
            </div>
            <div class="productParamterPart">
                <div class="productParamter">产品参数：</div>
                <div class="productParamterList">
                    <%
                    	for (Property property: propertys) {
                    		int ptid = property.getId();
                    		PropertyValue pv = PropertyValueService.getPropertyValueByPtidAndPid(ptid, ipid);
                   %>
                   			<span><%=property.getName()%>:    <%=pv.getValue()%></span>
                   <% 
                    		
                    	}
                    %>
                    
                    <span>皮革材质:  头层牛皮 </span>      
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="productDetailImagesPart">
                <%
        					int num1 = 0;
        					for (ProductImage pImage : pImages) {
        						if (pImage.getPid() == ipid) {
        							
        				%>
        							<img src="image/productSingle/<%=pImage.getId()%>.jpg" bigimageurl="image/productSingle/<%=pImage.getId()%>.jpg" class="smallImage">
        				<% 			
        							num1 += 1;
        							if (num1 == 5) {
        								break;
        							}
        						}
        					}
        				%>
            </div>
        </div>

    </div>
    <iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe>

    <script src="js/productPage.js"></script>
</body>
</html>
