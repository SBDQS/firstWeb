<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/9
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用EL访问JavaBean属性</title>
</head>
<body>
<jsp:useBean id="BookBean" class="beans.BookBean" scope="session"/>
<%	//通过常规方法访问JavaBean的属性
    int BId = BookBean.getBookid();
    BookBean.setBookid(1002);
    String BName = BookBean.getBookname();
    BookBean.setBookname("Java Web开发应用教程");
%>
<!--通过EL存取运算符访问JavaBean的属性-->
书号：${BookBean.bookid}<br>
书名：${BookBean.bookname}<br>
作者：${BookBean.author}<br>
出版社：${BookBean["publisher"]}<br>
${BookBean.publisher}<br>
价格：${BookBean.price}<br>

</body>
</html>
