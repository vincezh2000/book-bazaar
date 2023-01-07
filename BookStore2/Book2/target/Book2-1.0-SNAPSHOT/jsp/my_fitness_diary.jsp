<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>健身日记</title>
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
        <td>当前位置&gt;&gt;<a href="../index.jsp">首页</a>&gt;&gt;健身日记</td>
    </tr>
</table>
<br>
<center>
    <table border="0" width="80%" cellpadding="0" cellspacing="0">
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
                                <b><a href="../jsp/fitness_diary.jsp">写日记</a></b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <c:if test="${fitnessDiaryList != null && fitnessDiaryList.size() > 0}">
                                    <table class="store">
                                        <tr style="background:#D2E9FF;text-align: center;">
                                            <td style="width: 10%">日期</td>
                                            <td>健身日记</td>
                                        </tr>
                                        <s:iterator value="fitnessDiaryList" var="fitnessDiary">
                                            <tr>
                                                <td><fmt:formatDate value="${fitnessDiary.createTime}" type="date"/></td>
                                                <td>${fitnessDiary.diary }</td>
                                            </tr>
                                        </s:iterator>
                                    </table>
                                </c:if>
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


