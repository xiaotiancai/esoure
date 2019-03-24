<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 19509
  Date: 2018/8/12
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到易享</title>
    <link href="static/css/upload.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="static/imgs/favicon.ico">
</head>
<body>
<div id="content">
<span style="color: red;text-align: center;font-family: Consolas;font-size: 14.66px">以下信息可重新输入|点击提交后-->>上传文件即可</span><br>
    <span style="color: #1ab55c;text-align: center;font-family: Consolas;font-size: 16px">文件名形式为文档名+出版年份(例如:易享生活20190521.pdf|50M以内)</span>
    <hr />
<form action="insert" method="get">
   <input  name="bookname"  placeholder="书名" type="text" value="易享生活" autocomplete="off">
    <input name="author"  placeholder="作者" type="text" value="易享" autocomplete="off">
      <input  name="content"  placeholder="部分内容" value="易享邀您一起分享" type="text" autocomplete="off">
     <input name="isbn"  placeholder="ISBN" value="000-0-0000-0000-0" type="text" autocomplete="off">
    <input name="year"  placeholder="出版年份" value="20190521" type="text" autocomplete="off">
    <input name="press"  placeholder="出版社" value="易享出版社" type="text" autocomplete="off">
    <input name="price"  placeholder="价格" type="text" value="0.00" autocomplete="off">

       <div id="select"><select id="dropdown" name="type">
           <option style="text-align: center" value="pdf">pdf</option>
           <option style="text-align: center" value="doc">doc</option>
           <option style="text-align: center" value="docx">docx</option>
           <option style="text-align: center" value="xlsx">xlsx</option>
           <option style="text-align: center" value="xls">xls</option>
           <option style="text-align: center" value="txt">txt</option>
           <option style="text-align: center" value="rar">rar</option>
           <option style="text-align: center" value="zip">zip</option>
           <option style="text-align: center" value="7z">7z</option>
           <option style="text-align: center" value="jpg">jpg</option>
           <option style="text-align: center" value="png">png</option>
           <option style="text-align: center" value="exe">exe</option>
           <option style="text-align: center" value="mp3">mp3</option>
           <option style="text-align: center" value="mp4">mp4</option>
           <option style="text-align: center" value="mov">mov</option>
           <option style="text-align: center" value="wmv">wmv</option>
           <option style="text-align: center" value="avi">avi</option>


       </select>
       </div>
    <input  name="time"  type="hidden" value="<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>" >

    <input type="submit">
</form>
</div>
<form method="post" action="query" enctype="multipart/form-data">
    <div id="content1">
    <input type="file" name="file" />
    <input type="submit" value="上传" />
    </div>
</form>
<script type="text/javascript" src="static/js/prevent.js"></script>
</body>
</html>
