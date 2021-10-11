package com.bjpowernode;

import com.bjpowernode.domain.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class myServlet04 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入servlet04中");
        Student student1 = new Student(1001,"yuanye",22);
        Student student2 = new Student(1002,"baiyunrui",23);

        String str = "{\"s1\":{\"id\":\""+ student1.getId()
                +"\",\"name\":\""+ student1.getName()+
                "\",\"age\":\""+ student1.getAge()+"\"}, \"s2\":{\"id\":\""+ student2.getId()+"\",\"name\":\""+ student2.getName()+"\",\"age\":\""+ student2.getAge()+"\"}}";
        response.getWriter().print(str);
    }
}
