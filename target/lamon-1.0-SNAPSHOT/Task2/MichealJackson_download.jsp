<%--
  Created by IntelliJ IDEA.
  User: thaid
  Date: 10/9/2023
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head >
    <meta charset ="utf-8">
    <title> Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head >
<body>
<h1> Downloads</h1>
<h2>Micheal Jackson - Immortal Piano Songs</h2>
<table>
    <tr>
        <th> Song title</th>
        <th> Audio Format</th>
    </tr>
    <tr>
        <td>Heal the world</td>
        <td>
            <a href="../Task2/musicstore/${productCode}/Heal the world.mp3"> MP3 </a>
        </td >
    </tr>
    <tr>
        <td> You are not alone</td>
        <td>
            <a href="../Task2/musicstore/${productCode}/You are not alone.mp3"> MP3 </a>
        </td>
    </tr>
</table>
</body>
</html>

