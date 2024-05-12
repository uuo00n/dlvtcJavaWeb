package com.dlvtc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormCheck extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");


        String userid = request.getParameter("userid");
        if ("张三".equals(userid)) {
            out.print("用户名已经存在，不能注册!");
        }else{
            out.print("恭喜你，用户名可以使用!");
        }

    }
}