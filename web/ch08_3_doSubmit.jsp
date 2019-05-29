<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>用户注册：使用EL获取用户提交数据</title>
</head>
<body>
<h2>您提交的内容如下：</h2>
<% request.setCharacterEncoding("utf-8"); %>
姓名: ${param.name}<br/>
性别:${param.sex}<br>
外语:${param.lang}<br>
电话:${param.regTelephone}<br>
email:${param.email}<br>
个人简介:${param.intro}<br>
爱好:${paramValues.aihao[0]}&nbsp;${paramValues.aihao[1]}&nbsp;${paramValues.aihao[2]}
</body>
</html>
