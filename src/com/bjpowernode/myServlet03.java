package com.bjpowernode;

import com.bjpowernode.domain.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class myServlet03 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入servlet03中");
        Student student = new Student();
        student.setId(1001);
        student.setName("yuanye");
        student.setAge(23);
        String str = "{\"id\":\"" +student.getId()+"\",\"name\":\""+student.getName()+"\",\"age\":\""+student.getAge()+"\"}";
        response.getWriter().print(str);
    }
}
