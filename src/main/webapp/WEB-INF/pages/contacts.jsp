<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 10.03.2016
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Climate Control System</title>
    <link rel="stylesheet" href=<c:url value = "/resourses/libs/font-awesome-4.5.0/css/font-awesome.min.css"/> />
    <link rel="stylesheet" href=<c:url value = "/resourses/libs/reset.css"/> />
    <link rel="stylesheet" href=<c:url value="/resourses/libs/960_12_col.css" /> />
    <link rel="stylesheet" href=<c:url value = "/resourses/css/style-contacts.css"/> />
    <link rel="shortcut icon" href=<c:url value="/resourses/favicon.ico" /> />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css' />
</head>
<body>
<header>
    <div class="cloud"><i class="fa fa-cloud"></i></div>
    <h1 class="logo"><a href="main">Climate Control System</a></h1>
    <div class="me">Design by Ivan Lipinskyi</div>
</header>

<nav>
    <div class="menu">
        <ul>
            <li><a href="main"><i class="fa fa-file-o"></i> Homepage</a></li>
            <li><a href="/resourses/description.pdf"><i class="fa fa-info-circle"></i> About System</a></li>
            <li><a href="contacts"><i class="fa fa-phone-square"></i> Contact US</a></li>
            <li><a href="settings"><i class="fa fa-cogs"></i> Settings</a></li>
            <li><a href="/logout"><i class="fa fa-sign-out"></i> Log Out</a></li>
        </ul>
    </div>
</nav>

<main>
    <div class="table">
        <div class="row">
            <div class="col1">Name:</div>
            <div class="col2">Ivan</div>
        </div>
        <div class="row">
            <div class="col1">Surname:</div>
            <div class="col2">Lipinskyi</div>
        </div>
        <div class="row">
            <div class="col1">E-mail:</div>
            <div class="col2">ivan-lipinskyi@mail.ru</div>
        </div>
        <div class="row">
            <div class="col1">Tel.</div>
            <div class="col2">099-475-75-35</div>
        </div>
        <div class="row">
            <div class="col1">Address:</div>
            <div class="col2"><a href="map"> Academician Yangel street, 16/9 </br> (old address - Poliytekhnichna street, 16), Kiev</a></div>
        </div>
    </div>
</main>

<footer>
    <div class="social_buttons">
        <a href="http://facebook.com" target="_blank"><i class="fa fa-facebook-square"></i></a>
        <a href="http://vk.com" target="_blank"><i class="fa fa-vk"></i></a>
    </div>
    <div class="line"></div>
    <div class="copyright" class="container">
        <p><i class="fa fa-copyright"></i>All rights reserved  |  Design by Ivan Lipinskyi</p></div>
</footer>

</body>
</html>
