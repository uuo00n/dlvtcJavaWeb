package com.dlvtc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class ShowSession extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=gb2312");
        PrintWriter out = resp.getWriter();
        String str = "Session Tracking Example";
        String heading;

        HttpSession session = req.getSession(true);
        Integer accessCount = (Integer) session.getAttribute("accessCount");
        if (accessCount == null) {
            accessCount = new Integer(0);
            heading = "Welcome newUser";
        } else {
            heading = "Welcome Back";
            accessCount = new Integer(accessCount.intValue() + 1);
        }
        session.setAttribute("accessCount", accessCount);
        out.println("<html><head><title>Session追踪</title></head>" + "<body>" + heading + "<br>" + "<h2>Information on Your Session</h2><br>"
                + "\n" + "<table border=l align=center>\n"
                + "<TH>Info Type<TH>Value" + "<br>" + "<tr>\n"
                + "<td>ID</td>\n" + "<td>" + session.getId() + "</td></tr>\n"
                + "<tr>\n" + "<td>CreatTime</td>\n" + "<td>"
                + new Date(session.getCreationTime()) + "</td></tr>\n"
                + "<tr>\n" + "<td>LastAccessTime</td>\n" + "<td>"
                + new Date(session.getLastAccessedTime()) + "</td></tr>\n"
                + "<tr>\n" + "<td>Number of Access</td>\n" + "<td>"
                + accessCount + "</td></tr>\n" + "</body></html>");
    }
}
