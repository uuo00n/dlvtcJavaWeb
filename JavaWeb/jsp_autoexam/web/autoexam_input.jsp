<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/4/19
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>简单网上自评系统</title>
</head>
<body>
<form action="result_show.jsp" method="post">
    一、2+3=?
    <br>
    <input type="radio" name="r1" value="2" checked>2&nbsp;
    <input type="radio" name="r1" value="3">3&nbsp;&nbsp;
    <input type="radio" name="r1" value="4">4&nbsp;
    <input type="radio" name="r1" value="5">5
    <br>
    二、以下哪些是偶数<br>&nbsp;&nbsp;
    <input type="checkbox" name="c1" value="2">2&nbsp;
    <input type="checkbox" name="c1" value="3">3&nbsp;
    <input type="checkbox" name="c1" value="4" checked>4&nbsp;
    <input type="checkbox" name="c1" value="5" checked>5
    <br>
    三、下列哪些是动态网页？<br>&nbsp;&nbsp;
    <select size="4" name="list1" multiple="multiple">
        <option value="asp">ASP</option>
        <option value="php">PHP</option>
        <option value="htm">HTML</option>
    </select><br>
    四、下列组件哪个是服务器端的？<br>&nbsp;&nbsp;
    <select name="list5" size="1">
        <option value="jsp">JSP</option>
        <option value="servlet">servlet</option>
        <option value="java">JAVA</option>
        <option value="jdbc">JDBC</option>
    </select><br>
    五、在服务器端用来接受用户请求的对象是：
    <input type="text" name="text1" size="20"><br>
    <div align="left">
        <blockquote>
            <input type="submit" value="提交" name="button1">
            <input type="reset" value="重置" name="button2">
        </blockquote>
    </div>
</form>
</body>
</html>
