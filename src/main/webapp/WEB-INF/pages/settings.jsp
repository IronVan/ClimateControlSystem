<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Climate Control System</title>
    <link rel="stylesheet" href=
            <c:url value="/resourses/libs/font-awesome-4.5.0/css/font-awesome.min.css" /> />
    <link rel="stylesheet" href=
            <c:url value="resourses/libs/reset.css" /> />
    <link rel="stylesheet" href=
            <c:url value="/resourses/libs/960_12_col.css" /> />
    <link rel="stylesheet" href=
            <c:url value="/resourses/css/style-settings.css" /> />
    <link rel="shortcut icon" href=
            <c:url value="/resourses/favicon.ico" /> />
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
            <li><a href="/resourses/description.pdf"><i class="fa fa-info-circle"></i> About System</a></li>
            <li><a href="contacts"><i class="fa fa-phone-square"></i> Contact US</a></li>
            <li><a href="settings"><i class="fa fa-cogs"></i> Settings</a></li>
            <li><a href="/logout"><i class="fa fa-sign-out"></i> Log out</a></li>
        </ul>
    </div>
</nav>

<main>
    <div class="empty"></div>
    <div class="wrapper">
        <div class="top_title">
            <i class="fa fa-unlock-alt"></i>
            Login & Password Settings
        </div>
        <div class="top_line"></div>
        <div class="table">
            <div class="row">
                <div class="col1">Login:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="login"/>
                </div>
            </div>
            <div class="row">
                <div class="col1">Password:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="login"/>
                </div>
            </div>
        </div>
        <form>
            <div class="submit-container">
                <input class="submit-button" type="submit" value="Add new"/>
                <input class="submit-button" type="submit" value="Delete"/>
                <input class="submit-button" type="submit" value="Update"/>
                <input class="submit-button" type="submit" value="Show current"/>
            </div>
        </form>
    </div>
    </div>

    <div class="empty"></div>

    <div class="wrapper">
        <div class="top_title"><i class="fa fa-plus-circle"></i> Adding New Mode</div>
        <div class="top_line"></div>

        <div class="table">
            <div class="row">
                <div class="col1">Name:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="name"/>
                </div>
            </div>
            <div class="row">
                <div class="col1">Min temperature:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="minTemp"/>
                </div>
            </div>
            <div class="row">
                <div class="col1">Max temperature:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="maxTemp"/>
                </div>
            </div>
            <div class="row">
                <div class="col1">Min humidity:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="minHumid"/>
                </div>
            </div>
            <div class="row">
                <div class="col1">Max humidity:</div>
                <div class="col2">
                    <input class="form-field" type="text" name="maxHumid"/>
                </div>
            </div>
        </div>
        <div class="button-wrapper">
            <input class="submit-button" type="submit" name="createMode" value="Create" />
        </div>
    </div>

    <div class="empty"></div>

    <div class="wrapper">
        <div class="top_title"><i class="fa fa-trash-o"></i> Modes Deletion</div>
        <div class="top_line"></div>
    </div>
    <div class="empty"></div>

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
