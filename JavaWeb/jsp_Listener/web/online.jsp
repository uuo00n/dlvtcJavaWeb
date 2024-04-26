<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/26
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.dlvtc.listener" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前访问人数</title>
</head>
<body>
<h2>当前的在线人数：<%=listener.getOnlineCount()%>
</h2>
</body>
</html>
