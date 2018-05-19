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
    <title>成功提示</title>
</head>
<script type="text/javascript">
    function goLogin(url, params) {
        var temp = document.createElement("form");
        temp.action = url;
        temp.method = "post";
        temp.style.display = "none";
        alert("1");
        for (var x in params) {
            var opt = document.createElement("textarea");
            opt.name = x;
            opt.value = params[x];
            temp.appendChild(opt);
        }
        document.body.appendChild(temp);
        temp.submit();
        return temp;
    }
</script>
<body>
<%--显示回调信息--%>
${message}
<%-- 使用超链接进行post提交--%>
<a href="javascript:;"
             onclick="javascript:goLogin('/user/goLoginView',null)">登录</a>
<hr/>
<a href="/user/queryUser">查询用户</a>
</body>
</html>
