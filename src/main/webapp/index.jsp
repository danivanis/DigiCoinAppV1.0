<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            background-image: url('https://i.imgur.com/YvUftM3.jpg');
            height: 100%;
            background-attachment:fixed;
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        h1 {
            font-size: 2.5em;
            margin-top: 20px;
        }

        h2 {
            margin: 20px 0;
            font-weight: 100;
        }

        h1, h2 {
            color: #F5F7FA;
            text-align: center;
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
            margin-left: 200px;
            padding-left: 20px;
        }
    </style>
</head>
<body>

<div class="sidenav">
    <p><a href='${pageContext.request.contextPath}/index'><span style="font-size: 16px">&#127968; Home</span></a></p>
    <p><a href='${pageContext.request.contextPath}/InputPage'><span style="font-size: 16px">&#128181; New entries</span></a></p>
    <p><a href='${pageContext.request.contextPath}/UpdatePage'><span style="font-size: 16px">&#128221; Edit entries</span></a></p>
    <p><a href='${pageContext.request.contextPath}/ReportsPage'><span style="font-size: 16px">&#128270; Find entries</span></a></p>
    <p><a href='${pageContext.request.contextPath}/OverviewPage'><span style="font-size: 16px">&#128195; List entries</span></a></p>
    <p><a href='${pageContext.request.contextPath}/DeletePage'><span style="font-size: 16px">&#128465; Delete entries</span></a></p>
    <br>
    <a href='${pageContext.request.contextPath}/About'><span style="font-size: 16px">&#9187; About</span></a>
</div>

<div class="content">
    <br>
    <h1 style="color:DimGrey;">DigiCoin - Personal Expense Tracker</h1>
    <br>
    <br>
    <h2 style="color:DimGrey;">Welcome to DigiCoin, your personal expense tracker!
        <br>
        <br>
        On the left side of the screen you'll have the buttons to navigate through the app.
    </h2>
</div>

</body>

</html>