package servlets;

import beans.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/5/9 19:43
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          19:43           1.0
 */
@WebServlet(name = "SetStudentServlet", urlPatterns = "/SetStudentServlet")
public class SetStudentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Student> studentlist = new ArrayList<Student>();//查询结果
        studentlist.add(new Student("001", "张三", "男"));
        studentlist.add(new Student("002", "李四", "女"));
        studentlist.add(new Student("003", "王五", "男"));
        request.setAttribute("result", studentlist);//将查询结果保存到request对象中
        //转发到show.jsp显示查询结果
        request.getRequestDispatcher("ch08_9_show.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
