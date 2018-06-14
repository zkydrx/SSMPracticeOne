<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 19644
  Date: 2018-06-15 015
  Time: 00:26:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="itemForm" action="${pageContext.request.contextPath }/items/addItem.action" method="post"
      enctype="multipart/form-data">
<label>添加商品信息：</label>
<table >
    <tr>
        <td>
            商品名称
        </td>
        <td>
            <input type="text" name="name" value=""/>
        </td>
    </tr>
    <tr>
        <td>
            商品价格
        </td>
        <td>
            <input type="text" name="price" value=""/>
        </td>
    </tr>
    <tr>
        <td>
            商品生产日期
        </td>
        <td>
            <input type="date" name="createtime"
                   value=""/>
        </td>
    </tr>
    <tr>
        <td>
            商品图片
        </td>
        <td>
            <input type="file" name="items_pic"/>
        </td>
    </tr>
    <tr>
        <td>商品简介</td>
        <td>
            <textarea rows="3" cols="30" name="detail"></textarea>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="提交"/>
        </td>
    </tr>
</table>

</form>
</body>
</html>
