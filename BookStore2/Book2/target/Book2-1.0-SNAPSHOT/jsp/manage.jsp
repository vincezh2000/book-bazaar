<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户管理</title>
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
        <td>当前位置&gt;&gt;<a href="../index.jsp">首页</a>&gt;&gt;用户管理</td>
    </tr>
</table>
<br>
<center>
    <table border="0" width="80%" cellpadding="0" cellspacing="0">
        <tr>
            <td rowspan="1">
                <form id="searchForm" action="${pageContext.request.contextPath}/user/userAction_search"
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
                                用户姓名：
                            </td>
                            <td>
                                <input class="tx" type="hidden" name="id">
                                <input id="search" class="tx" name="username" type="text" placeholder="请输入用户或者教练名字"/>
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
                                <b>用户列表：</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="store">
                                    <tr style="background:#D2E9FF;text-align: center;">
                                        <td>用户昵称</td>
                                        <td>用户密码</td>
                                        <td>手机</td>
                                        <td>地址</td>
                                        <td>性别</td>
                                        <td>姓名</td>
                                        <td>会员积分</td>
                                        <td>操作</td>
                                    </tr>
                                    <s:iterator value="userList" var="user">
                                        <tr>
                                            <td>${user.username }</td>
                                            <td>${user.password }</td>
                                            <td>${user.phone}</td>
                                            <td>${user.address}</td>
                                            <td>${user.sex == false ? '男' : '女'}</td>
                                            <td>${user.name}</td>
                                            <td>${user.memberIntegral }</td>
                                            <td>
                                                <a href="http://localhost:8080/user/userAction_delete?id=${user.id}">删除</a>
                                            </td>
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


