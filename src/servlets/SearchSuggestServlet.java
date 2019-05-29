package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

/**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/5/13 19:11
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          19:11           1.0
 */
@WebServlet(name = "SearchSuggestServlet", urlPatterns = "/SearchSuggestServlet")
public class SearchSuggestServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/xml;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HashMap map = new HashMap();
        map.put("a", "<words><word>a</word><word>ab</word><word>abc</word><word>abcd</word><word>abcde</word></words>");
        map.put("ab", "<words><word>ab</word><word>abc</word><word>abcd</word><word>abcde</word></words>");
        map.put("abc", "<words><word>abc</word><word>abcd</word><word>abcde</word></words>");
        map.put("abcd", "<words><word>abcd</word><word>abcde</word></words>");
        map.put("abcde", "<words><word>abcde</word></words>");
        String inputWord = request.getParameter("inputWord");
        if (!map.containsKey(inputWord)) {
            out.println("<words></words>");
        } else {
            out.println(map.get(inputWord).toString());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
