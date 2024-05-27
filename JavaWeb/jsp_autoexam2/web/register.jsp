<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/5/27
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 500px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        input[type="text"], input[type="password"], select, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #6f48f6;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
        }

        .button-container {
            text-align: center;
        }
    </style>
</head>
<body>
<form action="register" method="post" onsubmit="return verify();">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" id="username" name="username"><span id="username-error" class="error-message"></span>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" id="password" name="password"><span id="password-error"
                                                                           class="error-message"></span></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <input type="radio" id="male" name="gender" value="男"> 男
                <input type="radio" id="female" name="gender" value="女"> 女
            </td>
        </tr>
        <tr>
            <td>专业方向：</td>
            <td><select name="major">
                <option value="软件测试">软件测试</option>
                <option value="软件工程">软件工程</option>
                <option value="架构设计">架构设计</option>
                <option value="网络安全">网络安全</option>
                <option value="移动应用开发">移动应用开发</option>
            </select></td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td>
                <input type="checkbox" name="hobbies" value="滑板"> 滑板
                <input type="checkbox" name="hobbies" value="说唱"> 说唱
                <input type="checkbox" name="hobbies" value="游戏"> 游戏
                <input type="checkbox" name="hobbies" value="篮球"> 篮球
            </td>
        </tr>
        <tr>
            <td>个人简介：</td>
            <td><textarea name="profile" rows="4" cols="50" maxlength="100" placeholder="限制100字以内"></textarea></td>
        </tr>
        <tr>
            <td class="button-container" colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>

<script type="text/javascript">
    function verify() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var usernameRegex = /[\u4e00-\u9fa5]{2,}/;

        var usernameError = document.getElementById("username-error");
        var passwordError = document.getElementById("password-error");

        usernameError.innerHTML = "";
        passwordError.innerHTML = "";

        if (!username) {
            usernameError.innerHTML = "用户名不能为空！";
            return false;
        } else if (!usernameRegex.test(username)) {
            usernameError.innerHTML = "用户名必须包含两个汉字或更多汉字！";
            return false;
        }

        if (!password) {
            passwordError.innerHTML = "密码不能为空！";
            return false;
        } else if (password.length < 6) {
            passwordError.innerHTML = "密码长度不能少于6位字符！";
            return false;
        }

        return true;
    }
</script>
</body>
</html>