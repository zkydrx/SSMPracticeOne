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
    <%--<link rel="stylesheet" type="text/css" href="../../../css/common.css" />--%>
    <link href="../../../css/common.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">

    /**
     * 第一种post提交方式
     * @returns {boolean}
     */
   function update() {
       var obj = document.getElementsByName('id');
       var count = obj.length;
       var j = 0;
       var id ='';
       for (var i = 0; i < count; i++)
       {
           if(obj[i].checked)
           {
                j++;
                id=$(obj[i]).val();
           }
       }
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


    function goLoginOne() {
       document.userForm.method="post";
        document.userForm.action =
            "${pageContext.request.contextPath}/login.action?username="+"${pageContext.request.getSession(true).getAttribute("username")}"+"&password" +
            "="+"${pageContext.request.getSession(true).getAttribute("password")}";
        document.userForm.submit();
    }

    /**
     * 第二种post提交方式使用a标签实现post提交
     * @param url
     * @param params
     * @returns {HTMLFormElement}
     */
    function updateTwo(url, params) {
        var temp = document.createElement("form");
        temp.action = url;
        temp.method = "post";
        temp.style.display = "none";
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

    function deleteUser(url,params) {
        var del = document.createElement("form");
        del.action = url;
        del.method = "post";
        del.style.display = "none";
        for(var i in params)
        {
            var obj = document.createElement("textarea");
            obj.name = i;
            obj.value = params[i];
            del.appendChild(obj)
        }
        document.body.appendChild(del);
        del.submit();
        return del;
    }



    function startTime()
    {
        var today=new Date();//定义日期对象
        var yyyy = today.getFullYear();//通过日期对象的getFullYear()方法返回年
        var MM = today.getMonth()+1;//通过日期对象的getMonth()方法返回年
        var dd = today.getDate();//通过日期对象的getDate()方法返回年
        var hh=today.getHours();//通过日期对象的getHours方法返回小时
        var mm=today.getMinutes();//通过日期对象的getMinutes方法返回分钟
        var ss=today.getSeconds();//通过日期对象的getSeconds方法返回秒
        // 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09
        MM=checkTime(MM);
        dd=checkTime(dd);
        mm=checkTime(mm);
        ss=checkTime(ss);
        var day; //用于保存星期（getDay()方法得到星期编号）
        if(today.getDay()==0)   day   =   "星期日 "
        if(today.getDay()==1)   day   =   "星期一 "
        if(today.getDay()==2)   day   =   "星期二 "
        if(today.getDay()==3)   day   =   "星期三 "
        if(today.getDay()==4)   day   =   "星期四 "
        if(today.getDay()==5)   day   =   "星期五 "
        if(today.getDay()==6)   day   =   "星期六 "
        document.getElementById('nowDateTimeSpan').innerHTML=yyyy+"-"+MM +"-"+ dd +" " + hh+":"+mm+":"+ss+"   " + day;
        setTimeout('startTime()',1000);//每一秒中重新加载startTime()方法
    }

    function checkTime(i)
    {
        if (i<10){
            i="0" + i;
        }
        return i;
    }




</script>

    <style type="text/css">
        #nowDateTimeSpan{
            color: #cc3e00;
        }
        label {
            color: #9794ee;
        }
        table {
            border-color: #1a25cc;
            color:#ad11cc;
            cellspacing: 0px;
            width: 100%;
            border-style: solid;

        }
        a {
            color: #ad11cc
        }
    </style>

</head>
<body onload="startTime()">


<form name="userForm"  action="${pageContext.request.contextPath}/"  method="post">
    <label >用户列表：</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <label><a href="${pageContext.request.contextPath}/index.jsp">去首页</a></label>


    <input type="text" value="${pageContext.request.getSession(true).getAttribute("username")},,
    ,<%=request.getSession().getAttribute("username")%>,<%=request.getSession().getAttribute("password")%>">
    <%-- TODO 解决跳转的乱码问题，以及password 存入session的问题--%>
    <a charset="utf-8" href="${pageContext.request.contextPath}/login.action?username=${username}&password=${password}"
    >GoodsManage</a>
    <%-- TODO 解决跳转的乱码问题，以及password 存入session的问题--%>
    <input type="button" onclick="goLoginOne()" value="MangeGoodsOne"/>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <label >当前时间：</label><span  id="nowDateTimeSpan"></span>

    <input type="text" value="${username},${passowrd}">
    <input type="button" onclick="aalogin();" value="GoodsManage"/>


    <table width="100%" border="1" cellspacing="0" style="border-color: #1a25cc;color: #ad11cc;">
        <tr>
            <%-- 这个用户id 是为了选中该行进行修改或者删除用的，后直接用更好的方式实现了，故注释掉 --%>
            <%--<td>用户id</td>--%>
            <td>用户名</td>
            <td>密码</td>
            <td>生日</td>
            <td>性别</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <%-- 用户id用来调试以及选中改行用--%>
                <%--<td ><input type="checkbox" name="id" id="id" value="${user.id}"/>${user.id}</td>--%>
                <td>${user.username}</td>
                <td>
                    <input type="password" name="password" value="${user.password}">
                </td>
                <%-- 页面对日起进行格式化--%>
                <td>
                    <%--<input type="date" name="birthday" value="${user.birthday}"/>--%>
                    <fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>
                </td>
                <td>${user.sex}</td>
                <td>${user.address}</td>
                <td>
                    <%--<input type="button" name="" value="修改" onclick="update();"/>--%>
                    <a href="javascript:;"
                       onclick="javascript:updateTwo('${pageContext.request.contextPath}/user/editUser',{id:${user.id}})">修改</a>
                    <a href="javascript:;"
                       onclick="deleteUser('${pageContext.request.contextPath}/user/deleteUser',{id:${user.id}});">删除
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

</body>
</html>
