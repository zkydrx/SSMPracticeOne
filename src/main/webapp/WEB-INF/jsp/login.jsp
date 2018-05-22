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
        var name = $("#account_content").val();
        if (name == "") {
            alert("Please input the name");
        }
        if (name.length < 6) {
            alert("The name length was shortter than six.");
        }
        if (name.contains(Number)) {
            alert("The name not contain the number.");
        }
    }
</script>

<body>
<form action="${pageContext.request.contextPath }/login.action" method="post" style="align-content: center">
    <table style="align-content: center; width: 600px;height: 300px;" border="1" >
        <tr>
            <td colspan="2">
                <div style="color: red">${message}</div>
            </td>
        </tr>
        <tr>
            <td><label for="用户账号：">用户账号:</label></td>
            <td><input type="text" name="username" id="account_content" onblur="checkName();"/></td>
        </tr>
        <tr>
            <td><label for="用户密码">用户密码:</label></td>
            <td><input type="password" name="password" id="password_content" onblur="checkPassword()"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登陆"/></td>
        </tr>
    </table>
</form>

</body>
</html>
