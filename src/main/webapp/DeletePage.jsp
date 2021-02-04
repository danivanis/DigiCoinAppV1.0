<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin Delete entries</title>
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

        table {
            text-align: left;
            width: 640px;
            margin: 30px auto;
            border-radius: 3px;
            background-color: #fff;
        }
        table th {
            padding: 10px;
        }
        table tr:nth-child(odd) {
            background-color: #F5F7FA;
        }
        table td {
            padding: 10px 15px;
            color: #434A54;
        }

        .amount {
            color: #DA4453;
            text-align: right;
        }

        #button {
            position: relative;
            top: 0;
            color: #F5F7FA;
            padding: 20px;
            text-align: center;
            line-height: 24px;
            width: 200px;
            background-color: #4FC1E9;
            border-radius: 3px;
            cursor: pointer;
            margin: auto;
            box-shadow: 0 3px #DAA520;
            transition: 0.1s ease;
        }
        #button:active {
            position: relative;
            box-shadow: 0 0px #4A89DC;
            top: 3px;
            box-shadow: 0 0;
        }

        #form-box {
            width: 650px;
            margin: 30px auto;
            padding-left: 15px;
        }

        form {
            color: #fff;
            margin: auto;
        }
        form select, form input {
            margin-bottom: 25px;
            color: #434A54;
            padding: 10px;
            width: 200px;
            border-radius: 3px;
            border: 0;
        }
        form selectactive, form inputactive {
            border: 1px solid #4FC1E9;
            transition: 0.2s ease;
        }
        form div {
            display: inline-block;
            margin-right: 10px;
        }
        form span {
            font-size: 1.3em;
            font-weight: 100;
            display: inline-block;
            width: 100px;
        }

        #type {
            width: 50px;
        }

        #date {
            width: 141px;
        }

        #amount {
            width: 100px;
        }

        #if-empty {
            text-align: center;
        }

        .center {
            margin: auto;
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

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        function myFunction() {
            alert("Removal was successful!");
        }

    </script>

</head>
<body>

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
    <br>
    <h1 style="color:DimGrey;">DigiCoin - Personal Expense Tracker</h1>
    <br>
    <div id="form-box">
        <form method="post">
            <meta charset="ISO-8859-1">

            <div style="margin-left: 25%";>
                <span style="color:Black;"><b>Entry ID:</b></span> <input type="number" name="entryid" placeholder="Entry ID" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" required>
            </div>
            <br>
            <br>
            <br>
            <div>
                <button type="submit" onclick="myFunction()"  id="button" style="background-color: #ff4040; margin-left: 110%; padding: 17px 1px;border: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" value="Submit"><span>Delete entry</span></button>
            </div>

        </form>

    </div>

</div>

</body>

</html>