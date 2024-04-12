<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/12
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String str1 = request.getParameter("shuju1");
    String str2 = request.getParameter("shuju2");
    System.out.println("str1:" + str1 + "str2:" + str2);
    double s1 = Double.parseDouble(str1);
    double s2 = Double.parseDouble(str2);
    double s3 = s1 + s2;
    request.setAttribute("st1", s1);
    request.setAttribute("st2", s2);
    request.setAttribute("st3", s3);
%>
<%
    request.getRequestDispatcher("req_out.jsp").forward(request, response);
%>
</body>
</html>
