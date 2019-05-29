<%@ page import="beans.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/9
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
显示结果(用EL和JSTL)<br/>
<table border="1">
    <tr><th>学号</th><th>姓名</th><th>性别</th></tr>
    <c:forEach var="student" items="${result}">
        <tr><td>${student.sno}</td><td>${student.sname}</td><td>${student.sex}</td></tr>
    </c:forEach>
</table>

<hr/>查询显示结果(用代码)<br/>
<% List<Student> studentlist=(List<Student>)request.getAttribute("result"); %>
<table border="1">
    <tr><th>学号</th><th>姓名</th><th>性别</th></tr>
    <%  for(Student student:studentlist){%>
    <tr><td><%=student.getSno()%></td>
        <td><%=student.getSname()%></td>
        <td><%=student.getSex()%></td></tr>
    <%} %>
</table>
</body>
</html>
