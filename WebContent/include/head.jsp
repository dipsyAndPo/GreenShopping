<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
	$(function() {
		if($("#account").val()){
			$("#hide").show();
			$("#show").hide();
			$(".yh_zx").show();
		}else{
			$("#hide").hide();
			$("#show").show();
			$(".yh_zx").hide();
		}
	});
</script>
<!--抬头开始-->
<div class="top">
<div class="top1">
<div class="top1_main">
	<span id="hide">您好&nbsp;&nbsp;${users.userAccount }&nbsp;&nbsp;&nbsp;<a href="userExit">退出</a></span>
<span id="show" class="dl">您好，欢迎光临本亲生活网！<a href="denglu.jsp"> [请登录]</a>  <a href="zhuce.jsp">[免费注册]</a></span>
<span class="yh_zx" style="display: none;"> <a href="findAllOrders">我的订单</a>  |  <a href="findAllShoppingCar">我的购物车</a>  |  <a href="about.jsp">联系方式</a></span></div>
</div>

<div style="display: none;">
	<input type="text" id="account" value="${sessionScope.users.userAccount }" />
	<input type="text" id="pwd" value="${users.userPassword }" />
</div>


<div class="top_logo">
<div class="logo"><a href="execute1"><img src="images/logo.jpg" width="338" height="113" / alt="本亲生活的logo标志"></a></div>
<div class="top_you">
<form action="blurSelect">
<div class="ss_1"><input name="blurString" type="text" id="key" value="请输入您要搜索的产品" size="30"      
          onclick="if(value==defaultValue){value='';this.style.color='#898b8c'}"    
          onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999; line-height:26px;" / class="ssk1">
          <input name="" value="搜 索" type="submit" / class="button1"></div>
          </form>

</div>

</div>

</div>


<!--抬头结束-->


