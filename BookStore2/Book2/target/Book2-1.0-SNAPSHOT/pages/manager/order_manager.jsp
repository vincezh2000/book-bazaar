<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单管理</title>
	<%@include file="/pages/common/head.jsp"%>
</head>
<body>
	
<%@include file="/pages/common/manager_menu.jsp"%>
	
	<div id="main">
		<table>
			<tr>
				<td>日期</td>
				<td>金额</td>
				<td>详情</td>
				<td>发货</td>
				
			</tr>		
			<tr>
				<td>2015.04.23</td>
				<td>90.00</td>
				<td><a href="#">查看详情</a></td>
				<td><a href="#">点击发货</a></td>
			</tr>	
			
			<tr>
				<td>2015.04.20</td>
				<td>20.00</td>
				<td><a href="#">查看详情</a></td>
				<td>已发货</td>
			</tr>	
			
			<tr>
				<td>2014.01.23</td>
				<td>190.00</td>
				<td><a href="#">查看详情</a></td>
				<td>等待收货</td>
			</tr>		
		</table>
	</div>

	<%@include file="/pages/common/foot.jsp"%>
</body>
</html>