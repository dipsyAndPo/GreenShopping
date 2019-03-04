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

</script>


<style type="text/css">
a {
    color: #999;
    text-decoration: none;
    background-color: transparent;
    box-sizing: border-box;
}
a:-webkit-any-link {
    cursor: pointer;
}

body {
    font-size: 12px;
    font-family: Arial;
    min-width: 1024px;
        line-height: 1.42857143;
    /* width: 1920px; */
}
.aliPayPageDiv{
	text-align: center;
}
.confirmMoney{
	    display: block;
    color: #FF6600;
    font-weight: bold;
    font-size: 20px;
    margin: 10px;
}

</style>
<body>


<!--引入头部文件 -->
<%@include file="include/head.jsp"%>

<div class="aliPayPageDiv">
	<div>
		<span class="confirmMoneyText">扫一扫付款（元）</span>
		<span class="confirmMoney">
		￥<fmt:formatNumber type="number" value="${orders.countPrice }" minFractionDigits="2"/></span>
		
	</div>
	<div class="aliPayPageLogo">
		<img class="pull-left" src="images/pay.png">
		<div style="clear:both"></div>
	</div>
	


<br><br>
	<!-- <form action="paymentOrder?orders.orderId=${orders.orderId }" method="post">
		<input type="text" name="orders.orderId" value="${orders.orderId }" style="display: none">	
		<input type="submit" value="确认支付"  style="width: 80px;height:30px;background-color: #00AAEE;color:white;" />
	</form>
	 -->
<input type="text" name="orders.orderId" value="${orders.orderId }" style="display: none">	
<div align="center">
<a href="paymentOrder?orders.orderId=${orders.orderId }"  style="width: 80px;height:30px;background-color: #00AAEE;color:white;display: block;padding-top: 7px;font-size: 16px;">支付</a>
</div>
</div>
<br>


<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>
	


</body>

</html>