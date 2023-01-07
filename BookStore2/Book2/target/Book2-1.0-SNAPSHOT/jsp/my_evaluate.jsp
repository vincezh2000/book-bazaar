<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>我的点评</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='../css/maple.css'/>"></link>
    <style type="text/css">
        .tx td {
            padding: 3px;
        }

        .store {
            width: 100%;
            border: 1px solid gray;
            border-collapse: collapse;
        }

        .store td {
            border: 1px solid gray;
            padding: 3px;
        }

        .store a {
            text-decoration: underline;
            color: blue;
        }
    </style>
</head>
<body>
<table border="0" class="tx" width="100%">
    <tr>
        <td>当前位置&gt;&gt;<a href="../index.jsp">首页</a>&gt;&gt;我的点评</td>
    </tr>
</table>
<br>
<center>
    <table border="0" width="80%" cellpadding="0" cellspacing="0">
        <tr>
            <td rowspan="1">
                <form id="searchForm" action="${pageContext.request.contextPath}/order/orderAction_myEvaluate"
                      method="post">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
                        <colgroup>
                            <col width="20%" align="right">
                            <col width="*%" align="left">
                        </colgroup>
                        <tr>
                            <td bgcolor="a0c0c0" style="padding-left:10px;" colspan="2" align="left">
                                <b>查询条件：</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                教练姓名：
                            </td>
                            <td>
                                <input class="tx" type="hidden" name="id">
                                <input id="search" class="tx" name="fitnessName" type="text" placeholder="请输入健身教练名字"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right" style="padding-top:10px;">
                                <input class="tx" style="width:120px;margin-right:30px;" type="button"
                                       onclick="document.forms[0].submit();" value="查询">
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
        <tr valign="top">
            <td rowspan="2">
                <form action="" method="post" name="select">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
                        <colgroup>
                            <col width="20%" align="right">
                            <col width="*%" align="left">
                        </colgroup>
                        <tr>
                            <td bgcolor="a0c0c0" style="padding-left:10px;" colspan="1" align="left">
                                <b>我的点评：</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="store">
                                    <tr style="background:#D2E9FF;text-align: center;">
                                        <td>订单号</td>
                                        <td>教练姓名</td>
                                        <td>评价内容</td>
                                    </tr>
                                    <s:iterator value="orderList" var="order">
                                        <tr>
                                            <td>${order.orderNumber }</td>
                                            <td>${order.fitnessName }</td>
                                            <td>${order.evaluate }</td>
                                        </tr>
                                    </s:iterator>
                                </table>
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
<script>
    document.body.style.backgroundImage = "url(http://localhost:8080/images/background.jpg)"; //改变背景图
</script>


