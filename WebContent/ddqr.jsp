<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>本亲生活网</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<script src="script/global.js" type="text/javascript"></script>
<script src="script/head.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="style/base.css" />
<link rel="stylesheet" href="style/head.css" />
<script type="text/javascript">
	$(function() {
		var number=0;
		$(".xiaoji").each(function () {
			number=parseInt(number+(parseInt($(this).attr("numberC"))));
		});
		$("#cmNumber").html(number);
		var heji=0;
		$(".xiaojiji").each(function () {
			heji=heji+parseFloat($(this).html());
		});
		$("#cmPrice").html(heji.toFixed(2));
		$("#yingfufu").html(heji.toFixed(2));
		$("#getPrice").attr("value",heji.toFixed(2));
	});
</script>
<body>


<!--引入头部文件 -->
<%@include file="include/head.jsp"%>


<!--中部开始-->

<div class="ding_tjb">

<!--收获地址开始-->
<form action="addOrder" method="post">

<div class="lljl_2" style="height:auto; padding-bottom:20px;">
<div class="lljl_bt1"><span class="lljl_mc" style="border-bottom-color:#90a80b; color:#98b205;">确认收货地址</span></div>

<div class="shdzk" style="height: 266px">
<div class="shr_wbk">&nbsp;&nbsp;&nbsp;收货人：<input name="orders.receiver" type="text" style="width:215px; height:25px; line-height:25px; padding-left:5px; color:#3d4245; border:1px solid #e4e4e4; margin-left:5px;"></div>

<div class="shr_wbk">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机：<input name="orders.mobile" type="text"  style="width:215px; height:25px; line-height:25px; padding-left:5px; color:#3d4245; border:1px solid #e4e4e4; margin-left:5px;"></div>


<div class="shr_wbk">收货地址：
<input type="text" name="orders.address" style="width:220px; height:25px; line-height:25px; border:1px solid #e4e4e4; font-size:12px; color:#3d4245; ">
</div>

<div class="shr_wbk" ><span style="margin-top: 29px;display: block;float: left;">备注信息：</span>
<textarea rows="15" cols="4" name="orders.userMessage" style="width:220px; height:80px; line-height:25px; border:1px solid #e4e4e4; font-size:12px; color:#3d4245; ">
</textarea>
</div>

</div>



</div>


<!--收获地址结束-->


<div class="lljl_bt1"><span class="lljl_mc" style="border-bottom-color:#90a80b; color:#98b205;">确认订单信息</span></div>
<div class="ding_1">
<table width="0" border="0" cellspacing="0" cellpadding="0">
  <tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="20"></td>
    <td width="326">商品信息</td>
    <td width="102">单价（元）</td>
    <td width="146">数量</td>
    <td width="196">小计（元）</td>

  </tr>
</table>
</div>



<c:forEach items="${shoppingCarList }" var="scl">
<div class="dingd_sl">
<table class="tables" width="0" border="0" cellspacing="0" cellpadding="0">
	<tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="16" height="87"></td>
    <td width="330"><span class="ddtp_3">
				<c:forEach items="${scl.commditys.imageses}" var="iimg">
					<c:if test="${iimg.imageType==0}">
    					<img src="${iimg.imageUrl}" width="59" height="58" />
					</c:if>
				</c:forEach>
    </span><span class="ddmc_xq" style=" width:255px;"><a href="#">${scl.commditys.commdityTitle }</a></span></td>
    <span style="display: none;">
    <input type="text" name="carId" value="${scl.shoppingCarId }">
    </span>
    <td width="113" style="color:#F00;" >${scl.commditys.commdityPrice }</td>
    <td width="146">${scl.number }</td>
    <td width="196" style="color:#F00;" class="xiaoji" numberC="${scl.number }" >  ￥
    <span class="xiaojiji">
<fmt:formatNumber type="number" value="${scl.commditys.commdityPrice * scl.number}" pattern="0.00" maxFractionDigits="2"/>
</span>
    </td>
  </tr>
 </table>
</div>
</c:forEach>



<div class="lljl_bt1" style="border-bottom:1px solid #e4e4e4;"><span class="lljl_mc" style="border-bottom-color:#90a80b; color:#98b205;">确认结算信息</span></div>

<div class="qrxx_2">
<div class="none" style="height:10px;"></div>
<div class="qrxx_2_1">商品数量：<span name="orders.userMessage" style="color:#F00;" id="cmNumber">0</span></div>
	<span id="setSpan" style="display: none;">
	<input type="text" id="getPrice" name="orders.countPrice" value="">
	</span>
<div class="qrxx_2_1">商品金额：<span style="color:#F00;" id="cmPrice">￥0.00</span> &nbsp;&nbsp;运费金额：<span style="color:#F00;">￥0.00</span></div>
</div>


<div class="zjs2">
<div class="none" style="height:15px;"></div>
<div class="zjs2_1">应付金额：<span style="color:#F00; font-size:17px;">￥<span id="yingfufu">0.00</span></span></div>

<div class="qjs"><input type="submit" value="提交订单"  style="width: 80px;height:30px;background-color: brown;color:white;" />提交订单</div>
</div>
</form>

</div>

<!--中部结束-->



<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>




</body>
</html>