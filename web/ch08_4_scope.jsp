<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL对作用域内属性的访问</title>
</head>
<body>
<%
    pageContext.setAttribute("a", "page");
    request.setAttribute("a", "request");
    session.setAttribute("a", "session");
    application.setAttribute("a", "application");
%>
页面范围a值：${pageScope.a }<br/>
请求范围a值：${requestScope.a }<br/>
会话范围a值：${sessionScope.a }<br/>
应用范围a值：${applicationScope.a }<br/>
不加范围a值：${a }<br/>
</body>
</html>
