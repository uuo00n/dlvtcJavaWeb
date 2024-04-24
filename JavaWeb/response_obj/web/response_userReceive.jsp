<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/24
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userReceive</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if (name.equals("abc") && password.equals("abc")) {
        request.getRequestDispatcher("response_loginCorrect.jsp").forward(request, response);
    } else {
        response.sendRedirect("response_loginFalse.jsp");
    }
%>
</body>
</html>
