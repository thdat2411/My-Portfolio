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
</head >
<body>
<div class="albums">
    <h1> Downloads</h1>
    <h2>The Weekend - After Hours</h2>
    <div class="voice-chat-card">
        <div class="voice-chat-card-header">
            <div class="username">Blinding Lights</div>
            <div class="status"></div>
        </div>
        <div class="voice-chat-card-body">
            <div class="audio-container">
                <audio controls>
                    <source type="audio/mpeg" src="../Task2/musicstore/${productCode}/Blinding_Lights.mp3">
                    Your browser does not support the audio element.
                </audio>
            </div>
        </div>
    </div>
    <div class="voice-chat-card">
        <div class="voice-chat-card-header">
            <div class="username">Save your tears</div>
            <div class="status"></div>
        </div>
        <div class="voice-chat-card-body">
            <div class="audio-container">
                <audio controls>
                    <source type="audio/mpeg" src="../Task2/musicstore/${productCode}/Save_your_tears.mp3">
                    Your browser does not support the audio element.
                </audio>
            </div>
        </div>
    </div>
    <div class="option_button">
        <button>
            <a href="download?action=viewAlbums" class="btn_view_cookie"><span class="spn2">View albums !</span></a>
        </button><br>

        <button>
            <a href="download?action=viewCookies" class="btn_view_cookie"><span class="spn2">View cookies !</span></a>
        </button>
    </div>
</div>

</body>
</html>

