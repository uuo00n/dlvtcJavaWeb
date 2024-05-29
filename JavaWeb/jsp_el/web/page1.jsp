<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/29
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
<h2>EL表达式</h2>
<table border="1">
    <tr>
        <th><b>说明</b></th>
        <th><b>EL表达式</b></th>
        <th><b>运算结果</b></th>
    </tr>
    <tr>
        <td>取余</td>
        <td>\${10%4}</td>
        <td>${10%4}</td>
    </tr>
    <tr>
        <td>条件求值</td>
        <td>\${(1==2)?3:4}</td>
        <td>${(1==2)?3:4}</td>
    </tr>
</table>
<hr>
<h2>EL表达式访问集合元素</h2>
<%
    String[] array = {"数组元素1", "数组元素2"};
    ArrayList<String> list = new ArrayList<>();
    list.add("集合元素1");
    list.add("集合元素2");
    HashMap<String, String> map = new HashMap<String, String>();
    map.put("first", "map元素1");
    map.put("second", "map元素2");

    request.setAttribute("array", array);
    request.setAttribute("list", list);
    request.setAttribute("map", map);
    session.setAttribute("map", map);
%>
<ul>
    <li>${array[0]}</li>
    <li>${list[1]}</li>
    <li>${map["first"]}</li>
    <li>${sessionScope.map["first"]}</li>
</ul>
<hr>
<h2>EL表达式访问表单参数</h2>
<form action="page2.jsp">
    姓名：<input type="text" name="name"><br>
    爱好：<input type="checkbox" name="hobby" value="说唱">说唱
    <input type="checkbox" name="hobby" value="滑板">滑板
    <input type="checkbox" name="hobby" value="游戏">游戏
    <br>
    <input type="submit" value="提交">&nbsp;
    <input type="reset" value="重置">
</form>
</form>
</body>
</html>
