import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String major = request.getParameter("major");
        String[] hobbies = request.getParameterValues("hobbies");
        String profile = request.getParameter("profile");

        String hobbyStr = (hobbies != null) ? String.join(",", hobbies) : "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // 加载数据库驱动
            Class.forName("com.mysql.jdbc.Driver");
            // 连接数据库
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "root", "123456");

            // 插入用户信息的SQL语句
            String sql = "INSERT INTO users (username, password, gender, major, hobbies, profile) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, gender);
            pstmt.setString(4, major);
            pstmt.setString(5, hobbyStr);
            pstmt.setString(6, profile);

            pstmt.executeUpdate();
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("注册成功！");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("注册失败！");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
