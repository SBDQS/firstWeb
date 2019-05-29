<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/8
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交信息页面</title>
</head>
<body>
<form action="ch08_3_doSubmit.jsp" method="post">
    姓名 <input type="text" name="name"><br/>
    性别 <input type="text" name="sex"><br/>
    语言 <input type="text" name="lang"><br/>
    电话 <input type="text" name="regTelephone"><br/>
    邮件 <input type="text" name="email"><br/>
    简介<textarea rows="2" cols="30" name="intro"></textarea><br/><br>
    爱好：音乐<input type="checkbox" name="aihao" value="音乐"/>
    篮球<input type="checkbox" name="aihao" value="篮球"/>
    足球<input type="checkbox" name="aihao" value="足球"/><br/><br>
    <input type="submit" value="提交"/>&nbsp;<input type="reset" value="重置"/>
</form>
</body>
</html>
