<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 这是一个HTML的注释，这浏览器查看源代码可以看到 -->
<%-- 这是一个JSP的隐藏注释，在浏览器查看源代码不可见 --%>

<!-- 声明成员变量 -->
<%!
int a,b,c;
    double d = 6.0;
    Date date = new Date();
    String str = "我爱我的祖国!";
%>

<!-- 声明成员方法 -->
<%!
    int multiplication(int x,int y){
        return x*y;
    }
%>

<!-- 使用表达式显示信息 -->
<%=str %> <br>
<%=multiplication(2,5)%>

<!-- 使用Java代码实现功能 -->
<h3>直角三角形的形式显示数字</h3>
<%
    for(int i=1;i<10;i++){
        for(int j=1;j<=i;j++){
            out.print(j+"   ");  //out是内置JSP的内置对象，在这里用于输出信息
        }
        out.println("<br/>");
    }
%>
<h3>根据随机产生的数据的不同，显示不同的问候</h3>
<%
    if(Math.random()<0.5){  %>
Have a <b>nice</b> day!
<%    }else { %>
Have a <b>happy</b> day!
<%}%>
</body>
</html>
