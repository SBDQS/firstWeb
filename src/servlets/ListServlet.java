package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/5/13 17:32
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          17:32           1.0
 */
@WebServlet(name = "ListServlet", urlPatterns = "/ListServlet")
public class ListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> pm = new HashMap<>();
        pm.put("山东", "济南,青岛,泰安,潍坊,烟台,聊城,枣庄,菏泽,莱芜,临沂");
        pm.put("江苏", "南京,苏州,无锡,徐州,南通,连云港,镇江,常州,淮安,扬州");
        pm.put("广东", "广州,深圳,珠海,汕头,佛山,东莞,湛江,江门,中山,惠州");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String s1 = request.getParameter("prov");
        out.print(pm.get(s1));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
