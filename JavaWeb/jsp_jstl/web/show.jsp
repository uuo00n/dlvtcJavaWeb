<%@ page import="com.dlvtc.bean.Student" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/12
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
显示结果（用EL和JSTL）
<br>
<table border="1">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
    </tr>
    <c:forEach var="student" items="${result}">
        <tr>
            <td>${student.number}</td>
            <td>${student.name}</td>
            <td>${student.sex}</td>
        </tr>
    </c:forEach>
</table>
<hr>
查询显示结果（用代码）
<br>
<%
    List<Student> studentList = (List<Student>) request.getAttribute("result");
%>
<table border="1">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
    </tr>
    <%
        for (Student student : studentList) {
    %>
    <tr>
        <td><%=student.getNumber()%>
        </td>
        <td><%=student.getName()%>
        </td>
        <td><%=student.getSex()%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
