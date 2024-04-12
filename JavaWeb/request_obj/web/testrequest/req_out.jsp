<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/12
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
利用getAttribute方法获取利用setAttribute方法保存的值，并显示!
<br>
<%
    Double a1 = (Double) request.getAttribute("st1");
    Double a2 = (Double) request.getAttribute("st2");
    Double a3 = (Double) request.getAttribute("st3");
%>
<%=a1%>+<%=a2%>=<%=a3%><br/>
利用getParameter方法获取获取请求参数，并显示!<br/>
<%
    String s1 = request.getParameter("shuju1");
    String s2 = request.getParameter("shuju2");
%>
<%=s1%>+<%=s2%>=<%=a3%><br>
</body>
</html>
