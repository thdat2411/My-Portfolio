<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="../Task2/main.css" type="text/css"/>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="albums-cookies">
  <h1>Cookies</h1>

  <p>Here's a table with all of the cookies that this
    browser is sending to the current server.</p>
<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">
    <tr>
      <td>${c.value.name}</td>
      <td>${c.value.value}</td>
    </tr>
  </c:forEach>
</table>
<div class="option_button">
<button>
  <a href="download?action=viewAlbums" class="btn_view_cookie"><span class="spn2">View albums !</span></a>
</button>
<button>
  <a href="download?action=deleteCookies" class="btn_view_cookie"><span class="spn2">Delete cookies !</span></a>
</button>
</div>
</div>
</body>
</html>