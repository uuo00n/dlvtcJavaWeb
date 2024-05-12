<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/12
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>my jsp page</title>
</head>
<body>
<h4>根据当前系统时间输出不同的问候语</h4>
<%
    Calendar rightNow = Calendar.getInstance();
    Integer hour = rightNow.get(Calendar.HOUR_OF_DAY);
    request.setAttribute("hour", hour);
%>

<h5>采用单分支标签实现</h5>
<c:if test="${hour >=0 && hour<= 11}">上午好！</c:if>
<c:if test="${hour >=12 && hour<= 17}">下午好！</c:if>
<c:if test="${hour >=18 && hour<= 23}">晚上好！</c:if>

<h5>采用多分支标签实现</h5>
<c:choose>
    <c:when test="${hour >=0 && hour<= 11}">上午好！</c:when>
    <c:when test="${hour >=12 && hour<= 17}">下午好！</c:when>
    <c:otherwise>晚上好！</c:otherwise>
</c:choose>
</body>
</html>
