<%--
  Created by IntelliJ IDEA.
  User: 19509
<%--
  Created by IntelliJ IDEA.
  User: 19509
  Date: 2018/8/10
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link rel="shortcut icon" href="static/imgs/favicon.ico">
    <title>欢迎来到易享</title>
    <link href="static/css/index.css" rel="stylesheet" type="text/css" />
    <link href="static/css/search.css" rel="stylesheet" type="text/css" />
    <style>
        body{
            font-family: "arial,sans-serif";
        }
    </style>
</head>
<body>
<div class="query">
    <br>
    <form action="search" method="get">
        &nbsp;&nbsp;<img height="36px" style="vertical-align: bottom" src="static/imgs/google.png">
        &nbsp;<input id="find" type="search" style="width: 44%;height: 45px;size: 50px" name="q" placeholder="书名|作者|内容|ISBN">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath}/upload.jsp" style="color: black;font-size:1em;font-family: Consolas">分享资源</a>
        &nbsp;&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath}/seek.jsp" style="color: black;font-size:1em;font-family: Consolas">寻资源</a>
        |
        <a href="${pageContext.request.contextPath}/solve" style="color: #d53535;font-size:1em;font-family: Consolas">我要解决</a>
        &nbsp;&nbsp;&nbsp;
        <a href="https://wj.qq.com/s/2357242/f8a0" style="color: black;font-size:1em;font-family: Consolas">建议及反馈</a>
        <%--
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img height="22px" style="vertical-align: middle" src="static/imgs/qq.jpg">:719383495
    --%>
    </form>
</div>
<br>
<div class="outblock">
<c:forEach items="${seek}" var="seek" varStatus="st">
    <div id="block" style="font-family: 'Times New Roman'">
        <%--
        <form id="width" action="info" method="get">
            <input type="hidden" name="isbn" value="${book.isbn}"><input id="btn" style="color: #1a0dab;font-size: 17px" value="${book.bookname}" type="submit">
        </form>
        --%>
            <%--
            <div id="left">
               <img height="100%" width="100%" src="static/imgs/doc.jpg">
    </div>
    --%>

            <%--<div id="right"> --%>
        <span style="font-size: 16px;color: #1a0dab;font-family: 新宋体;font-weight: bold">易寻主:${seek.name1}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:13.33px;color: #f50a08;font-family: 'Times New Roman'">出价:</span>
            <span style="font-size:15px;color: #f50a08;font-family: 'Times New Roman'">${seek.price1}￥</span>
    <br>
            &nbsp;
            <span style="font-family: 'Times New Roman';font-size:12.66px;color: #000000;">联系方式:</span>
            <span style="font-family: 'Times New Roman';font-size:14px;color: #525252">${seek.email1}</span>
            <br> &nbsp; &nbsp;
        <span  style="font-family: Calibri;color: #006621;font-size: 14.66px">资源名:${seek.bookname1}</span><br>
        <span style="font-size: 13.66px;color: rgba(127,127,127,0.99);font-family: Consolas">详细内容:${seek.content1}</span><br>
            <br>
        <span style="font-size: 12.66px;font-family: 'Times New Roman'">创建时间</span>
            <span style="font-size: 14px;font-family: 'Times New Roman'">:${seek.time1}</span>
            &nbsp;&nbsp;&nbsp;&nbsp;

            <%--</div>--%>
    </div>
</c:forEach>
</div>
<script type="text/javascript" src="static/js/prevent.js"></script>
</body>
</html>
