<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin Entry List</title>
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
            width: 700px;
            margin: 10px auto;
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
            font-size:15px;
            text-align: center;
            line-height: 16px;
            display: inline-block;
            width: 700px;
            background-color: #df489d;
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
            width: 700px;
            margin: 20px auto;
            padding-left: 0px;
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
            // alert("Update was successful!");
            window.open('${pageContext.request.contextPath}/PieChart', "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=1280,height=720");
            window.location.reload();
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
    <div id="form-box">
        <form method="post">
            <meta charset="ISO-8859-1">

            <div>
                <button onclick="myFunction()" type="submit" id="button" style="background-color: #df4885; margin-left: 0%; padding: 5px 1px;border: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" value="Submit"><b>Show data in Pie Chart!</b></button>
            </div>

            <table>
                <tr>
                    <th id="number" style="width:10px" class="center" bgcolor="SlateGrey">ID</th>
                    <th id="type" class="center" bgcolor="SlateGrey">Source</th>
                    <th id="date" style="text-align: center" bgcolor="SlateGrey">Date</th>
                    <th style="text-align: right" id="amount" bgcolor="SlateGrey">Amount</th>
                    <th bgcolor="SlateGrey">Details</th>
                </tr>
                <c:forEach items = "${list}" var = "records">
                    <tr>
                        <td style="text-align: center">${records.id}</td>
                        <td style="text-align: center">${records.source}</td>
                        <td style="text-align: center">${records.entryDate}</td>
                        <td style="text-align: right" >${records.amount}</td>
                        <td>${records.description}</td>
                    </tr>
                </c:forEach>

            </table>

        </form>

    </div>

</div>




</body>

</html>