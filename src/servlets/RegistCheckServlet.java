package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/5/14 14:06
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          14:06           1.0
 */
@WebServlet(name = "RegistCheckServlet", urlPatterns = "/RegistCheckServlet")
public class RegistCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("userName");
        String userPwd1 = request.getParameter("userPwd1");
        String userPwd2 = request.getParameter("userPwd2");

        String pattern = "^[a-zA-Z]\\w{5}";
        String pattern2 = "^[0-9]\\d{5,9}";
        Pattern uName = Pattern.compile(pattern);
        Pattern uPwd = Pattern.compile(pattern2);
        Matcher m = uName.matcher(userName);
        Matcher m2 = uPwd.matcher(userPwd1);

        if (!m.find()) {
            out.print("用户名的格式是：字母开头，后跟字母或数字，长度至少6位");
        } else {
            if (!"".equals(userPwd1)) {
                if (!m2.find()) {
                    out.print("密码由数字组成，长度在6到10位之间!");
                } else {
                    if (!(userPwd1.equals(userPwd2))) {
                        out.print("两次输入的密码不相同！");
                    } else {
                        out.print("注册成功!");
                    }
                }
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
