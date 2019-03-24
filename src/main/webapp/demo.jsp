<%--
  Created by IntelliJ IDEA.
  User: 19509
  Date: 2018/8/17
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/jquery/jquery.min.js"></script>
    <style>
        div{
            margin: 0 auto;
            text-align: center;
            align:center;
        }
    </style>
    <script>
        $(document).ready(function(){
            $("#b01").click(function(){
                htmlobj=$.ajax({url:"/file/1.doc",async:false});
                $("#myDiv").html(htmlobj.responseText);
            });
        });
    </script>
</head>
<body>

<div>
<iframe src="index.jsp"  width="900" height="700" frameborder="0">asdasd</iframe>
</iframe>
</div>
<div id="myDiv"><h2>Let AJAX change this text</h2></div>
<button id="b01" type="button">Change Content</button>
</body>
</html>
