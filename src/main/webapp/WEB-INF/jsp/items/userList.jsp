<%--
  Created by IntelliJ IDEA.
  User: zky
  Date: 2018-05-02
  Time: 15:45:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>用户列表</title>
</head>
<script type="text/javascript">
   function update() {
        document.userForm.action = "${pageContext.request.contextPath}/user/editUser";
        document.userForm.submit();
    }
</script>
<body>


<form name="userForm" action="${pageContext.request.contextPath}/" method="post">
    用户列表：
    <table width="100%" border="1">
        <tr>
            <td>用户id</td>
            <td>用户名</td>
            <td>生日</td>
            <td>性别</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.birthday}</td>
                <td>${user.sex}</td>
                <td>${user.address}</td>
                <td>
                    <input type="button" name="" value="修改" onclick="update();"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

</body>
</html>
