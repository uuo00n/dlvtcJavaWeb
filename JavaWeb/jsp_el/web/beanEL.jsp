<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/29
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用EL访问javaBean</title>
</head>
<body>
<jsp:useBean id="BookBean" class="com.dlvtc.BookBean" scope="session"/>
书号：${BookBean.bookid}<br>
书名：${BookBean.bookname}<br>
作者：${BookBean.author}<br>
出版社：${BookBean["publisher"]}<br>
价格：${BookBean.price}<br>
</body>
</html>
