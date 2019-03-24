<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 19509
  Date: 2018/8/13
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" href="static/imgs/favicon.ico">
    <title>欢迎来到易享</title>
    <link href="static/css/upload.css" rel="stylesheet" type="text/css" />
</head>
<div id="content">
<form action="insert1" method="get">
    <br>
    <span style="color: red;font-size: 14px">赶快输入以下信息让易享人帮你吧</span>
    <hr />
    <input  name="bookname1"  placeholder="书名|资源名|All" type="text">
    <input  name="content1"  placeholder="详细内容" type="text">
    <input  name="name1"  placeholder="称呼" type="text">
    <input  name="email1"  placeholder="邮箱|联系方式" type="text" >
    <input  name="price1"  placeholder="出价" type="text" >
    <input  name="time1"  type="hidden" value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>" >
    <input  value="提交" type="submit">
</form>
</div>
<script type="text/javascript" src="static/js/prevent.js"></script>
</body>
</html>
