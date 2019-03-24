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
        <a href="https://wj.qq.com/s/2357242/f8a0" style="color:black;font-size:1em;font-family: Consolas">建议及反馈</a>
        <%--
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img height="22px" style="vertical-align: middle" src="static/imgs/qq.jpg">:719383495
    --%>
    </form>
</div>
<br>
<script type="text/javascript" src="static/js/prevent.js"></script>
<div class="outblock">
<c:forEach items="${book}" var="book" varStatus="st">

           <div id="block" style="font-family: 'Times New Roman'">
               <form id="width" action="" method="get">
                   <span style="font-size: 13px;vertical-align: top;font-weight: bold;color: #1a0dab">[${book.type}]</span>
                   <input type="hidden" name="isbn" value="${book.isbn}"><input id="btn" style="color: #1a0dab;font-size: 16px" value="${book.bookname}" type="submit">
                   &nbsp;&nbsp;</span><a style="font-size: 12px;vertical-align: top;font-family: Consolas;color: rgba(245,10,8,0.98)" href="/file/${book.bookname}${book.year}.${book.type}">点我下载</a>

               </form>
               <span style="font-size: 15px;color: #006621;outline: none"><a style="color: #006621" href="#">http://yixiang/info?isbn=${book.isbn}</a></span>
               <br>
                   <%--
                   <div id="left">
                      <img height="100%" width="100%" src="static/imgs/doc.jpg">
           </div>
           --%>
    <%--<div id="right"> --%>
               <span style="font-size: 13px;color: #1a0dab">${book.author}</span>&nbsp;<span style="font-family: Consolas;font-size: 12.66px;color: #828180">著</span>&nbsp;&nbsp;<span style="color: #949392;font-size: 14px">-${book.year}-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px;color: #f50a08;font-family: 'Times New Roman'">${book.price}￥</span><br>
               <span style="font-family: 'Times New Roman';font-size:12px;color: #828180">上传时间：${book.time}<br>
<span style="font-size: 12.66px;color: rgba(0,0,0,0.99)">${book.content}</span><br>
   <span style="font-size: 14px">ISBN:${book.isbn}</span>&nbsp;&nbsp;&nbsp;&nbsp;
   <span style="font-size: 14px">${book.press}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%--</div>--%>
 </div>
 </c:forEach>
</div>
 </body>
 </html>
