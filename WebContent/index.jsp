<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
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

<body>

<!--引入头部文件 -->
<%@include file="include/head.jsp"%>
<!-- 引入导航文件 -->
<%@include file="include/navigation.jsp"%>
<!-- 引入轮播图 -->
<%@include file="include/banner.jsp"%>



<!--中部开始-->

<div class="con_sy">

<!--中部1开始-->

<div class="con_sy1">

<!--选项卡切换开始-->

<div class="xxk_sy">

<!--代码开始-->

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
</head>


<div id="Tab1">
<div class="Menubox">
<ul>
 <li id="one1" onmouseover="setTab('one',1,4)" class="hover"> 热卖产品</li>

 <li id="one2" onmouseover="setTab('one',2,4)" >促销专区</li>

 <li id="one3" onmouseover="setTab('one',3,4)">新品上架</li>
 
 <li id="one4" onmouseover="setTab('one',4,4)"> 精品团购</li>

</ul>
</div>


<div class="Contentbox">
<div id="con_one_1" class="hover">
<div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/01.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">美国进口车厘子2斤</a></div>
<div class="renai1_3">本亲价：¥158.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/02.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">秘鲁牛油果6只</a></div>
<div class="renai1_3">本亲价：¥68.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/03.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">猫山王冷东榴莲肉</a></div>
<div class="renai1_3">本亲价：¥198.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/04.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">奇异果22个</a></div>
<div class="renai1_3">本亲价：¥208.0</div>
</div>
 <div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/05.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">越南红心火龙果</a></div>
<div class="renai1_3">本亲价：¥39.8</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="cpxq.jsp"><img src="images/06.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">秘鲁进口蓝莓6盒</a></div>
<div class="renai1_3">本亲价：¥98.0</div>
</div>
</div>
 <div id="con_one_2" style="display:none">
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/010.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">蔬菜沙拉食生吃</a></div>
<div class="renai1_3">本亲价：¥29.8</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/020.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">精选紫包菜600g</a></div>
<div class="renai1_3">本亲价：¥5.8</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/030.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">蚕豆450g</a></div>
<div class="renai1_3">本亲价：¥9.9</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/040.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">精选油麦菜250g</a></div>
<div class="renai1_3">本亲价：¥5.9</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/050.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">芹菜嫩芯</a></div>
<div class="renai1_3">本亲价：¥32.9</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/060.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">潘婷洗发露</a></div>
<div class="renai1_3">本亲价：¥138.0</div>
</div>


 

</div>
 
 
 
 
 
 
<div id="con_one_3" style="display:none">
 
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/001.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">足疗机家用穴位按揉</a></div>
<div class="renai1_3">本亲价：¥279.0</div>
</div>

 <div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/002.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">飞科电动剃须刀</a></div>
<div class="renai1_3">本亲价：¥167.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/003.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">得力3871装订机</a></div>
<div class="renai1_3">本亲价：¥138.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/004.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">微融验钞机银行便携式</a></div>
<div class="renai1_3">本亲价：¥289.0</div>
</div>
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/005.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">海尔吸尘器家用小功率</a></div>
<div class="renai1_3">本亲价：¥379.0</div>
</div>
 
<div class="remai1">
<div class="remai1_1"><a href="#"><img src="images/006.png" width="164" height="181" /></a></div>
<div class="renai1_2"><a href="#">Robam控油抽烟机</a></div>
<div class="renai1_3">本亲价：¥6690.0</div>
</div>
 </div>
 
 
 
 
 <div id="con_one_4" style="display:none">
 
<div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/1.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">GSUNG白18k</a></div>
<div class="renai1_3">本亲价：¥37050.0</div>
</div>
<div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/2.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">GSUNG白AU750</a></div>
<div class="renai1_3">本亲价：¥37016.0</div>
</div>
<div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/3.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">戴欧尼18k</a></div>
<div class="renai1_3">本亲价：¥6198.0</div>
</div>

 <div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/4.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">GSUNG白金钻石</a></div>
<div class="renai1_3">本亲价：¥36996.0</div>
</div>

 <div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/5.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">先恩尼白18k</a></div>
<div class="renai1_3">本亲价：¥2999.0</div>
</div>

  <div class="remai1">
<div class="remai1_1">

<a href="#">

<img src="images/6.png" width="164" height="181" />
 
</a>
</div>
<div class="renai1_2"><a href="#">世华私人定制</a></div>
<div class="renai1_3">本亲价：¥43988.0</div>
</div>


</div> 
 
 
 
 
</div>
</div>




<!--代码结束-->





</div>


