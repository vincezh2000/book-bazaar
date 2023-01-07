<%@ page language="java" pageEncoding="UTF-8" %>

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
        <tr>
            <td rowspan="1">
                <form id="searchForm" action="${pageContext.request.contextPath}/fitnessDiary/fitnessDiaryAction_add"
                      method="post">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
                        <colgroup>
                            <col width="20%" align="right">
                            <col width="*%" align="left">
                        </colgroup>
                        <tr>
                         <td>健身日记</td>
                        </tr>
                        <tr>
                            <td>
                                <textarea style="height: 500px;width: 80%;" id="fitnessDiary" class="tx" name="fitnessDiary" type="text">

                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right" style="padding-top:10px;">
                                <input class="tx" style="width:120px;margin-right:30px;" type="button"
                                       onclick="document.forms[0].submit();" value="完成">
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
        <tr valign="top">
            <td rowspan="2">

            </td>
        </tr>
    </table>
</center>
</body>
</html>
<script>
    document.body.style.backgroundImage = "url(http://localhost:8080/images/background.jpg)"; //改变背景图
</script>


