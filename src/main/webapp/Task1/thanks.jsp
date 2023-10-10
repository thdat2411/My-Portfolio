<%--
  Created by IntelliJ IDEA.
  User: thaid
  Date: 9/13/2023
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>

<body>
<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>Date of birth: </label>
<span>${user.dateofbirth}</span><br>
<label>How you know us: </label>
<span>${user.hearAbout}</span><br>
<label>Your choice: </label>
<span>${user.announcement}</span><br>
<label>Contact: </label>
<span>${user.contact}</span>
<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return"><br>
</form>
</body>
</html>
