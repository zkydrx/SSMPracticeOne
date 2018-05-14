<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>

<form id="register" action="/user/addUser " method="post">
    <table >
        <tr><td>姓名:</td><td><input type="" id="name" name="name" value=""/></td></tr>
        <tr><td>生日:</td><td><input type="" id="birthday" name="birthday" value=""/></td></tr>
        <tr><td>性别:</td><td><input type="" id="sex" name="sex" value=""/></td></tr>
        <tr><td>地址:</td><td><input type="" id="address" name="address" value=""/></td></tr>
        <tr><td colspan="2"><input type="submit" name="submit" value="注册" ></td></tr>
    </table>
</form>

</body>
</html>
