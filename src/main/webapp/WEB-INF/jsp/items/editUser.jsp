<%--
  Created by IntelliJ IDEA.
  User: zky
  Date: 2018-05-02
  Time: 18:42:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>update the user</title>
</head>
<body>

<form name="userForm" action="${pageContext.request.contextPath}/user/update" method="post">
    用户列表：
    <table width="100%" border="1">
        <tr>
            <td>用户id</td>
            <td><input type="text" name = "id" value="${user.id}"/></td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" value="${user.username}"/> </td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" value="${user.password}"/></td>
        </tr>
        <tr>
            <td>生日</td>
            <td>
                <%--<input type="date" name="birthday" value="${user.birthday}"/>--%>
                <input type="date" name="birthday" value="<fmt:formatDate value="${user.birthday}"
                pattern="yyyy-MM-dd"/>">

            </td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="text" name="sex" value="${user.sex}"/>
            </td>
        </tr>

        <tr>
            <td>地址</td>
            <td><input type="text" name="address" value="${user.address}"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交"/>
            </td>
        </tr>
    </table>
    <%--<input type="text" name="submit" value="">--%>
    <input type="submit" name="" value="submit">
</form>
</body>
</html>
