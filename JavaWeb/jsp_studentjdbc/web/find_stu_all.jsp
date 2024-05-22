<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/22
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <base href="<%=basePath%>>">--%>
    <title>添加任意学生的提交界面</title>
</head>
<body>
<center>
    <%
        String driverName = "com.mysql.jdbc.Driver";
        String userName = "root";
        String userPwd = "123456";
        String dbName = "javaweb";
        String url1 = "jdbc:mysql://localhost:3306/javaweb";
        String url2 = "?user=" + userName + "&password=" + userPwd + "&useUnicode=true&characterEncoding=utf-8";
        String url = url1 + url2;

        Class.forName(driverName);
        Connection con = DriverManager.getConnection(url);
        String sql = "select * from students";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        rs.last();
    %>
    你要查询的学生数据中共有<font size="5" color="red"><%=rs.getRow()%>
</font>人
    <table border="2" width="650" bgcolor="aqua">
        <tr bgcolor="CCCCCC" align="center">
            <td>记录条数</td>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>体重</td>
            <td>身高</td>
        </tr>
        <%
            rs.beforeFirst();
            while (rs.next()) {
        %>
        <tr align="center">
            <td><%=rs.getRow()%>
            </td>
            <td><%=rs.getString("id")%>
            </td>
            <td><%=rs.getString("name")%>
            </td>
            <td><%=rs.getString("sex")%>
            </td>
            <td><%=rs.getString("age")%>
            </td>
            <td><%=rs.getString("weight")%>
            </td>
            <td><%=rs.getString("hight")%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</center>
<%
    //回收资源
    if (rs != null) {
        rs.close();
    }
    if (ps != null) {
        ps.close();
    }
    if (con != null) {
        con.close();
    }
%>
</body>
</html>
