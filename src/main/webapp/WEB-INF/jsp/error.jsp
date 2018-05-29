<%--
  Created by IntelliJ IDEA.
  User: Brian
  Date: 2016/3/4
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>错误提示</title>
    <script type="text/javascript"></script>
    <script>
        function goRegister(url,params) {
            var temp = document.createElement("form");
            temp.action= url;
            temp.method="post";
            temp.style.display="none";
            for(var x in params)
            {
                var opt =document.createElement("textarea");
                opt.name = x;
                opt.value = params[x];
                temp.appendChild(opt);
            }
            document.body.appendChild(temp);
            temp.submit();
            return temp;
        }

    </script>
</head>
<body>
<div style="color: red">${message}</div>
<a href="javascript:goRegister('/user/goRegisterView',null);">去注册</a>
</body>
</html>
