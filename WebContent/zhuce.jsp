<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>本亲生活网</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</style>
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
<script type="text/javascript">
	$(function() {
		$("#submit").click(function() {
			if($("#accounts").val()==""){
				
				alert("邮箱不能为空");
				return false;
			}else if ($("#pwds").val()=="" || $("#apwd").val()=="") {
				alert("密码不能为空");
				return false;
			}else if ($("#pwds").val()!=$("#apwd").val()) {
				alert("两次密码不一致");
				return false;
			}else{
				return true;
			}
		});
		
		$("#accounts").blur(function(){
			var account=$("#accounts").val();
			$.ajax({
				url:"getUserName",
				type:"post",
				data:"users.userAccount="+account,
				dataType:"json",
				success:function(state){
					if(state.state=="exist"){
						$("#accountExits").show();
						$("#submit").attr("disabled","true");
					}else{
						$("#accountExits").hide();
						$("#submit").removeAttr("disabled");
					}
				}
				});	
				});
		
	});
</script>
<body>


<!--引入头部文件 -->
<%@include file="include/head.jsp"%>
<!-- 引入导航文件 -->
<%@include file="include/navigation.jsp"%>


<!--会员注册开始-->
<form action="addUser" method="post">
<div class="huiyuan_zc">
<div class="zhuce_1">邮箱注册</div>
<div class="zhuce_2">

<div class="zhuce_left">
<p id="accountExits" style="color:red;position: relative;left: 90px;top:10px;display: none;">  用户名已存在</p>
<div class="yhm_zc">常用邮箱：<input type="email" name="users.userAccount" onkeyup="value=value.replace(/[\u4e00-\u9fa5]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\u4e00-\u9fa5]/g,''))" id="accounts" class="zc_wbk" /></div>
<div class="yhm_zc">输入密码：<input type="password" name="users.userPassword" id="pwds"  class="zc_wbk" /></div>
<div class="yhm_zc">再次输入：<input type="password" id="apwd"  class="zc_wbk" /></div>

<div class="zhuce_tjxx"><input id="submit" type="submit"  value="" onmousedown="this.style.left='1px';this.style.top='1px';" onmouseup="this.style.left='0px';this.style.top='0px';"   / style="width:206px; height:35px ; border:none; background: url(images/zhuce_1.jpg); position:relative;"></div>
</div>
</form>

<div class="zhuce_right">

<div class="zhuce_right1"><a href="denglu.jsp"><img src="images/dll.jpg" width="149" height="78" / style="margin-left:50px; margin-top:20px;"></a></div>

<div class="zhuce_right2"><img src="images/bqsy.jpg" width="228" height="209" /></div>


</div>







</div>


</div>

<!--会员注册结束-->


<!--中部开始-->


<div class="con_ny">




</div>


<!--中部结束-->

<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>


</body>
</html>