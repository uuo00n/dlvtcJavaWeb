package com.dlvtc.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SetCookie extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        //cookie的默认生存时间为-1
        Cookie cookie = null;
        for(int i = 0; i< 3;i++) {
            cookie = new Cookie("Session-Cookie-" + i,"Cookie-Value-" + i);
            response.addCookie(cookie);
        }
        for (int i = 0; i< 3; i++) {
            cookie = new Cookie("Persistent-Cookie-" + i,"Cookie-Value-" + i);
            cookie.setMaxAge(60*60);
            response.addCookie(cookie);
        }
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>设置cookie</title></head>"
        +"<body bgcolor=\'#FDF5E6\'>\n"
        +"<H1 align=\"center\">设置cookie</H1>\n"
        +"在这个页面设置了6个cookie，查看着6个cookie请查看页面\n"
        +"<a href=\"ShowCookie\">查看cookies</a>");
        out.println("</body></html>");
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException,IOException {
        this.doGet(request, response);
    }
}
