<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/9
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<h4>循环次数控制</h4>
<c:forEach var="item" begin="1" end="10" step="3">
    ${item}&nbsp;
</c:forEach>
<h4>枚举Vector元素</h4>
<%
    Vector v = new Vector();
    v.add("陈龙");
    v.add("邓萍");
    v.add("余洋");
    v.add("北京2008");
    pageContext.setAttribute("vector", v);
%>
<c:forEach var="item" items="${vector}">
    ${item}&nbsp;
</c:forEach>
<h4>逗号分隔的字符串</h4>
<c:forEach var="color" items="红,橙,黄,蓝,黑,绿,紫,粉红,翠绿" begin="2" step="2">
    <c:out value="${color}"></c:out>
    &nbsp;
    ${color}
</c:forEach>
<h4>状态量的使用</h4>
<c:forEach var="i" begin="10" end="50" step="5" varStatus="status">
    <c:if test="${status.first}">
        begin:<c:out value="${status.begin}"/>&nbsp;&nbsp;
        end:<c:out value="${status.end}"/>&nbsp;&nbsp;
        step:<c:out value="${status.step}"/><br>
        <c:out value="输出的元素"/>
    </c:if>
    <c:out value="${i}"/>
    <c:if test="${status.last}">
        <br>总共输出<c:out value="${status.count}"/>个元素
    </c:if>
</c:forEach>
</body>
</html>
