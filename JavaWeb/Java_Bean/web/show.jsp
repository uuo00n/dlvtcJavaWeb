<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/17
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用JavaBean+JSP求两数和</title>
</head>
<body>
<jsp:useBean id="c" class="com.dlvtc.bean.Add" scope="request"/>
<jsp:setProperty name="c" property="*"/>
<p>
    调用jsp:getProperty标签获取Circle对象的属性值：
    <jsp:getProperty name="c" property="shuju1"/>
    +
    <jsp:getProperty name="c" property="shuju2"/>
    =
    <%=c.sum()%>
</p>
</p>
</body>
</html>
