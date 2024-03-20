package com.dlvtc;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ShowCookie extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>设置cookie</title></head>"
                + "<body bgcolor=\'#FDF5E6\'>\n"
                + "<H1 align=\"center\">设置cookie</H1>\n"
                + "<table border=1 align=\"center\">\n" + "<th>Cookie Name\n"
                + "<th>Cookie Value" + "<th>Cookie MaxAge");


        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            Cookie cookie;
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                out.println("<tr>" + "<td>" + cookie.getName() + "</td>"
                        + "<td>" + cookie.getValue() + "</td>" + "<td>"
                        + cookie.getMaxAge() + "</td>");
            }
        }
        out.println("</table></body></html>");

        out.flush();
        out.close();
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}