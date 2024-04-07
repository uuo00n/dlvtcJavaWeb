<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/7
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
现在的日期和时间是:<%=new Date()%><br>
<hr/>
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="include_page1.jsp">
    <jsp:param name="name" value="黄俊博"/>
    <jsp:param name="password" value="abc"/>
</jsp:include>
</body>
</html>
