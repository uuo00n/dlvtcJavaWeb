package com.dlvtc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    private String driverName = "com.mysql.jdbc.Driver";
    private String user = "root";
    private String password = "123456";
    private String dbName = "javaweb";

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public Connection getConnection() throws SQLException,ClassNotFoundException {
        String url1 = "jdbc:mysql://localhost:3306/"+dbName;
        String url2 = "?user="+user+"&password="+password;
        String url3 = "&useUnicode=true&characterEncoding=utf-8";
        String url = url1+url2+url3;
        Class.forName(driverName);
        return DriverManager.getConnection(url);
    }
}
