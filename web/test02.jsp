<%--
  Created by IntelliJ IDEA.
  User: woshi
  Date: 2021/10/9
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 	request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
    <script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"myServlet02.do",
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        alert(data.airen01)
                    }

                })
            })
        })
    </script>
    <button id="btn">点击</button>
</body>
</html>
