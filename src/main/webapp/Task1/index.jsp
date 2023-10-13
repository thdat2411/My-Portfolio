
<%@ include file="/Task1/includes/header.html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>
<c:choose>
<c:when test="${empty notify}">
<img src="../Task1/sadcat.jpg" alt="JavaLogo" width="400">
    <h2>I'm crying, help me to do the right form. Many Thanks :(</h2>
</c:when>
<c:otherwise>
<img src="${notify}" alt="JavaLogo" width="400">
    <h2>Thanks for helping <3</h2>
</c:otherwise>
</c:choose>

<div class="login-box">
    <h1>Survey</h1>
    <p>If you have a moment, we'd appreciate it if you fill out this survey</p>
    <h1>Your Information</h1>
    <form action="Response" method="post">
        <input type="hidden" name="action" value="add">
        <p style="color: red">${message}</p>
        <div class="user-box">
            <div class="user-box1">
                <input value="" name="firstName" type="text" placeholder="">
                <label>First Name</label>
            </div>
            <div class="user-box2">
                <input value ="" name="lastName" type="text" placeholder="">
                <label>Last Name</label>
            </div>
        </div>
        <div class="user-box">
            <div class="user-box1">
                <input name="email" type="email" placeholder="">
                <label>Email</label>
            </div>
            <div class="user-box2">
                <input name="birth" type="date" placeholder="">
                <label>Date</label>
            </div>
        </div>
        <div class="howabout">
            <h3 id="howabout">How did your hear about us?</h3>
            <input type="radio" name="hearAbout" value="Search engine" >Search engine
            <input type="radio" name="hearAbout" value="Word of mouth">Word of mouth
            <input type="radio" name="hearAbout" value="Social Media">Social Media</p>
        </div>
        <div class="contact">
            <h3 id ="contact">Would you like to receive announcements about new CDs and special offers?</h3>
            <input type="checkbox" name="announcement" value="Yes,I'd like that">YES, I'd like that<br>
            <input type="checkbox" name="announcement" value="Yes,please send me email announcement">YES, please send me email announcements<br>
        </div><br>
        <div class="country">
            Contact via:
            <select name="contact">
                <option value="Email">Email</option>
                <option value="Phone number" selected>Phone number</option>
                <option value="Facebook">Facebook</option>
            </select>
        </div>
        <div class="btn_submit_return">
            <a href="../" target="_self" class="btn">Return to home</a>
            <input type="submit" value="Submit" class="btn">
        </div>

    </form>
</div>
</body>

</html>
