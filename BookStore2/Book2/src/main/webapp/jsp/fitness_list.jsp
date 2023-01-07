<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>教练列表</title>
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
        <td>当前位置&gt;&gt;<a href="../index.jsp">首页</a>&gt;&gt;教练列表</td>
    </tr>
</table>
<br>
<center>
    <table border="0" width="80%" cellpadding="0" cellspacing="0">
        <tr>
            <td rowspan="1">
                <form id="searchForm" action="${pageContext.request.contextPath}/fitness/fitnessAction_search"
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
                                <b>教练列表：</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="store">
                                    <tr style="background:#D2E9FF;text-align: center;">
                                        <td>教练姓名</td>
                                        <td>性别</td>
                                        <td>年龄</td>
                                        <td>身高</td>
                                        <td>体重</td>
                                        <td>工作时间</td>
                                        <td>本月是否拥有课时</td>
                                        <td>课时收费</td>
                                        <td>教练评价</td>
                                        <td>操作</td>
                                    </tr>
                                    <s:iterator value="fitnessList" var="fitness">
                                        <tr>
                                            <td>${fitness.fitnessName }</td>
                                            <td>${fitness.sex == false ? '男' : '女'}</td>
                                            <td>${fitness.age }岁</td>
                                            <td>${fitness.height}cm</td>
                                            <td>${fitness.weight }kg</td>
                                            <td>${fitness.workTime }</td>
                                            <td>${fitness.haveClass == true ? '是' : '否'}</td>
                                            <td>${fitness.classCost }元</td>
                                            <td>${fitness.grade }</td>
                                            <td>
                                                <a href="http://localhost:8080/order/orderAction_add?fitnessId=${fitness.id}">预定</a>
                                                <a href="http://localhost:8080/images/${fitness.picture}.jpg">教练照片</a>
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


