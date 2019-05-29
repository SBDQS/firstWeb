<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/14
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册表单验证</title>
    <script type="text/javascript" src="ajax.js"></script>
    <script type="text/javascript">
        function formCheck() {
            var url = "RegistCheckServlet";
            //document.getElementById("uId").value;该方式获取页面元素应用范围更广
            var uid=document.getElementById("uId").value;
            var params = "userName=" + uid + "&userPwd1=" + uPwd1.value + "&userPwd2=" + uPwd2.value;
            sendRequest(url, params, 'POST', showResult);
        }
        function showResult() {
            if (httpRequest.readyState == 4) {
                if (httpRequest.status == 200) {
                    var info=httpRequest.responseText;
                    document.getElementById("result").innerHTML = info;
                }
            }
        }
    </script>
</head>
<body>
请输入用户名:<input type="text" name="userId" id="uId" onblur="formCheck()"><br>
请输入密码:<input type="password" name="userPwd1" id="uPwd1" onblur="formCheck()"><br>
请确认密码:<input type="password" name="userPwd2" id="uPwd2" onblur="formCheck()"><br>
<input type="button" value="登录" onclick="formCheck()">
<div id="result"></div>
</body>
</html>
