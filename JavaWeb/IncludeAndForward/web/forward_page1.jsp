<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/7
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
这是forward_page1.jsp页面，这是forward之前的页面
<% request.setCharacterEncoding("utf-8");%>
<jsp:forward page="forward_page2.jsp">
    <jsp:param name="name" value="黄俊博"/>
    <jsp:param name="password" value="abc"/>
</jsp:forward>
</body>
</html>
