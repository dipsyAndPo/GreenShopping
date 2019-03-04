<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<link href="css/css.css" type="text/css" rel="stylesheet">	
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="style/base.css" />
<link rel="stylesheet" href="style/head.css" />

<body>

<!--引入头部文件 -->
<%@include file="include/head.jsp"%>
<!-- 引入导航文件 -->
<%@include file="include/navigation.jsp"%>
<!-- 引入轮播图 -->
<%@include file="include/banner.jsp"%>





<!--中部开始-->


<div class="con_ny">

<div class="con_dqwz">您的当前位置：<a href="execute1">首页</a> >> ${commditys.commditype.commdiTypeName }</div>

<!--产品购买详情介绍开始-->

<div class="cpxq_ny1">


<!--相册放大镜开始-->
<div class="fdj">

<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/base.js" type=text/javascript></SCRIPT>
<div id=preview>
	<div class=jqzoom id=spec-n1 onClick="window.open('#')">
				<c:forEach items="${commditys.imageses}" var="iimg">
					<c:if test="${iimg.imageType==0}">
						<IMG height=306	src="${iimg.imageUrl}" jqimg="${iimg.imageUrl}" width=350>
					</c:if>
				</c:forEach>
	
	</div>
	<div id=spec-n5>
		<div class=control id=spec-left>
			<img src="images/left.jpg" />
		</div>
		<div id=spec-list>
			<ul class=list-h>
				<c:forEach items="${commditys.imageses}" var="iimg">
					<c:if test="${iimg.imageType==1}">
						<li><img src="${iimg.imageUrl}"> </li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div class=control id=spec-right>
			<img src="images/right.jpg" />
		</div>
		
    </div>
</div>
<SCRIPT type=text/javascript>
	$(function(){			
	   $(".jqzoom").jqueryzoom({
			xzoom:400,
			yzoom:400,
			offset:10,
			position:"right",
			preload:1,
			lens:1
		});
		$("#spec-list").jdMarquee({
			deriction:"left",
			width:350,
			height:56,
			step:2,
			speed:4,
			delay:10,
			control:true,
			_front:"#spec-right",
			_back:"#spec-left"
		});
		$("#spec-list img").bind("mouseover",function(){
			var src=$(this).attr("src");
			$("#spec-n1 img").eq(0).attr({
				src:src.replace("\/n5\/","\/n1\/"),
				jqimg:src.replace("\/n5\/","\/n0\/")
			});
			$(this).css({
				"border":"2px solid #ff6600",
				"padding":"1px"
			});
		}).bind("mouseout",function(){
			$(this).css({
				"border":"1px solid #ccc",
				"padding":"2px"
			});
		});				
	})
	</SCRIPT>

<SCRIPT src="js/lib.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/163css.js" type=text/javascript></SCRIPT>

</div>

<!--相册放大镜结束-->

<div class="xjmc_jjsm">
<div class="cpxq_mc_1">${commditys.commdityTitle}</div>
<div class="none" style="height:15px;"></div>
<div class="zzl">总 重 量：500g</div>
<div class="zzl">售     价：<span style="color:#C00; font-weight:600; font-size:18px;">${commditys.commdityPrice}</span> </div>
<div class="zzl">商品介绍：${commditys.commdityContext}</div>

<div class="dgsc">
<span class="gmsl">购买数量：<input name="" value="-" type="button" / style="background: url(images/jia.jpg); width:19px; height:19px;">
<input type="text" value="1" / style="width:40px; text-align:center; height:18px; border:1px solid #dddddd;" >  <input name="" value="+" type="button" / style="background: url(images/jia.jpg); width:19px; height:19px;">
</span>


<span class="jrsc_2" style="padding-left:20px;"><a href="nowPay?commditys.commdityId=${commditys.commdityId}"><img src="images/dinggou.jpg" width="165" height="34" /></a></span>
<span class="jrsc_2"><a href="AddShoppingCar?commditys.commdityId=${commditys.commdityId}"><img src="images/gouwuche.jpg" width="165" height="34" /></a></span>
</div>

<div class="fenx"></div>


</div>


</div>

<!--产品购买详情介绍结束-->




