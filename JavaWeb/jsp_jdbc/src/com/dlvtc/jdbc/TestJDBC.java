package com.dlvtc.jdbc;

import com.sun.org.apache.xml.internal.security.algorithms.implementations.SignatureDSA;

import java.sql.*;

public class TestJDBC {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/javaweb";
        String user = "root";
        String password = "123456";

        String sql1 = "select * from students";

        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = DriverManager.getConnection(url, user, password);

        Statement stmt = conn.createStatement();

        ResultSet rs = stmt.executeQuery(sql1);

        while (rs.next()) {
            System.out.println(rs.getInt("id") + ":" + rs.getString("name"));
        }
        rs.close();
        stmt.close();
        conn.close();

        String sql2 = "update students set age =20 where id = ?";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn2 = DriverManager.getConnection(url, user, password);
        PreparedStatement pstmt = conn2.prepareStatement(sql2);
        pstmt.setInt(1, 2014511511);

        int count = pstmt.executeUpdate();
        System.out.println("受影响的行数为：" + count);

        pstmt.close();
        conn2.close();
    }
}
