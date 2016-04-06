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
    <link rel="stylesheet" href=<c:url value="/resourses/css/style-modes.css"/> />
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
            <li><a href="/logout"><i class="fa fa-sign-out"></i> Log out</a></li>
        </ul>
    </div>
</nav>


<main>

    <div class="empty"></div>
    <div class="wrapper">
        <div class="top_title"><i class="fa fa-bars"></i> Current Conditions</div>
        <div class="top_line"></div>
        <div class="current_temp">Current temperature: +3C</div>
        <div class="current_humid">Current humidity: 85%</div>
        <div class="current_mode">Selected mode: ${message}</div>
    </div>

    <div class="empty"></div>
    <div class="wrapper">
        <div class="top_title"><i class="fa fa-hand-pointer-o"></i> Mode Selection</div>
        <div class="top_line"></div>

        <div class="container_12">
            <div class="grid_2">
                <div class="button_container">
                    <form action="/chooseModes">
                        <div class="submit-container">
                            <input class="submit-button" type="submit" name="mode" value="Mode 1" />
                            <input class="submit-button" type="submit" name="mode" value="Mode 2" />
                            <input class="submit-button" type="submit" name="mode" value="Mode 3" />
                            <input class="submit-button" type="submit" name="mode" value="Mode 4" />
                        </div>
                    </form>
                </div>

            </div>
            <div class="grid_3">
                <p class="mode_description">Shot mode description: </p>
                <p><a class="full_mode_desc" href="#" target="_blank">Read full modes description</a></p>
                <input class="create-button" type="submit" value="Create new mode" />
            </div>
            <div class="grid_7">
                <p class="temp_description">temperature range: +2C - +4C</p>
                <p class="humid_description">humidity range: 80% - 95%</p>
            </div>
        </div>


    </div>


    <div class="empty"></div>



    <div class="wrapper">
        <div class="top_title"><i class="fa fa-hand-paper-o"></i> Setting manually</div>
        <div class="top_line"></div>


        <form>

            <div class="table">
                <div class="row">
                    <div class="col1">Temperature:</div>
                    <div class="col2">
                        <input class="form-field" type="text" name="name"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">Humidity:</div>
                    <div class="col2">
                        <input class="form-field" type="text" name="minTemp"/>
                    </div>
                </div>
            </div>

            <div class="button-wrapper">
                <input class="set-button" type="submit" value="SET" />
            </div>

        </form>
    </div>


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
        <p><i class="fa fa-copyright"></i>All rights reserved  |  Design by Ivan Lipinskyi</p></div>
</footer>

</body>
</html>