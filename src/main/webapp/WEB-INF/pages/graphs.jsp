<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Climate Control System</title>
    <link rel="stylesheet" href=<c:url value = "/resourses/libs/font-awesome-4.5.0/css/font-awesome.min.css"/> />
    <link rel="stylesheet" href=<c:url value = "/resourses/libs/reset.css" /> />
    <link rel="stylesheet" href=<c:url value = "/resourses/libs/960_12_col.css"/> />
    <link rel="stylesheet" href=<c:url value = "/resourses/css/style-graphs.css"/> />
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
            <li><a href="/resourses/description.pdf"> <i class="fa fa-info-circle"></i> About System</a></li>
            <li><a href="contacts"><i class="fa fa-phone-square"></i> Contact US</a></li>
            <li><a href="settings"><i class="fa fa-cogs"></i> Settings</a></li>
            <li><a href="/logout"><i class="fa fa-sign-out"></i> Log Out</a></li>
        </ul>
    </div>
</nav>

<main>
    <div id="container_hourly_temp"></div>
    <div id="container_daily_temp"></div>
    <div id="container_monthly_temp"></div>
    <div id="container_hourly_humid"></div>
    <div id="container_daily_humid"></div>
    <div id="container_monthly_humid"></div>
</main>

<div>
    <a href="graphs"><i class="fa fa-refresh"></i></a>
</div>

<footer>
    <div class="social_buttons">
        <a href="http://facebook.com" target="_blank"><i class="fa fa-facebook-square"></i></a>
        <a href="http://vk.com" target="_blank"><i class="fa fa-vk"></i></a>
    </div>
    <div class="line"></div>
    <div class="copyright" class="container">
        <p><i class="fa fa-copyright"></i>All rights reserved  |  Design by Ivan Lipinskyi</p></div>
</footer>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script type="text/javascript" src="resourses/js/common.js"></script>
</body>
</html>
