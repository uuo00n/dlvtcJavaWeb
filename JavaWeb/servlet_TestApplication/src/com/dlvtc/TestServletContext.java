package com.dlvtc;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class TestServletContext extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        ServletContext application = this.getServletContext();
        Integer accessCount = (Integer) application.getAttribute("accessCount");
        if (accessCount == null) {
            accessCount = new Integer(0);
        } else {
            accessCount = new Integer(accessCount.intValue() + 1);
        }
        application.setAttribute("accessCount", accessCount);
        out.println("<html><head><title>ServletContext测试</title></head><br>" + "<body><td>访问量计数:" + accessCount + "</td>\n" + "</body></html>");
    }
}
