<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改商品信息</title>

    <style type="text/css">
        label{
            color: #9794ee;
        }
        table{
            border-style: solid;
            color: red;
            width:100%;
        }
    </style>
</head>
<body>
<!-- 显示错误信息 -->
<c:if test="${allErrors!=null }">
    <c:forEach items="${allErrors }" var="error">
        ${ error.defaultMessage}<br/>
    </c:forEach>
</c:if>
<form id="itemForm" action="${pageContext.request.contextPath }/items/editItemsSubmit.action" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${items.id }"/>
    <label>修改商品信息：</label>
    <table >
        <tr>
            <td>
                商品名称
            </td>
            <td>
                <input type="text" name="name" value="${items.name }"/>
            </td>
        </tr>
        <tr>
            <td>
                商品价格
            </td>
            <td>
                <input type="text" name="price" value="${items.price }"/>
            </td>
        </tr>
        <tr>
            <td>
                商品生产日期
            </td>
            <td>
                <input type="date" name="createtime"
                       value="<fmt:formatDate value="${items.createtime}" pattern="yyyy-MM-dd"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                商品图片
            </td>
            <td>
                <c:if test="${items.pic !=null}">
                    <img src="/images/${items.pic}" width=100 height=100/>
                    <br/>
                </c:if>
                <input type="file" name="items_pic"/>
            </td>
        </tr>
        <tr>
            <td>商品简介</td>
            <td>
                <textarea rows="3" cols="30" name="detail">${items.detail }</textarea>
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