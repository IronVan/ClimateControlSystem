<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>CCSystem Authorization</title>
    <link rel="stylesheet" href=<c:url value="/resourses/libs/font-awesome-4.5.0/css/font-awesome.min.css" /> />
    <link rel="stylesheet" href=<c:url value="/resourses/libs/reset.css" /> />
    <link rel="stylesheet" href=<c:url value="/resourses/libs/960_12_col.css" /> />
    <link rel="stylesheet" href=<c:url value="/resourses/css/style-authorization.css" /> />
    <link rel="shortcut icon" href=<c:url value="/resourses/favicon.ico" /> />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'/>
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
        </ul>
    </div>
</nav>

<main>
    <div class="container">
        <c:url var="loginUrl" value="/login"/>
        <form action="${loginUrl}" method="post" class="form-container">
            <div class="form-title"><div class="top_title"><i class="fa fa-sign-in"></i> Log in</div></div>
            <div class="top_line"></div>
            <div class="form-title">Login</div>
                <input class="form-field" type="text" name="login"/><br/>
            <div class="form-title">Password</div>
                <input class="form-field" type="password" name="password"/><br/>
            <div class="submit-container">
                <input class="submit-button" type="submit" value="Submit"/>
            </div>
        </form>
    </div>
</main>

<footer>
    <div class="social_buttons">
        <a href="http://facebook.com" target="_blank"><i class="fa fa-facebook-square"></i></a>
        <a href="http://vk.com" target="_blank"><i class="fa fa-vk"></i></a>
    </div>
    <div class="line"></div>
    <div class="copyright" class="container">
        <p><i class="fa fa-copyright"></i>All rights reserved | Design by Ivan Lipinskyi</p></div>
</footer>

</body>
</html>
