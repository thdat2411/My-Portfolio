<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="/lamon_war_exploded/Task1/main.css" type="text/css"/>
</head>

<body>
<img src="/lamon_war_exploded/Task1/sadcat.jpg" alt="JavaLogo" width="500">
<h1>Survey</h1>
<p>If you have a moment, we'd appreciate it if you fill out this survey</p>
<style>
    #yourinfo{
        color: brown;
    }
    #ques1{
        color: brown;
    }
    #ques2
    {
        color: brown;
    }
</style>
<h2 id = "yourinfo">Your information</h2>
<p style="color: red">${message}</p>
<form action="Response" method="post">
    <input type="hidden" name="action" value="add">

    <label>Email:</label>
    <input type="email" name="email" ><br>

    <label>First Name:</label>
    <input type="text" name="firstName" ><br>

    <label>Last Name:</label>
    <input type="text" name="lastName" ><br>

    <label>Date of birth:</label>
    <input  id="dob" type="date" name="birth"  hspace="8"><br>

    <h3 id="ques2">How did your hear about us?</h3>
    <input type="radio" name="hearAbout" value="Search engine" >Search engine
    <input type="radio" name="hearAbout" value="Word of mouth">Word of mouth
    <input type="radio" name="hearAbout" value="Social Media">Social Media</p>
    <h3 id ="ques1">Would you like to receive announcements about new CDs and special offers?</h3>
    <input type="checkbox" name="announcement" value="Yes,I'd like that">YES, I'd like that<br>
    <input type="checkbox" name="announcement" value="Yes,please send me email announcement">YES, please send me email announcements<br>


    Select a country:
    <select name="contact">
        <option value="Email">Email</option>
        <option value="Phone number" selected>Phone number</option>
        <option value="Facebook">Facebook</option>
    </select>
    <input type="submit" value="Submit" id="submit"><br>
</form>
<br><a href="/lamon_war_exploded"><button> Return to homepage</button></a>
</body>
</html>
