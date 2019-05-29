<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/13
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userName = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    request.setAttribute("userName", userName);
    String err = "用户名或密码错误!";
    request.setAttribute("errorMess", err);
    if (userName.equals("abc") && userPwd.equals("123")) {
        request.getRequestDispatcher("exercise_1_Third.jsp").forward(request, response);
    } else {
//        response.getWriter().write("<script>用户名或密码错误('fail')</script>");
//        response.sendRedirect("exercise_1_First.jsp");
        request.getRequestDispatcher("exercise_1_First.jsp").forward(request, response);
    }
%>
</body>
</html>
