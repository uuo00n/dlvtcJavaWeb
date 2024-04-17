<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/17
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>提交两个整数页面</title>
</head>
<body>
<h3>提交两个整数页面</h3>
<br>
<form action="result.jsp" method="post">
    数据1：<input name="shuju1"><br><br>
    数据2：<input name="shuju2"><br><br>
    <input type="submit" value="提交给result页面">
</form>

<form action="show.jsp" method="post">
    数据1：<input name="shuju1"><br><br>
    数据2：<input name="shuju2"><br><br>
    <input type="submit" value="提交给show页面">
</form>

</body>
</html>
