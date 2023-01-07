<%--
  Created by IntelliJ IDEA.
  User: mystery
  Date: 2017/3/19
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>健身计划</title>
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
<a href="../index.jsp">首页</a>
<div style="margin-left:100px">
    <font size="5px" style="color: blue">均衡膳食:</font>
</div>
<center>
    <textarea name="textarea" cols="100" rows="4"
              style="background:#D2E9FF;font-size:20px; color:blue;height: 500px;width: 80%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;">
   说说我们的饮食原则：
　　1、少吃多餐：一天分成5~6餐，每餐间隔为三小时左右。
　　2、在整天的饮食中，不能只包括蛋白质、碳水化合物和脂肪，还应包括基本含量的维生素和矿物质，以及适量的补充运动营养品。
　　3、营养摄取中，以食物的营养为主，补充运动营养品不能替代正常食物，它只有在正常食物中不能得到平衡时才补充服用。
　　4、营养的分配根据各人不同的训练水平、训练强度、恢复能力训练周期和能提供的营养条件来合理安排。
　　5、在平时训练周期中，一天分六餐，训练时间安排在下午五点，如果训练时间有变更，用餐安排和营养素的分配，可适当调整。


   范例参考：
　　(1)第一餐(7am)早餐：
　　一般把早餐安排在晨起后半小时，如果你要减体得，减缩多余的体内脂肪，可以在晨起后早餐前30~45分钟进行有氧训练。早餐中，蛋白质食物应占一天食量的20%，碳水化合物应占25%，在早餐同时服维生素C和维生素E，可以帮助促进体能的迅速恢复。
　　例：3个水煮蛋和1片奶酪、两片面包，1杯脱脂牛奶;1000毫克VC;400毫克VE;1包多维生素和矿物质。

　　(2)第二餐(10am)早中餐：
　　这餐在早餐后2~3小时，蛋白质和碳水化合物各占一天中10%。蛋白质可以服容易吸收的蛋白粉饮料，同时在一天中第一次服谷氨酰胺和氨基酸，它可以帮助恢复疲劳，有利于增长肌肉。一天中分三次服用，可以使体血浆维持较高水平，帮助氨基酸的吸收。
　　例：蛋白粉和水、牛奶或果汁调匀饮服(30克);燕麦甜饼或面包40克;5克谷氨酰胺，2克(BCAAs)氨基酸。
    </textarea>
</center>
<div style="margin-left:100px">
    <font size="5px" style="color: blue">训练计划:</font>
</div>
<center>
    <textarea name="textarea" cols="100" rows="4"
              style="background:#D2E9FF;font-size:20px; color:blue;height: 100px;width: 80%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;">
    这份健身计划比较适合男性增肌、塑形。文章中列举的练习动作都是采用健身房常有的器械进行示范，这样可以让在健身房锻炼的朋友利用此健身计划。
    先将这份健身房健身计划的训练安排告诉大家，采用一周5练，3次力量练习和2次有氧练习，剩余2天休息，具体如下。
    </textarea>
    <table class="store" style="width: 80%">
        <tr style="background:#D2E9FF;text-align: center;">
            <td>周一</td>
            <td>周二</td>
            <td>周三</td>
            <td>周四</td>
            <td>周五</td>
            <td>周六</td>
            <td>周日</td>
        </tr>
        <tr>
            <td>胸+背</td>
            <td>有氧30分钟</td>
            <td>手臂加肩</td>
            <td>休息</td>
            <td>腿</td>
            <td>有氧30分钟</td>
            <td>休息</td>
        </tr>
    </table>
    <textarea name="textarea" cols="100" rows="4"
              style="background:#D2E9FF;font-size:20px; color:blue;height: 200px;width: 80%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;">


    接着将每天在健身房练习的具体动作分享给大家。
    至于计划中安排的有氧运动本文就不再多描述了，一般采用用跑步机、椭圆及、功率自行车、登山机、楼梯机等健身房应有的健身器械进行练习即可。
    每次有氧练习的时间至少30分钟以上，需要控制在练习者自身强度的75%左右，且是连续不间断的。
    </textarea>
</center>
</body>
</html>
<script>
    document.body.style.backgroundImage = "url(http://localhost:8080/images/background.jpg)"; //改变背景图
</script>
