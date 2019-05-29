<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>访问集合中的元素</title>
</head>
<body>
<%
    String[] fistNames = {"龙", "萍", "杨"};
    ArrayList<String> lastName = new ArrayList<>();
    lastName.add("陈");
    lastName.add("邓");
    lastName.add("于");
    HashMap<String, String> roleNames = new HashMap<>();
    roleNames.put("volunteer", "志愿者");
    roleNames.put("missionary", "工作人员");
    roleNames.put("athlete", "运动员");

    request.setAttribute("fName", fistNames);
    request.setAttribute("lName", lastName);
    request.setAttribute("role", roleNames);
%>
<h>EL访问集合</h>
<ul>
    <li>${lName[0]}${fName[0]}:${role["volunteer"]}</li>
    <li>${lName[1]}${fName[1]}:${role["missionary"]}</li>
    <li>${lName[2]}${fName[2]}:${role["athlete"]}</li>
</ul>
</body>
</html>
