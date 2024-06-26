<%--
  Created by IntelliJ IDEA.
  User: Viking
  Date: 2022/12/14
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  // check if the user is logged in
    if (session.getAttribute("adminUserBean") != null) {
        response.setHeader("refresh", "0;url=" + request.getContextPath() + "/admin/index.jsp");
    }
%>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="assets/css/layui.css">
  <link rel="stylesheet" href="assets/css/login.css">
  <link rel="icon" href="/favicon.ico">
  <title>管理后台</title>
</head>
<body class="login-wrap">
<div class="login-container">
  <form class="login-form" action="AdminLoginServlet" method="post">
    <span class="label-title">${errormsg}</span>
    <div class="input-group">
      <input type="text" id="username" class="input-field" name="username">
      <label for="username" class="input-label">
        <span class="label-title">用户名</span>
      </label>
    </div>
    <div class="input-group">
      <input type="password" id="password" class="input-field" name="password">
      <label for="password" class="input-label">
        <span class="label-title">密码</span>
      </label>
    </div>
    <button type="submit" class="login-button">登录<i class="ai ai-enter"></i></button>
  </form>
</div>
</body>
<script src="assets/layui.js"></script>
<script src="index.js" data-main="login"></script>
</html>
<%
    // remove attribute
    session.removeAttribute("errormsg");
%>
