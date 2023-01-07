<%--
  Created by IntelliJ IDEA.
  User: karyanthony
  Date: 2021/6/14
  Time: 3:58 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <span>欢迎<span class="um_span">${sessionScope.user.username}</span>光临BTBU二手书交易市场</span>
    <a href="pages/order/order.jsp">我的订单</a>
    <a href="UserServlet?action=logout">注销</a>&nbsp;&nbsp;
    <a href="index.jsp">返回</a>
</div>