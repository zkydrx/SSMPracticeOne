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
    <script type="text/javascript" src="../../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

   function update() {
       var obj = document.getElementsByName('id');
       var count = obj.length;
       var j = 0;
       var id ='';
       alert("1");
       alert("count:"+count);
       for (var i = 0; i < count; i++)
       {
           if(obj[i].checked)
           {
                j++;
                id=$(obj[i]).val();
           }
       }

       alert("id"+id);
       if(j==0)
       {
           alert("请选择一条记录");
           return false;
       }
       if(j>1)
       {
           alert("只能选择一条记录");
           return false;
       }

       $.ajax({
            url:"${pageContext.request.contextPath}/user/editUser",
           data:{
               id:id
           },
           type:"post"
           // success:function(data){
           //     if (data.result == 1) {
           //         alert("修改成功");
           //     }else{
           //         alert("修改失败");
           //
           //     }
           // }

       });

       // 选中改行后提交进行修改，如何获取改行的用户id？
       <%--var obj = document.getElementById("id");--%>
       <%--var id = obj.value();--%>

       <%--alert("id"+id);--%>
        <%--document.userForm.action = "?id="+"${user.id}";--%>

        <%--document.userForm.submit();--%>
    }
</script>

</head>
<body>


<form name="userForm"  action="${pageContext.request.contextPath}/"  method="post">
    用户列表：
    <table width="100%" border="1">
        <tr>
            <td>用户id</td>
            <td>用户名</td>
            <td>密码</td>
            <td>生日</td>
            <td>性别</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td ><input type="checkbox" name="id" id="id" value="${user.id}"/>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <%-- 页面对日起进行格式化--%>
                <td><fmt:formatDate value="${user.birthday}" pattern="yyyy-mm-dd HH:mm:ss"></fmt:formatDate> </td>
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
