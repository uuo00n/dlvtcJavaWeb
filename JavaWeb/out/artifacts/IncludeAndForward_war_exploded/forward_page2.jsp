<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/7
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward page2</title>
</head>
<body>
该页面名称为:forward_page2<br />
这是forward之后的页面<br/>
获取参数名字:<%=request.getParameter("name")%>
<br/>
获取参数密码:<%=request.getParameter("password")%>
</body>
</html>
