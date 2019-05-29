<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL initParam对象</title>
</head>
<body>
<b>web应用上下文初始参数：</b><p/>
<!--下面两行输出同样结果-->
<%=application.getInitParameter("book")%><br>
${initParam.book}
</body>
</html>
