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
    <title>欢迎来到飞锐</title>
    <style>
        #table-3 thead, #table-3 tr {
            border-top-width: 1px;
            border-top-style: solid;
            border-top-color: rgb(235, 242, 224);
        }
        #table-3 {
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-bottom-color: rgb(235, 242, 224);
        }

        /* Padding and font style */
        #table-3 td, #table-3 th {
            padding: 5px 10px;
            font-size: 12px;
            font-family: Verdana;
            color: rgb(149, 170, 109);
        }

        /* Alternating background colors */
        #table-3 tr:nth-child(even) {
            background: rgb(230, 238, 214)
        }
        #table-3 tr:nth-child(odd) {
            background: #FFF
        }
    </style>
</head>
<body>

<table align="center" border='0' cellspacing='2' width="72%" id="table-3">
    <tr align="center">
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">书名</td>
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">作者</td>
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">简介</td>
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">内容</td>
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">出版社</td>
        <td style="font-family: Calibri;color: #1c1c1c;font-size: 16px">价格</td>
    </tr>
    <tr>

    </tr>

    <c:forEach items="${book}" var="book" varStatus="st">

    <tr align="center">
        <td>${book.bookname}</td>
        <td>${book.author}</td>
        <td>${book.introduce}</td>
        <td>${book.content}</td>
        <td>${book.press}</td>
        <td>${book.price}</td>
    </tr>

        </c:forEach>

</table>
</body>
</html>
