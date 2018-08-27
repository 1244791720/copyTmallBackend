<%@page import="service.ProductImageService"%>
<%@page import="po.ProductImage"%>
<%@page import="service.ProductService"%>
<%@page import="po.Product"%>
<%@page import="po.Category"%>
<%@page import="java.util.List"%>
<%@page import="service.CategoryService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	pageContext.setAttribute("basePath", basePath);
 %>
 <%
 	List<Category> categorys = CategoryService.getAllCategory();
 	List<Product> products = ProductService.getAllProduct();
 	List<ProductImage> productImages = ProductImageService.getAllProductImage();
 	/* System.out.print(productImages);  */
 %>
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
    <link rel="stylesheet" href="css/homepage.css" />
    <title>首页</title>
</head>
<body>
   <!--  <iframe src="commonNav.html" align="middle" seamless="seamless" frameborder="0" width="100%" height="34px"></iframe>
    <iframe src="commonSearch.html" frameborder="0" width="100%" height="140px;"></iframe>  -->
   <jsp:include page="commonNav.jsp"></jsp:include>
    <jsp:include page="commonSimpleSearch.jsp"></jsp:include> 
    <div class="homepageDiv">
        <img src="image/site/catear.png" id="catear"style="left:240.5px;" class="catear" >
        <div class="categoryWithCarousel">
            <div class="headbar">
                <div class="head" style="">
                    <span style="margin-left:10px" class="glyphicon glyphicon-th-list"></span>
                    <span style="margin-left:10px">商品分类</span>
                </div>
                <div class="rightMenu">
                    <span>
                        <a href=""><img src="image/site/chaoshi.png"></a>
                    </span>
                    <span><a href=""><img src="image/site/guoji.png"></a></span>
                    <span> <a href="forecategory?cid=83">平板电视</a></span>
                    <span><a href="forecategory?cid=82">马桶</a></span>
                    <span><a href="forecategory?cid=81">沙发</a></span>
                    <span><a href="forecategory?cid=80">电热水器</a></span>
                </div>
            </div>
            
            <div class="" style="position: relative;">
            	<div class="categoryMenu" style="left:-20px;">
            		<%
            				int subTitleNum = 0;
              				for (Category category:categorys) {
              		%>
              			<div cid="<%=category.getId()%>" class="eachCategory" style="background-color:rgb(226,226,227)">
	              					<span class="glyphicon glyphicon-link"></span>
	    	                        <a href=""><%=category.getName() %></a>
              			</div>
              		<%
              				}              		
              		%>
            	</div>
            	<div style="position: relative;left:0;top:0;">
            		<%
            			for (Category category:categorys) {
            		%>
            			<div cid="<%=category.getId()%>" class="productsAsideCategorys" style="left: -20px; display: none;">
            				<div class="row">
            				<%
            					for (Product prouduct : products) {
            						if (category.getId() == prouduct.getCid()) {
            							String s = prouduct.getSubTitle();
            							s = s.split(" ")[0];
            							%>
            								<a href="foreproduct?pid=<%=prouduct.getId()%>"><%=s%></a>
					                            
            							<%
            							subTitleNum++;
            							
            						}
            					}
            				%>
            					<div class="seperator"></div>
            				</div>
            			</div>
            		<%
            			}
            		%>
            	</div>
            </div>
            
           
                <div id="carousel-of-product"class="carousel-of-product carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-of-product" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-of-product" data-slide-to="1"></li>
                        <li data-target="#carousel-of-product" data-slide-to="2"></li>
                        <li data-target="#carousel-of-product" data-slide-to="3"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                   <div class="carousel-inner">
                       <div class="item active">
                           <img src="image/lunbo/1.jpg" style="height:510px !important;" alt="slide">
                       </div>
                       <div class="item">
                           <img src="image/lunbo/2.jpg" style="height:510px !important;" alt="slide">
                       </div>
                       <div class="item">
                           <img src="image/lunbo/3.jpg" style="height:510px !important;"  alt="slide">
                       </div>
                       <div class="item">
                           <img src="image/lunbo/4.jpg" style="height:510px !important;"  alt="slide">
                       </div>
                   </div>

                </div>
            </div>
        </div>
        <div class="homepageCategoryProducts">
        <% 
        	for (Category category : categorys) {
        %>
        		<div class="eachHomepageCategoryProducts ">
        			<div class="left-mark"></div>
        			<span class="categoryTitle"><%=category.getName()%></span>
        			<br />
        			<%
        				int num = 0;
        				for (Product product : products) {	
        					if (product.getCid() == category.getId()) {
        					
        			%>
        				 <div class="productItem">	
        					<a href="foreproduct?pid=<%=product.getId()%>">
        					<%
        						for (ProductImage  productImage : productImages) {
        							if (productImage.getPid() == product.getId()) {
        								String src = basePath + "image/productSingle/" + productImage.getId() + ".jpg";
        					%>	
        							<img src="<%=src%>" alt="<%=product.getId()%>" width="100px" />
        					<%		
        								break;
        							}
        						}
        					%>   		
                   			 </a>
                   			 <a class="productItemDescLink" href="">
                   			 <%
                   			 	String productItemDesc = "[热销]" + product.getName();
                   				productItemDesc = productItemDesc.substring(0, 24);
                   			 %>
		                        <span class="productItemDesc"><%=productItemDesc %></span>
		                    </a>
        				</div>	 
        					
        			<%	
	        					num++;
	        					if(num == 5) {
	        						num = 0;
	        						break;
	        					}
        					}
        				}
        			%>
        			
                	<br />
        		</div>
        <% 
        	}
        %>
        
        </div>
      
             <img id="endpng" class="endpng" src="image/site/end.png">
        </div>
    </div>
  	<iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe> 
    <script src="js/homepage.js"></script>
</body>

</html>
