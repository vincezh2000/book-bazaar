<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结算页面</title>
	<%@include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
</style>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="/static/img/logo.gif" >
			<span class="wel_word">结算</span>
			<%@ include file="/pages/common/login_success_menu.jsp"%>
	</div>

	<div id="main">

		<h1>你的订单已结算，订单号为: ${sessionScope.orderId}</h1>


	</div>
	<%@include file="/pages/common/foot.jsp"%>
</body>
</html>