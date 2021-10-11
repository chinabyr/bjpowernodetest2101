
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
                //$("#msg").html(123);
                $.ajax({
                    url:"myServlet01.do",
                    //data:为后台传的参数
                    type:"get",
                    dataType:"text",
                    async:true,
                    success:function (data) {
                        $("#msg").html(data)
                    }

                })
                alert(123)
            })

        })
    </script>
    <button id="btn">点击</button>
    <div id="msg" style="width: 200px;height: 200px;background-color: pink">

    </div>

    <br>
    <br>
</body>

</html>
