<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
    <title>欢迎来到易享</title>
    <link href="static/js/prevent.js">
    <link href="static/css/index.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="static/imgs/favicon.ico">
</head>
<body>
<div id="img">
    <img width="270px" src="static/imgs/g.png">
</div>
<script type="text/javascript" src="static/js/prevent.js"></script>
<div id="search">
    <form action="search" method="get">
    <input id="find" type="search" style="width: 42%;height: 45px" name="q" placeholder="书名|作者|内容|ISBN">
        <a href="${pageContext.request.contextPath}/qixi.jsp"><img height="45px" style="vertical-align: middle" src="static/imgs/qixi.png"></a>
    </form>
</div>
</body>

</html>
