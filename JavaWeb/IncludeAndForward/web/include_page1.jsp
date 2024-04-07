<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/7
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page1</title>
</head>
<body>
这是被包含的页面内容
<br />
01_黄俊博
<hr />
获取参数，姓名：<%=request.getParameter("name")%><br />
获取参数，密码：<%=request.getParameter("password")%><br />
</body>
</html>
