<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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


$(function () {
	
	$("#quanxuan").click(function () {
		if($("#quanxuan").is(":checked")){
			$(".checks").prop("checked",true);
		}else{
			$(".checks").prop("checked",false);
		}
		jia();
	});
	
	$(".checks").click(function () {
		jia();
	});
	
	
	jia();

	function xiaoji(){
		$(".xiaoji").each(function () {
			var price= $(this).attr("price");
			
    		var num= $(this).prev().children().eq(1).val();
    		var xxxx=(price*num).toFixed(2);
    		$(this).html(xxxx);
		});
	}
	
	function jia() {
    	xiaoji();
        var result=0;  
        var flag=0;
        var flag1=0;
        var num=0;
        
        $(".checks").each(function(){ 
        	flag=flag+1;
        	if($(this).is(":checked")){
        		flag1=flag1+1;
        		st1= $(this).attr("money");
        		st1=$(this).parent().siblings().eq(3).html();
				result+=Number(st1);//一直加
        	}
        });  
        
        
              //alert(result)
              $("#flag").html(flag);
              $("#flag1").html(flag1);
        	$("#heji").html(result.toFixed(2));
        	xiaoji();
	}
	
	
	$(".jiajian").click(function () {
		var carId=$(this).attr("carId");
		var flag=$(this).attr("flag");
		var num;
		var page="editShoppingCarNumber";
	    if(flag==0){
	    	num=$(this).next().val();
	    	$(this).next().val(++num);
	    }else{
	    	num=$(this).prev().val();
	    	if(num==1){
	    		alert("数量是0了，要删除吗？");
	    		return false;
	    	}
	    	$(this).prev().val(--num);
	    }
	    $.post(
	            page,
	            {"shoppingCar.shoppingCarId":carId,"jiajian":flag},
	            function(result){
	            	$("#flagggg").html(num);
	            });
	    
	    jia();
	    
	});
	
	
	$("#qujiesuan").click(function () {
		var href=$("#qujiesuan").attr("href");
		var flag=0;
		 $(".checks").each(function(){
			 if($(this).is(":checked")){
				 var id=$(this).attr("iid");
				 if(flag==0){
					 var href=$("#qujiesuan").attr("href")+"?carId="+id;
				 }else{
					 var href=$("#qujiesuan").attr("href")+"&carId="+id;
				 }
				 $("#qujiesuan").attr("href",href);
				 flag=1;
			 }
		 })
		 if(flag==0){
			 alert("您还没有选择商品");
			 return false;
		 }
		 
	})
	

});
</script>
<body>


<!--引入头部文件 -->
<%@include file="include/head.jsp"%>



<!--中部开始-->

<div class="ding_tjb">
<div class="ding_1">
<table width="0" border="0" cellspacing="0" cellpadding="0">
  <tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="69"><input name="" id="quanxuan" type="checkbox" value="" / style=" margin-left:10px; margin-right:10px;">全选</td>
    <td width="279">商品信息</td>
    <td width="114">单价（元）</td>
    <td width="147">数量</td>
    <td width="118">小计（元）</td>
    <td width="72">操作</td>
  </tr>
</table>
</div>

<form action="aaaaaa" method="get">
<c:forEach  items="${shoppingCarList}" var="car">
	<div class="dingd_sl">
<table width="0" border="0" cellspacing="0" cellpadding="0">
  <tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="43" height="87">
    <input class="checks"  iid="${car.shoppingCarId}"  num="${car.number}"  money="${car.commditys.commdityPrice}" type="checkbox" value="" / style=" margin-left:10px; margin-right:10px;"></td>
    <td width="305"><span class="ddtp_3">
				<c:forEach items="${car.commditys.imageses}" var="iimg">
					<c:if test="${iimg.imageType==0}">
    					<img src="${iimg.imageUrl}" width="59" height="58" />
					</c:if>
				</c:forEach>
    
    </span><span class="ddmc_xq"><a href="#">${car.commditys.commdityTitle }</a></span></td>

    <td width="114" style="color:#F00;">￥${car.commditys.commdityPrice }</td>
    <td width="147">
<input name="" value="+" class="jiajian" carId="${car.shoppingCarId}" flag="0" type="button" / style="background: url(images/jia.jpg); width:19px; height:19px;">
		<input type="text" value="${car.number}" / style="width:40px; text-align:center; height:18px; border:1px solid #dddddd;" >  
<input name="" value="-" class="jiajian" carId="${car.shoppingCarId}" flag="1"  type="button" / style="background: url(images/jia.jpg); width:19px; height:19px;">
</td>

    <td width="118" style="color:#F00;" class="xiaoji" price="${car.commditys.commdityPrice}" number="${car.number}">￥</td>
    <td width="72"><a href="deleteShoppingCar?shoppingCar.shoppingCarId=${car.shoppingCarId}">删除</a></td>
  </tr>
</table>
</div>
	
</c:forEach>



<div class="jxgw_zj">

<div class="jxgw_wq"><a href="#">继续购物</a></div>
<div class="zjs2">
<div class="none" style="height:15px;"></div>
<div class="zjs2_1">共<span style="color:#F00; font-size:14px;" id="flag">2</span>件商品，选择了<span id="flag1" style="color:#F00; font-size:14px;">2</span>件</div>
<div class="zjs2_1">所选商品总价（不含运费）：<span style="color:#F00; font-size:15px;" id="heji">0.00</span></div>

<div class="qjs">
<a href="findByShoppingCarId" id="qujiesuan">去结算</a></div>
</div>
</div>






</div>

<!--中部结束-->
</form>


<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>



</body>
</html>