<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin Edit entries</title>
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
            line-height: 20px;
            display: inline-block;
            width: 400px;
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
            display: inline-block;
            top: 3px;
            box-shadow: 0 0;
        }

        #form-box {
            width: 1000px;
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
            alert("Update was successful!");
        }

    </script>

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
    <div id="form-box">
        <form method="post">
            <meta charset="ISO-8859-1">

            <div style="margin-left: 32.4%";>
                <span style="color:Black;"><b>Entry ID:</b></span> <input type="number" name="entryid" placeholder="Entry ID" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" required>
            </div>
            <br>
            <div>
                <span style="color:Black;"><b>Source:</b></span>
                <select name="source" style="color:DimGrey;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);">
                    <option value="Debit Card">Debit Card</option>
                    <option value="Credit Card">Credit Card</option>
                    <option value="Cash">Cash</option>
                    <option value="Meal Vouchers">Meal Vouchers</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div>
                <span style="color:Black;"><b>Category:</b></span>
                <select name="category" style="color:DimGrey;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);">
                    <option value="Dinning">Dinning</option>
                    <option value="Transportation">Transportation</option>
                    <option value="Housing">Housing</option>
                    <option value="Utilities">Utilities</option>
                    <option value="Health">Health</option>
                    <option value="Entertainment">Entertainment</option>
                    <option value="Miscellaneous">Miscellaneous</option>
                </select>
            </div>

            <div>
                <span style="color:Black;"><b>Details:</b></span> <input type="text" name="details" placeholder="Entry description" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" required>
            </div>

            <div>
                <span style="color:Black;"><b>Date:</b></span> <input type="date" name="date" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" required>
            </div>
            <div>
                <span style="color:Black;"><b>Amount:</b></span> <input type="number" name="amount" step="0.01" placeholder="What was the value?" style="color:DimGrey;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" required>
            </div>
            <br>
            <br>
            <div>
                <button type="submit" onclick="myFunction()"  id="button" style="background-color: GoldenRod; margin-left: 80%; padding: 17px 1px;border: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" value="Submit"><span>Update entry</span></button>
            </div>

        </form>

    </div>

</div>

</body>

</html>