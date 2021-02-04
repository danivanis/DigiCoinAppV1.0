<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin About</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        html {
            box-sizing: border-box;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the side navigation */
        .sidenav {
            height: 100%;
            width: 150px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: SlateGrey;
            overflow-x: hidden;
        }


        /* Side navigation links */
        .sidenav a {
            color: white;
            padding: 16px;
            text-decoration: none;
            display: block;
        }

        /* Change color on hover */
        .sidenav a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Style the content */
        .content {
            margin-left: 130px;
            padding-left: 20px;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        .column {
            float: left;
            width: 33.3%;
            margin-bottom: 16px;
            padding: 0 8px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
        }

        .about-section {
            padding: 50px;
            text-align: center;
            background-image: url('https://i.imgur.com/YvUftM3.jpg');
            background-size: cover;
            color: black;
        }

        .container {
            padding: 0 16px;
        }

        .container::after, .row::after {
            content: "";
            clear: both;
            display: table;
        }

        .title {
            color: grey;
        }

        .button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: black;
            background-image: url('https://i.imgur.com/YvUftM3.jpg');
            text-align: center;
            cursor: pointer;
            width: 100%;
        }


        .button:hover {
            color: white;
            background-image: url('https://i.imgur.com/lTkzgAl.jpg');
        }

    </style>
</head>

<div class="sidenav">
    <p><a href='${pageContext.request.contextPath}/index'>&#127968; Home</a></p>
    <p><a href='${pageContext.request.contextPath}/InputPage'>&#128181; New entries</a></p>
    <p><a href='${pageContext.request.contextPath}/UpdatePage'>&#128221; Edit entries</a></p>
    <a href="#">&#128270; Find entries</a>
    <p><a href='${pageContext.request.contextPath}/OverviewPage'>&#128195; List entries</a></p>
    <p><a href='${pageContext.request.contextPath}/DeletePage'>&#128465; Delete entries</a></p>
    <br>
    <a href='${pageContext.request.contextPath}/About'>&#9187; About</a>
</div>

<div class="content">

    <div class="about-section">
        <h1>About Us Page</h1>
        <p>DigiCoin is the Java project of an aspiring junior engineer that wants to help people </p>
        <p>achieve their financial goals by tracking their spending habits.</p>
    </div>

    <h2 style="text-align:center">Our Team</h2>
    <div class="row">
        <div class="column">
            <div class="card">
                <img src="https://i.imgur.com/kM3Y10R.jpg" alt="Dan" style="width:100%">
                <div class="container">
                    <h2>Dănuț IVANIȘ</h2>
                    <p class="title">CEO & Founder</p>
                    <p>Experienced accountant equipped with new IT ninja skills.                    </p>
                    <p>dan@digicoin.com</p>
                    <p>
                        <button class="button"><a href="mailto:dan@digicoin.com" style="color:black;">Contact</a></button>
                    </p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="https://i.imgur.com/D0hm0qs.jpg" alt="CTO" style="width:100%">
                <div class="container">
                    <h2>Open pisition</h2>
                    <p class="title">Chief Technology Officer</p>
                    <p>Adventures mate that knows how to paddle through the troubled waters of binary data.</p>
                    <p>contact@digicoin.com</p>
                    <p>
                        <button class="button"><a href="mailto:contact@digicoin.com" style="color:black;">Contact</a></button>
                    </p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="https://i.imgur.com/D0hm0qs.jpg" alt="John" style="width:100%">
                <div class="container">
                    <h2>Open pisition</h2>
                    <p class="title">Marketing Director</p>
                    <p>Experienced social media veteran that posts as he breaths.                             </p>
                    <p>contact@digicoin.com</p>
                    <p>
                        <button class="button"><a href="mailto:contact@digicoin.com" style="color:black;">Contact</a></button>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</html>