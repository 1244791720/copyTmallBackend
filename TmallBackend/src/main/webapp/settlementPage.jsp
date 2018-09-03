<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="css/settlementPage.css" />
    <title>结算页面</title>
</head>
<body>
   	<jsp:include page="commonNav.jsp"></jsp:include>
    <div class="buyPageDiv">
        <form action="forecreateOrder" method="post">
            <div class="buyFlow">
                <img class="pull-left" src="image/site/simpleLogo.png">
                <img class="pull-right" src="image/site/buyflow.png">
                <div style="clear:both"></div>
            </div>
            <div class="address">
                <div class="addressTip">输入收货地址</div>
                <div>
                    <table class="addressTable">
                        <tbody>
                            <tr>
            					<td class="firstColumn">详细地址<span class="redStar">*</span></td>
            					<td><textarea name="address" placeholder="建议您如实填写详细收货地址，例如接到名称，门牌号码，楼层和房间号等信息"></textarea></td>
    				        </tr>
                            <tr>
            					<td>邮政编码</td>
            					<td><input name="post" placeholder="如果您不清楚邮递区号，请填写000000" type="text"></td>
				            </tr>
                            <tr>
            					<td>收货人姓名<span class="redStar">*</span></td>
            					<td><input name="receiver" placeholder="长度不超过25个字符" type="text"></td>
            				</tr>
                            <tr>
            					<td>手机号码 <span class="redStar">*</span></td>
            					<td><input name="mobile" placeholder="请输入11位手机号码" type="text"></td>
            				</tr>
                        </tbody>
                    </table>
                </div>
                <div class="productListTip">确认订单信息</div>
                <table class="productListTable">
                    <thead>
                        <tr>
                            <th class="productListTableFirstColumn" colspan="2">
                                <img class="tmallbuy" src="image/site/tmallbuy.png">
                                <a class="marketLink" href="#nowhere">店铺：天猫店铺</a>
                                <a class="wangwanglink" href="#nowhere">
                                    <span class="wangwangGif"></span>
                                </a>
                            </th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>小计</th>
                            <th>配送方式</th>
                        </tr>
                        <tr class="rowborder">
                            <td colspan="2"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                    </thead>
                    <tbody class="productListTableTbody">
                        <tr class="orderItemTR">
                            <td class="orderItemFirstTD">
                                <img class="orderItemImg" src="image/productSingle_middle/665.jpg">
                            </td>
                            <td class="orderItemProductInfo">
                                <a href="foreproduct?pid=90" class="orderItemProductLink">
        							Changhong/长虹 65S1安卓智能12核65英寸网络平板LED液晶电视机70
        						</a>
                                <img src="image/site/creditcard.png" title="支持信用卡支付">
                                <img src="image/site/7day.png" title="消费者保障服务,承诺7天退货">
                                <img src="image/site/promise.png" title="消费者保障服务,承诺如实描述">
                            </td>
                            <td>
    						    <span class="orderItemProductPrice">￥3,824.16</span>
    						</td>
                            <td>
    						    <span class="orderItemProductNumber">1</span>
    						</td>
                            <td>
                                <span class="orderItemUnitSum">￥3,824.16</span>
                            </td>
                            <td class="orderItemLastTD">
                                <label class="orderItemDeliveryLabel">
        							<input type="radio" value="" checked="checked">
        							普通配送
    						    </label>
                                <select class="orderItemDeliverySelect">
        							<option>快递 免邮费</option>
        						</select>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="orderItemSumDiv">
                    <div class="pull-left">
        				<span class="leaveMessageText">给卖家留言:</span>
        				<span>
        					<img class="leaveMessageImg" src="image/site/leaveMessage.png" style="display: inline;">
        				</span>
        				<span class="leaveMessageTextareaSpan" style="display: none;">
            				<textarea name="userMessage" class="leaveMessageTextarea"></textarea>
        					<div>
        						<span>还可以输入200个字符</span>
        					</div>
        				</span>
    			    </div>
                    <span class="pull-right">店铺合计(含运费): ￥3,824.16</span>
                </div>
            </div>
            <div class="orderItemTotalSumDiv">
                <div class="pull-right">
        			<span>实付款：</span>
        			<span class="orderItemTotalSumSpan">￥7,648.32</span>
        		</div>
            </div>
            <div class="submitOrderDiv">
        		<button type="submit" class="submitOrderButton">提交订单</button>
        	</div>
        </form>
    </div>
    <iframe src="commonFoot.html" frameborder="0" width="100%" height="600px;"></iframe>
    <script src="js/settlementPage.js"></script>
</body>
</html>
