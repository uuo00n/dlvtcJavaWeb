<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/12
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>循环次数控制</h4>
<c:forEach var="item" begin="0" end="10" step="3">
    ${item}
</c:forEach>

<h4>循环显示集合中的元素</h4>
<%
    ArrayList<String> arr = new ArrayList<>();
    arr.add("第一");
    arr.add("第二");
    arr.add("第三");
    arr.add("第四");
    pageContext.setAttribute("arr", arr);
%>
<c:forEach var="item" items="${arr}">
    ${item}
</c:forEach>

<h4>循环显示逗号分隔的字符串</h4>
<c:forEach var="color" items="红,橙,黄,绿,青,蓝,紫,粉红,翠绿" begin="2" step="2">
    <c:out value="${color}"/>
</c:forEach>

<h4>循环标签中状态变量的使用</h4>
<c:forEach var="i" begin="10" end="50" step="5" varStatus="status">
    <c:if test="${status.first}">
        begin:<c:out value="${status.begin}"/>&nbsp;&nbsp;
        end:<c:out value="${status.end}"/>&nbsp;&nbsp;
        step:<c:out value="${status.step}"/>&nbsp;&nbsp;
        <c:out value="输出的元素："/>
    </c:if>
    <c:out value="${i}"></c:out>
    <c:if test="${status.last}">
        <br>总共输出<c:out value="${status.count}"></c:out>个元素。
    </c:if>
</c:forEach>
</body>
</html>
