<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式语言运算</title>
</head>
<body>
<center>
    <h2>EL表达式语言运算</h2><hr/>
    <table border="1">
        <tr><th><b>说明</b></th><th><b>EL 表达式</b></th>
            <th><b>运算结果</b></th></tr>
        <tr><td>加</td><td>\${1 + 2}</td><td>${1 + 2}</td></tr>
        <tr><td>减</td><td>\${-4 - 2}</td><td>${-4 - 2}</td></tr>
        <tr><td>除</td><td>\${3 div 4}</td><td>${3 div 4}</td></tr>
        <tr><td>取余</td><td>\${10%4}</td><td>${10%4}</td></tr>
        <tr><td>条件求值</td><td>\${(1==2) ? 3 : 4}</td><td>${(1==2) ? 3 : 4}</td></tr>
        <tr><td>数字-大于</td><td>\${1 gt 2}</td><td>${1 gt 2}</td></tr>
        <tr><td>字符-不等于</td><td>${'${'}'abe' ne 'ade'}</td>

            <td>${'abe' ne 'ade'}</td></tr>
        <tr><td>与</td><td>${'${'}true and true}</td><td>${true and true}</td></tr>
        <tr><td>或</td><td>${'${'}true || false}</td><td>${true || false}</td></tr>
        <tr><td>空判断</td><td>${'${'}not true}</td><td>${not true}</td></tr>
        <tr><td>空判断</td><td>\${empty "2008"}</td><td>${empty "2008"}</td></tr>
        <tr><td>空判断</td><td>\${empty null}</td><td>${empty null} </td></tr>
    </table>
</center>
</body>
</html>
