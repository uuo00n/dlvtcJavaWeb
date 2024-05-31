package com.dlvtc;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectDBTest {
    public static void main(String[] args) {
        // 创建ConnectDB实例
        ConnectDB connectDB = new ConnectDB();

        try {
            // 尝试获取数据库连接
            Connection connection = connectDB.getConnection();
            
            if (connection != null) {
                System.out.println("数据库连接成功！");
                
                // 测试完成后，关闭数据库连接（实际项目中可能在finally块中关闭）
                connection.close();
            } else {
                System.out.println("无法获取数据库连接！");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("驱动加载失败：" + e.getMessage());
        } catch (SQLException e) {
            System.err.println("数据库连接失败：" + e.getMessage());
        }
    }
}