<!--中部2开始-->

<div class="cpxq_ny_con">




<!--中部2右侧开始-->

<div class="cpxq_zbyc" align="center" style="width: 998px">

<!--产品详情开始-->

<div class="cpxq_yi">

<style type="text/css">
<!--
ul{ list-style:none;}
/*选项卡1*/
#Tab1{width:960px; height:auto; overflow: hidden; clear:both;}
/*选项卡2*/
#Tab2{width:576px;margin:0px;padding:0px;margin:0 auto;}
/*菜单class*/
.Menubox {width:100%;background:#fff;height:33px;line-height:33px; border-bottom:2px solid #acc90b;}
.Menubox ul{margin:0px;padding:0px;}
.Menubox li{float:left;display:block;cursor:pointer;width:150px;text-align:center;color:#413e3e;font-weight:bold; background:#f3f3f3;}
.Menubox li.hover{padding:0px;background:#acc90b;width:150px;color:#fff;font-weight:bold;height:33px;line-height:33px; font-family:"微软雅黑";}
.Contentbox{clear:both;margin-top:0px; border-top:none; height:auto; padding-top:8px;}
.STYLE2 {font-size: 18px}
-->
</style>

<script>
<!--
/*第一种形式 第二种形式 更换显示样式*/
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
 var menu=document.getElementById(name+i);
 var con=document.getElementById("con_"+name+"_"+i);
 menu.className=i==cursel?"hover":"";
 con.style.display=i==cursel?"block":"none";
}
}
//-->
</script>



<div id="Tab1" style="width: 710px">
<div class="Menubox">
<ul>
 <li id="one1" onmousedown="setTab('one',1,4)" class="hover">产品介绍 </li>

 <li id="one2" onmousedown="setTab('one',2,4)" >商品评论</li>

 <li id="one3" onmousedown="setTab('one',3,4)">售后服务</li>

</ul>
</div>


<div class="Contentbox">

 
 


<div id="con_one_1" class="hover" style="/* height: 0px; */">
<div class="spjs_2"><span class="spxq_js1">商品介绍 </span><span class="xqyw">Product Ovierview</span></div>
<div class="spjs_right">

<c:forEach items="${commditys.imageses}" var="iimg">
					<c:if test="${iimg.imageType==2}">
						<img src="${iimg.imageUrl}" width="322" style=" width: 778px;">
					</c:if>
				</c:forEach>
</div>
<div class="none" style=" height:10px; clear:both;"></div>
</div>







 <div id="con_one_2" style="display:none">
 

<div class="sccj_2xq">
<div class="sccj_2bt">评论内容</div><br>
<div class="sccj_nr">
	<c:forEach items="${commditys.accesses}" var="pj">
		用户&nbsp;${pj.users.userAccount}&nbsp;在&nbsp;&nbsp;<fmt:formatDate  value="${pj.accessTime}"  pattern="yy年MM月dd号HH点mm分"/>&nbsp;&nbsp;留下了评价<br>
		内容为：&nbsp;${pj.accessContext}<br><br><hr><br>
	</c:forEach>

</div>

</div>

 
 </div>
 
 
 
 
 
 
 <div id="con_one_3" style="display:none">
 

<div class="sccj_nr">



服务：<br />

1. 凡在本商城购买商品均提供“100%正品，假一罚十“保障；<br />

2. 本商城在售商品均支持7天无理由退换货（特殊商品除外，如：蔬果类、超过使用期限商品）；<br />

3. 本商城可提供正规机打发票，如有需要，请在订单备注。
<br />

退换货声明：<br />

1. 退换货条件：在退换货时间范围内，同时商品及外包装完整，不影响二次销售情况下，退回全部商品及赠品。<br />

2. 退换费用说明：如果是由商品本身质量问题或者是商家失误造成，退换货费用均由本商城承担；<br />

3. 如果是消费者个人原因导致的退换货，费用均由消费者个人承担。<br />




</div>


 </div>
 

 
 
 
 
</div>
</div>



</div>

<!--产品详情结束-->



</div>


<!--中部2右侧结束-->






</div>

<!--中部2结束-->





</div>


<!--中部结束-->


<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>

</body>
</html>
         