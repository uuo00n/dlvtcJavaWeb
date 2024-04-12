<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/7
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page2</title>
</head>
<body>
现在的日期和时间:<%=new Date()%>
<hr/>
<%@ include file="include_page1.jsp" %>
</body>
</html>
