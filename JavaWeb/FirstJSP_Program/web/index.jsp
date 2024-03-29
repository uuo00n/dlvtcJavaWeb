<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/3/29
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My First JSP Program</title>
</head>
<body>
<%!
int sum = 0
        ,
        x = 1;
%>
<%
    while (x <= 10) {
        sum += x;
        ++x;
    }
%>
<h3>显示1到10的累加和程序运行时间</h3>
<p>
    1到10的累加和为：<%=sum%>
</p>
<p>
    程序的执行时间为<%=new Date()%>
</p>
</body>
</html>
