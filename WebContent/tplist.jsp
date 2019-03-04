<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<script src="script/global.js" type="text/javascript"></script>
<script src="script/head.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="style/base.css" />
<link rel="stylesheet" href="style/head.css" />


<style type="text/css">
.aaa0{
margin-left:0px;
}

</style>


<body>
<!--引入头部文件 -->
<%@include file="include/head.jsp"%>
<!-- 引入导航文件 -->
<%@include file="include/navigation.jsp"%>
<!-- 引入轮播图 -->
<%@include file="include/banner.jsp"%>






<!--中部开始-->


<div class="con_ny">

<div class="con_dqwz">您的当前位置：<a href="execute1">首页</a> >> ${commditysList[0].commditype.commdiTypeName}</div>

<c:forEach items="${commditysList}" var="cc" varStatus="abc">
<div class="tplist1 aaa${abc.index%3}" style="">
<div class="tplist1_1">
<a href="SelectById?commditys.commdityId=${cc.commdityId}">
<c:forEach items="${cc.imageses}" var="iimg">
	<c:if test="${iimg.imageType==0}">
	<img src="${iimg.imageUrl}" width="296" height="185" />
	</c:if>
</c:forEach> 
</a></div>
<div class="tplist_yy"></div>
<div class="tplist_mc"><a href="cpxq.jsp">${cc.commdityTitle }</a></div>
<div class="tplist_mcjg"><span class="yuanjia">原价￥
<fmt:formatNumber type="number" value="${cc.commdityPrice*1.5}" pattern="0.00" maxFractionDigits="2"/></span> 
<span class="tejia">特卖价￥ <fmt:formatNumber type="number" value="${cc.commdityPrice}" pattern="0.00" maxFractionDigits="2"/> </span></div>
</div>
</c:forEach>


</div>


<!--中部结束-->


<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>



</body>
<script type="text/javascript">

		$(".aaa0").each(function () {
			$(this).attr("style","margin-left:0px;");
		});
	
</script>
</html>