<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/29
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用EL获取用户提交数据</title>
</head>
<body>
<h2>您提交的内容如下</h2>
<%
    request.setCharacterEncoding("UTF-8");
%>
姓名：${param.name}<br>
爱好：${paramValues.hobby[0]} ${paramValues.hobby[1]} ${paramValues.hobby[2]}<br>
</body>
</html>
