<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/24
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <%
        Context ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");
        Connection conn = ds.getConnection();

        String sql = "select * from students";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        rs.last();
    %>
    你要查询的学生数据表中共有<font size="5" color="red"><%=rs.getRow()%>
</font>人
    <table border="2" bgcolor="aqua" width="650">
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
</body>
</html>
