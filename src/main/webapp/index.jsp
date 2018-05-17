<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript">
    function checkValue() {
        var name = $("#name").val();
        if( name =="")
        {
            alert("Please input some thing.");
        }
    }
</script>
<body>
<h2>Hello World!</h2>

<form id="register" action="${pageContext.request.contextPath}/user/addUser" method="post">
    <table >
        <tr><td>姓名:</td><td><input type="text" id="name" name="name" value="" onblur="checkValue();"/></td></tr>
        <tr><td>密码:</td><td><input type="password" id="password" name="password" value=""/></td></tr>
        <tr><td>生日:</td><td><input type="date" id="birthday" name="birthday" value=""/></td></tr>
        <tr><td>性别:</td><td><input type="text" id="sex" name="sex" value=""/></td></tr>
        <tr><td>地址:</td><td><input type="text" id="address" name="address" value=""/></td></tr>
        <tr><td colspan="2"><input type="submit" name="submit" value="注册" ></td></tr>
    </table>
</form>

</body>
</html>
