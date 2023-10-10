
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head >
    <meta charset ="utf-8">
    <title> Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head >
<body>
<h1> List of albums</h1>
<p>
    <span>User Email: ${cookie.emailCookie.value}</span><br><br>
    <a href="download?action=checkUser&amp;productCode=MichealJackson">Micheal Jackson - Memorable Songs</a><br><br>
    <a href="download?action=checkUser&amp;productCode=Beethoven">Beethoven - Immortal Symphonies</a><br><br>
    <a href="download?action=checkUser&amp;productCode=pf02">Paddlefoot The Second CD</a><br><br>
    <a href="download?action=checkUser&amp;productCode=jr01">Joe Rut Genuine Wood Grained Finish</a>
</p>
</body>
</html>

