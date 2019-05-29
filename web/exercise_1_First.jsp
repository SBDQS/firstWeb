<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/13
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="exercise_1_Second.jsp">
请输入用户名:<input type="text" name="userId" id="uId" value="${requestScope.userName}" <%--onblur="formCheck()"--%>><br>
请输入密码:<input type="password" name="userPwd" id="uPwd"><br>

<input type="submit" value="登录" ><br>
${requestScope.errorMess}
</form>
</body>
</html>
