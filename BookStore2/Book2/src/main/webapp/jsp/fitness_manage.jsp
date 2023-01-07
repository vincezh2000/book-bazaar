<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>健身教练模块</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/css/maple.css'/>"></link>
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
        <td>当前位置&gt;&gt;<a href="../index.jsp">首页</a>&gt;&gt;教练列表</td>
    </tr>
</table>
<br>
<center>
    <table border="0" width="80%" cellpadding="0" cellspacing="0">
        <tr>
            <td rowspan="1">
                <form id="searchForm" action="${pageContext.request.contextPath}/fitness/fitnessAction_add"
                      method="post">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
                        <colgroup>
                            <col width="20%" align="right">
                            <col width="*%" align="left">
                        </colgroup>
                        <tr>
                            <td bgcolor="a0c0c0" style="padding-left:10px;" colspan="2" align="left">
                                <b>录入信息：</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                教练姓名：
                            </td>
                            <td>
                                <input class="tx" type="hidden" name="id" value="${requestScope.user.id}">
                                <input id="fitnessName" class="tx" name="fitnessName" type="text" placeholder="请输入名字"/>
                                <div><font color="red">${requestScope.error}</font></div>
                                <input type="hidden" id="fitnessId" name="fitnessId" value="${requestScope.fitness.id}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                年龄：
                            </td>
                            <td>
                                <input id="年龄" class="tx" name="age" type="text" placeholder="请输入健身教练年龄"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                身高：
                            </td>
                            <td>
                                <input id="height" class="tx" name="height" type="text" placeholder="cm"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                体重：
                            </td>
                            <td>
                                <input id="weight" class="tx" name="weight" type="text" placeholder="kg"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                工作时长：
                            </td>
                            <td>
                                <input id="workTime" class="tx" name="workTime" type="text" placeholder="小时"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                本月是否拥有课时：
                            </td>
                            <td>
                                <input id="haveClass" class="tx" name="haveClass" type="text" placeholder="是或否"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                课时价格：
                            </td>
                            <td>
                                <input id="classCost" class="tx" name="classCost" type="text" placeholder="请输入课时价格"/>元
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right" style="padding-top:10px;">
                                <input class="tx" style="width:120px;margin-right:30px;" type="button"
                                       onclick="document.forms[0].submit();" value="录入信息">
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


