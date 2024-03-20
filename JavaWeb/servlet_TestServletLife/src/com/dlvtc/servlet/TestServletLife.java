package com.dlvtc.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class TestServletLife extends HttpServlet {
    public TestServletLife(){
        System.out.println("TestServletLfie Construtor");
    }

    public void destroy() {
        System.out.println("servlet destroy---------------");
    }

    public void init() throws ServletException{
        System.out.println("Servlet init");
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;utf-8");
        PrintWriter out = response.getWriter();
        System.out.println("servlet doget");
        out.println("<html><head><title>TestServletLife</title></head><body>TestServletLife</body></html>");;
    }
    protected  void doPost(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException,IOException{
        this.doGet(request,response);
    }
}
