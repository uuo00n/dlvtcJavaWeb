<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/31
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录验证页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="com.dlvtc.user"/>
<jsp:setProperty name="user" property="*"/>
<%
    if (user.checkUser(user.getUsername(), user.getPassword())) {
%>
<%=user.getUsername()%>:登录成功！
<%
} else {
%>
<%=user.getUsername()%>:登录失败！
<%
    }
%>
</body>
</html>
