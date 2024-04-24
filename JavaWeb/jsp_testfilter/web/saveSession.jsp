<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/24
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    if (username != null && !username.equals("")) {
        session.setAttribute("username", username);
    }
%>
注册成功！！！
</body>
</html>
