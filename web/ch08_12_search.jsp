<%--
  Created by IntelliJ IDEA.
  User: niko
  Date: 2019/5/13
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Suggest</title>
    <script type="text/javascript" src="ajax.js"></script>
    <script type="text/javascript">
        var trSrc;
        function search(){

            var inputWord = document.getElementById('inputWord').value;
            var url="SearchSuggestServlet";
            var params = 'inputWord='+inputWord;
            sendRequest(url,params,'POST',display);

        }
        function display(){
            if (httpRequest.readyState == 4) {
                if (httpRequest.status == 200) {
                    var xmlDoc = httpRequest.responseXML;
                    clearDivData();
                    changeDivData(xmlDoc);
                } else { //页面不正常
                    alert("您请求的页面有异常");
                }
            }
        }

        //清除下拉提示框中已有的数据
        function clearDivData(){
            var tbody = document.getElementById('wordsListTbody');
            var trs = tbody.getElementsByTagName('tr');
            for(var i=trs.length-1;i>=0;i--){
                tbody.removeChild(trs[i]);
            }
        }


        //实际将数据加入下拉提示框
        function changeDivData(xmlDoc){
            var words = xmlDoc.getElementsByTagName('word');;
            var tbody = document.getElementById('wordsListTbody');
            for(i=0;i<words.length;i++){
                var newTr = document.createElement('tr');
                var newCell = document.createElement('td');
                var wordText=words[i].firstChild.data;
                var textNode = document.createTextNode(wordText);
                newCell.onmouseover=function(){
                    //设置用户选中条目的背景色
                    if(trSrc){
                        trSrc.style.backgroundColor="white";
                    }
                    trSrc=this;
                    trSrc.style.backgroundColor="gray";
                };
                newCell.onclick=setText;
                newCell.appendChild(textNode);
                newTr.appendChild(newCell);
                tbody.appendChild(newTr);
            }
            if(words.length>0){
                document.getElementById('wordsListDiv').style.visibility='visible';
            }else{
                document.getElementById('wordsListDiv').style.visibility='hidden';
            }
        }

        //将用户选中条目显示在文本框中
        function setText(){
            document.getElementById('inputWord').value=trSrc.firstChild.data;
            document.getElementById('wordsListDiv').style.visibility="hidden";

        }

        //设置下拉提示框的位置
        function setDivPosition(){
            var input = document.getElementById('inputWord');
            var listdiv = document.getElementById('wordsListDiv');
            listdiv.style.left=(input.offsetLeft)+'px';
            listdiv.style.border='blue 1px solid';
            listdiv.style.top=(input.offsetTop+input.offsetHeight ) + 'px' ;
            listdiv.style.width=input.offsetWidth+'px';
        }
    </script>
</head>
<body  onload="setDivPosition()">
<p>搜索字符串:<input type="text" id="inputWord" onKeyUp="search()"/></p>
<div id="wordsListDiv" style="position:absolute;visibility:hidden">
    <table id="wordsListTable">
        <tbody id="wordsListTbody"><tr><td>test</td></tr></tbody>
    </table>
</div>
</body>
</html>
