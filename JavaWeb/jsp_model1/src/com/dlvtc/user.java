package com.dlvtc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class user {
    private String username = null;
    private String password = null;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public user() {

    }

    public user(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean checkUser(String username2, String password2) throws SQLException, ClassNotFoundException {
        boolean f;
        ConnectDB cdb = new ConnectDB();
        Connection conn = cdb.getConnection();
        String sql = "select * from user where(name=? and password=?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username2);
        pstmt.setString(2, password2);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next())
            f = true;
        else
            f = false;
        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
        return f;
    }
}
