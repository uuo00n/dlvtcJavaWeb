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
    <title>用JavaBean+JSP实现计算两个数的和</title>
</head>
<body>
<jsp:useBean id="c" class="com.dlvtc.bean.Add"></jsp:useBean>
<jsp:setProperty name="c" property="shuju1" value="1111"/>
<jsp:setProperty name="c" property="shuju2"/>

数据1：
<jsp:getProperty name="c" property="shuju1"/>
<br>
数据2：
<jsp:getProperty name="c" property="shuju2"/>
</body>
</html>
