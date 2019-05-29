package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/5/13 16:15
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          16:15           1.0
 */
@WebServlet(name = "FormCheckServlet",urlPatterns = "/FormCheckServlet")
public class FormCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String userid=request.getParameter("userId");
        if(!"张三".equals(userid)){
            out.print("用户名不存在");
        }
        else{
            String userpwd=request.getParameter("userPwd");
            if(!"".equals(userpwd)){
                if("123".equals(userpwd))
                    out.print("欢迎您");
                else
                    out.print("密码错误");
            }

        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