<!--选项卡切花结束-->


</div>


<!--中部1结束-->



<!--中部大米开始-->
<div class="con_dm">
<c:forEach items="${commditypeList}" var="type">
<div class="con_dmbt"><span class="dt2_1"><img src="images/113.jpg" width="45" height="29" /></span>



<span class="dt2_2">${type.commdiTypeName}</span>
 
  


<span class="dt2_3"> <a href="findCommditysByTypeID?commdiType.commdiTypeId=${type.commdiTypeId}">更多商品>></a></span>
</div>


<div class="con2_dtk">

<!--左侧1开始-->

<div class="con2_zc">

    
    
    
    <div id="wrap2">

		    	
            <div class="movielist" style="display:block">
            <img src="images/115.jpg" width="150" height="160" /> 
            <img src="images/116.jpg" width="70" height="160" />  
            </div>
            <div class="movielist" style="display:block">
             <img src="images/117.jpg" width="224" height="160" /> 
            </div>
		
        
        
	</div>


</div>


<!--左侧1结束-->



<!--右侧开始-->

<div class="con2_yc">


<script type="text/javascript" src="js/jq.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $(".hdpic dd a").hover(function() {
        $(this).find(".picshine").stop();
        $(this).find(".picshine").css("background-position", "-235px 0");
        $(this).find(".picshine").animate({
            backgroundPosition: '235px 0'
        },
        500);
        $(this).find(".pictitle").stop().animate({
            left: '0px'
        },
        {
            queue: false,
            duration: 450
        });
    },
    function() {
        $(this).find(".pictitle").stop().animate({
            left: '-1135px'
        },
        {
            queue: false,
            duration: 200
        });
    });
});
</script>


<div class="hdpic">
  <dl> 
  
   <c:forEach items="${type.commdityses}" var="comm" begin="1" end="5">
    <dd>
    <c:forEach items="${comm.imageses}" var="imgs">
    <c:if test="${imgs.imageType==0}">
    <a href="SelectById?commditys.commdityId=${comm.commdityId}" target="_blank"> <img src="${imgs.imageUrl}"width="184" height="240"/>
      <div class="pictitle">
<div class="zz">
<br/><br/><br/>
      	<p style="color:green;">${comm.commdityTitle}</p>
       <span style="color:#F00; font-size:18px;">本亲价：${comm.commdityPrice}</span>
</div>  
   </div>
      <div class="picshine"></div>
      </a> 
       </c:if>
      </c:forEach>
      </dd>
      </c:forEach>
      
       
    
    
     
  </dl>
</div>

<!--右侧结束-->


</div>

</div>
</c:forEach>
<!--中部大米结束-->

<div class="none" style="height:20px;"></div>


<div class="none" style="height:20px;"></div>

<!--公司简介、动态开始-->

<div class="con_d">

<!--简介开始-->

<div class="con_jj">
<div class="con_jjbt"><span style="float:left;"><img src="images/gsjj1.jpg" width="107" height="35" /></span><span style="float:right; line-height:35px; color:#669933;"><a href="#"> >> 查看详情</a></span></div>
<div class="con_jjtp"><img src="images/gsjj2.jpg" width="349" height="111" /></div>
<div class="con_jjnr">郑州卓普科技有限公司是一家专业互联网信息技术服务公司，注册资本1000万元，现有专业技术人员20余人。主要从事网站策划、网页设计、网站建设（包括微网站制作、企业展示型网站建设、电子商务型网站建设、行业门户型网站建设、行业门户型网站建设等）、互联网营销等一系列互联网服务，服务站建设等）、互联网营销等一系列互联网服务，服务客户达200多家，涉及教育、物流、医院、餐饮等多第一品牌！</div>

</div>

<!--简介结束-->

<div class="ggbj2"><img src="images/gsjj3.jpg" width="421" height="292" /></div>


<!--公司动态开始-->


<div class="con_jj">
<div class="con_jjbt"><img src="images/gsdt.jpg" width="120" height="35" /></div>
<div class="con_jjtp"><img src="images/dtt.jpg" width="348" height="111" /></div>
<div class="con_jjnr">

<ul>
<li><a href="#" title="郑州卓普科技有限公司是一家专业互联网信息技术服务公司">郑州卓普科技有限公司是一家专业互联网信息技术服务公司</a></li>
 </ul>


</div>

</div>

<!--公司动态结束-->



</div>


<!--公司简介、动态开始结束-->
</div>
<!--中部结束-->


<!--底部开始-->
<%@include file="include/end.jsp"%>
<!--底部结束-->


</body>
</html>