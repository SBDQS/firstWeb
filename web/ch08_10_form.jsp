<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/13
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单验证</title>
    <script type="text/javascript" src="ajax.js"></script>
    <script type="text/javascript">
        function formCheck() {
            var url = "FormCheckServlet";
            var params = "userId=" + uId.value + "&userPwd=" + uPwd.value;
            sendRequest(url,params,'POST',showResult);
        }
        function showResult() {
            if (httpRequest.readyState == 4) {
                if (httpRequest.status == 200) {
                    var info=httpRequest.responseText;
                    document.getElementById("result").innerHTML=info;
                }
            }
        }
    </script>
</head>
<body>
请输入用户名:<input type="text" name="userId" id="uId" onblur="formCheck()"><br>
请输入密码:<input type="password" name="userPwd" id="uPwd" ><br>
<input type="button" value="登录" onclick="formCheck()">
<div id="result"></div>
</body>
</html>
