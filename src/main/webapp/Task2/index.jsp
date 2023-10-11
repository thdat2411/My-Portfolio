
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head >
    <meta charset ="utf-8">
    <title> Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head >
<body>
<img src="../Task2/cat_music.jpg" width="400" height="400">
<h1> List of albums</h1>
<p>
    <span>User Email: ${cookie.emailCookie.value}</span><br><br>
<table>
    <tr>
        <td><a href="download?action=checkUser&amp;productCode=MichealJackson">Micheal Jackson - Memorable Songs</a></td>
    </tr>
    <tr>
        <td><a href="download?action=checkUser&amp;productCode=Beethoven">Beethoven - Immortal Symphonies</a></td>
    </tr>
    <tr>
        <td><a href="download?action=checkUser&amp;productCode=pf02">Paddlefoot The Second CD</a></td>
    </tr>
    <tr>
        <td><a href="download?action=checkUser&amp;productCode=jr01">Joe Rut Genuine Wood Grained Finish</a></td>
    </tr>
</table>
</p>
</body>
</html>

