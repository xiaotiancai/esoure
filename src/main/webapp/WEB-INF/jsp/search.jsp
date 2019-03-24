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
        #table-3{
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-bottom-color: rgb(235, 242, 224);
        }
       div{
           text-align: center; /*让div内部文字居中*/
           background-color: #fff;
           border-radius: 20px;
           width: 50%;
           height: 50%;
           margin: auto;
           position: absolute;
           top: 12px;
           left: 0;
           right: 0;
           bottom: 0;
           align:center;
       }
    </style>
</head>
<body>

<table align="center" border='0' cellspacing='2' width="72%" id="table-3">
    <c:forEach items="${book}" var="book" varStatus="st">
        <tr align="center">
         <td>书名：${book.bookname}</td>
        </tr>
       <tr align="center">
            <td>作者：${book.author}</td>
           <td>简介：${book.introduce}</td>
            <td>内容：${book.content}</td>
            <td>出版社：${book.press}</td>
            <td>价格：${book.price}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
