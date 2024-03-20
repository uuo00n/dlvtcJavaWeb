package com.dlvtc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class SessionInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Session Info Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h3>Session Infomation</h3>");
        out.println("New Session" + session.isNew() + "<br>");
        out.println("Session Id:" + session.getId() + "<br>");
        out.println("Session Creat Time:" + new Date(session.getCreationTime()) + "<br>");
        out.println("Session Last Access Time:" + new Date(session.getLastAccessedTime()) + "<br>");
        out.println("<h3>Request Infomation</h3>");
        out.println("Session Id From Request:"
                + req.getRequestedSessionId() + "<br>");
        out.println("Session Id Via Cookie:"
                + req.isRequestedSessionIdFromCookie() + "<br>");
        out.println("Session Id Via URL:"
                + req.isRequestedSessionIdFromURL() + "<br>");
        out.println("Valid Session Id:" + req.isRequestedSessionIdValid()
                + "<br>");
        out.println("<a href=" + resp.encodeURL("SessionInfoServlet") + ">refresh</a>");
        out.println("</body></html>");
        out.close();
    }
}
