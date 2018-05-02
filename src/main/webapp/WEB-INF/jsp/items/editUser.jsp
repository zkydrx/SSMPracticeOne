<%--
  Created by IntelliJ IDEA.
  User: zky
  Date: 2018-05-02
  Time: 18:42:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="userForm" action="${pageContext.request.contextPath}/update" method="post">
    用户列表：
    <table width="100%" border="1">
        <tr>
            <td>用户id</td>:<td>${user.id}</td>
            <<input type="text">

            <td>用户名</td>:<td>${user.username}</td>
            <td>生日</td>:<td>${user.birthday}</td>
            <td>性别</td>:<td>${user.sex}</td>
            <td>地址</td>:<td>${user.address}</td>
        </tr>

    </table>
    <%--<input type="text" name="submit" value="">--%>
    <input type="submit" name="" value="submit">
</form>
</body>
</html>
