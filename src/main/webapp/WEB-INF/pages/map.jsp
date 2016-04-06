<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Climate Control System</title>
    <link rel="stylesheet" href=<c:url value="/resourses/libs/font-awesome-4.5.0/css/font-awesome.min.css"/> />
    <link rel="stylesheet" href=<c:url value="resourses/libs/reset.css"/> />
    <link rel="stylesheet" href=<c:url value="/resourses/libs/960_12_col.css" /> />
    <link rel="stylesheet" href=<c:url value="/resourses/css/style-map.css"/> />
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
    <div class="map_container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d635.1589131113273!2d30.454569287033102!3d50.447886858254364!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sua!4v1456090386974" width="800" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
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