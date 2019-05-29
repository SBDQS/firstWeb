<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/13
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择</title>
    <script type="text/javascript" src="ajax.js"></script>
    <script type="text/javascript">
        function refresh() {
            //与ch08_10_form.jsp中元素的值的获取方式进行比较
            var prov = document.getElementById("provId").value;//var p=provId.value;
            var city = document.getElementById("cityId").value;
            if (prov == "") {
                city.options.length = 0;
                city.options.add(new Option("--请选择城市--"));
            } else {
                var url = "ListServlet";
                var params = "prov=" + prov;
                sendRequest(url, params, 'POST', show);
            }
        }

        function show() {
            var city = document.getElementById("cityId");
            if (httpRequest.readyState == 4) {
                if (httpRequest.status == 200) {
                    var cityList = httpRequest.responseText.split(",");
                    var cityNum = cityList.length;
                    city.options.length = 0;
                    for (i = 0; i < cityNum; i++) {
                        city.options.add(new Option(cityList[i]));
                    }
                }
            }
        }
    </script>
</head>
<body>
<select name="prov" id="provId" onchange="refresh();">
    <option value="">--请选择省份--</option>
    <option value="山东">山东</option>
    <option value="江苏">江苏</option>
    <option value="广东">广东</option>
</select>
<select name="city" id="cityId">
    <option>--请选择城市--</option>
</select>
</body>
</html>
