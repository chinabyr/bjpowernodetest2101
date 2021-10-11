<%--
  Created by IntelliJ IDEA.
  User: woshi
  Date: 2021/10/9
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 	request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"myServlet04.do",
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        $("#id1").html(data.s1.id)
                        $("#name1").html(data.s1.name)
                        $("#age1").html(data.s1.age)

                        $("#id2").html(data.s2.id)
                        $("#name2").html(data.s2.name)
                        $("#age2").html(data.s2.age)




                    }
                })
            })
        })
    </script>
    <button id="btn">点击</button>

    <br>
    <br>
    编号<span id="id1"></span><br>
    姓名<span id="name1"></span><br>
    年龄<span id="age1"></span><br>

    <br>
    <br>
    编号<span id="id2"></span><br>
    姓名<span id="name2"></span><br>
    年龄<span id="age2"></span><br>
</body>
</html>
