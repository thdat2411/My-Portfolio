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
<head>
    <meta charset ="utf-8">
    <title> Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head>
<body>
<h1> Download registration</h1>
<p>To register for our downloads, enter your name and email
address below. Then, click on the Submit button.</p>
<form action="download" method="post">
    <input type="hidden" name="action" value="registerUser">
    <label class="pad_top"> Email:</label>
    <input type="email" name="email" ><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" ><br>
    <label class="pad_top"> Last Name:</label>
    <input type="text" name="lastName"><br>
    <label>&nbsp;</label>
    <input type="submit" values="Register" class="margin_left">
</form>
</body>
</html>
