<html>
<head >
    <meta charset ="utf-8">
    <title> Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head>
<body>
<div class="register-container">
    <div class="form_area">
        <p class="title">SIGN UP</p>
        <form action="download" method="post">
            <input type="hidden" name="action" value="registerUser">
            <div class="form_group">
                <label class="sub_title">First Name</label>
                <input placeholder="Enter your first name" class="form_style" type="text" name="firstName">
            </div>
            <div class="form_group">
                <label class="sub_title">Last Name</label>
                <input placeholder="Enter your last name"  class="form_style" type="text" name="lastName">
            </div>
            <div class="form_group">
                <label class="sub_title">Email</label>
                <input placeholder="Enter your email" class="form_style" type="email" name="email">
            </div>
            <input type="submit" value="Let`s go &#8594" class="btn_register">
        </form>
    </div>
</div>
</body>
</html>