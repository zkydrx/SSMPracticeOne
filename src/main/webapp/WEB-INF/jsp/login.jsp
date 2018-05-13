<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 2016/3/8
  Time: 0:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登陆</title>
</head>
<script type="text/javascript">
    function checkName() {
        var name=$("#account_content").val();
        if(name=="")
        {
            alert("Please input the name");
        }
        if(name.length<6)
        {
            alert("The name length was shortter than six.");
        }
        if(name.contains(Number))
        {
            alert("The name not contain the number.");
        }
    }
</script>
<body>
<form action="${pageContext.request.contextPath }/login.action" method="post">
    用户账号：<input type="text" name="username" id="account_content" onblur="checkName()"/><br/>
    用户密码 ：<input type="password" name="password" id="password_content" onblur="checkPassword()"/><br/>
    <input type="submit" value="登陆"/>

</form>
</body>
</html>
