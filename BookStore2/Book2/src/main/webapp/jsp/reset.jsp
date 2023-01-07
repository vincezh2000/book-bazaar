<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>登录界面</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/style.css" media="screen" type="text/css" />
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../index.jsp">首页</a>
	<section class="login-form-wrap">
		<h1>重置密码</h1>
		<form class="login-form" action="${pageContext.request.contextPath}/user/userAction_reset" method="post">
			<label>
				<input type="text" name="username" required placeholder="用户名">
			</label>
			<label>
				<input type="password" name="password" required placeholder="密码">
			</label>
			<label>
				<input type="password" name="resetPassword" required placeholder="重置的密码">
			</label>
			<input type="submit" value="确定重置">
			<div><font color="red">${requestScope.error}</font></div>
		</form>
	</section>
	<div style="text-align:center;clear:both">
</div>
</body>
</html>