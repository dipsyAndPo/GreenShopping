<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<script type="text/javascript">
</script>
<body>
<!--引入头部文件 -->
<%@include file="include/head.jsp"%>
<!-- 引入导航文件 -->
<%@include file="include/navigation.jsp"%>




<div class="con_dlbj">

<div class="con_dlbj_main">

<div class="denglu_bj2">
<div class="denglu_nr2">
<div class="denglu_bt4">用户登录</div>
<form action="login" method="post">
<div class="dl_yhm">用户名：<input name="users.userAccount" id="userAccount" type="text" value="用户名/您的邮箱" size="30"    
          onclick="if(value==defaultValue){value='';this.style.color='#3d4245'}"    
          onBlur="if(!value){value=defaultValue;this.style.color='#ccc'}" style="width:170px; height:24px; line-height:24px; padding-left:5px;color:#ccc; border:1px solid #e4e4e4;" />
</div>

<div style="color:#3d4245; " class="dl_yhm">&nbsp;&nbsp;&nbsp;密码：<input name="users.userPassword" placeholder="您的密码" type="password" style="width:170px; height:24px; line-height:24px; padding-left:5px;color:#3d4245; border:1px solid #e4e4e4;"></div>

<div class="dl_dl"><input type="submit" value="登 录" onmousedown="this.style.left='1px';this.style.top='1px';" onmouseup="this.style.left='0px';this.style.top='0px';" style="width:135px; height:39px; border:none; background:url(images/dl_dl.jpg); color:#FFF; font-size:14px; font-family:'微软雅黑'; position:relative;" /><a href="#">忘记密码？</a></div>
<div class="denglu_sm">
<span style="color:#529014; font-weight:600;">如果您还不是本亲生活的会员?</span><br />
<span>30秒轻松注册，就可方便购物，赶紧点击下方注册</span>
</div>
</form>

<div class="denglu_hmzc"><a href="zhuce.jsp">立即注册</a></div>


</div>
</div>


</div>



</div>


<!-- 引入底部文件 -->
<%@include file="include/end.jsp"%>

</body>
</html>