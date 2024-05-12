package com.dlvtc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dlvtc.bean.Student;

public class SetStudent extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Student> studentlist = new ArrayList<Student>();

        studentlist.add(new Student("01", "张三", "男"));
        studentlist.add(new Student("02", "李四", "女"));
        studentlist.add(new Student("03", "王五", "男"));

        request.setAttribute("result", studentlist);

        request.getRequestDispatcher("show.jsp").forward(request, response);
    }


}