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
                    url:"myServlet03.do",
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        alert(data.name)
                    }
                })
            })
        })
    </script>
    <button id="btn">点击</button>
</body>
</html>
