<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>

<h1>Cookies</h1>

<p>Here's a table with all of the cookies that this
  browser is sending to the current server.</p>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<button>
  <a href="download?action=viewAlbums" class="btn_view_cookie"><span class="spn2">View albums !</span></a>
</button><br>

<button>
  <a href="download?action=deleteCookies" class="btn_view_cookie"><span class="spn2">Delete cookies !</span></a>
</button>
</body>
</html>