<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/12
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
请输入用户名：<input type="text" id="userid" onblur="formcheck()">
请输入密码：<input type="password" id="password" name="userpwd">
<input type="button" value="注册" onclick="formcheck()">
<div id="result"></div>
</body>
</html>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
    function formcheck() {
        var url = "formcheck"
        var userid = document.getElementById("userid").value;
        var params = "userid=" + userid;
        sendRequest(url, params, 'POST', showresult)
    }

    function showresult() {
        if (httpRequest.readyState == 4) {
            if (httpRequest.status = 200) {
                var info = httpRequest.responseText;
                document.getElementById("result").innerHTML = info
            }
        }
    }
</script>
