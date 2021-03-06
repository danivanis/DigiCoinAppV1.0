<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin List by text</title>
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
            width: 800px;
            margin: 10px auto;
            border-radius: 3px;
            background-color: #fff;
        }
        table th {
            padding: 10px;
        }
        table tr {
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

        #button1 {
            position: relative;
            top: 0;
            color: #F5F7FA;
            font-size:15px;
            text-align: center;
            line-height: 16px;
            display: inline-block;
            width: 800px;
            background-color: #df489d;
            border-radius: 3px;
            cursor: pointer;
            margin: auto;
            box-shadow: 0 3px #DAA520;
            transition: 0.1s ease;
        }
        #button1:active {
            position: relative;
            box-shadow: 0 0px #4A89DC;
            display: inline-block;
            top: 3px;
            box-shadow: 0 0;
        }

        #button2 {
            position: relative;
            top: 0;
            color: #F5F7FA;
            font-size:15px;
            text-align: center;
            line-height: 16px;
            display: inline-block;
            width: 800px;
            background-color: #df489d;
            border-radius: 3px;
            cursor: pointer;
            margin: auto;
            box-shadow: 0 3px #DAA520;
            transition: 0.1s ease;
        }
        #button2:active {
            position: relative;
            box-shadow: 0 0px #4A89DC;
            display: inline-block;
            top: 3px;
            box-shadow: 0 0;
        }

        #form-box {
            width: 800px;
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


</head>

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


            <table>
                <tr>
                    <th id="number" style="width:5%" class="center" bgcolor="SlateGrey">ID</th>
                    <th id="type" style="width:18%" class="center" bgcolor="SlateGrey">Source</th>
                    <th style="text-align: center; width:20%" bgcolor="SlateGrey">Category</th>
                    <th id="date" style="text-align: center; width:15%" bgcolor="SlateGrey">Date</th>
                    <th style="text-align: right; width:12%" id="amount" bgcolor="SlateGrey">Amount</th>
                    <th style="width:30%" bgcolor="SlateGrey">Details</th>
                </tr>
                <c:forEach items = "${list}" var = "records">
                    <tr style="line-height: 13px;">
                        <td style="text-align: center;line-height: 13px;">${records.id}</td>
                        <td style="text-align: center;line-height: 13px;">${records.source}</td>
                        <td style="text-align: center;line-height: 13px;">${records.category}</td>
                        <td style="text-align: center;line-height: 13px;">${records.entryDate}</td>
                        <td style="text-align: right;line-height: 13px;" >${records.amount}</td>
                        <td style="line-height: 13px;">${records.description}</td>
                    </tr>
                </c:forEach>
<%--                <tr>--%>
<%--                    <td bgcolor="SlateGrey" colspan="4"  style="text-align: center;line-height: 13px; color: #F5F7FA;"><b>TOTAL</b></td>--%>
<%--                    <td id="TOTAL" style="text-align: right;line-height: 13px; color: #F5F7FA;" bgcolor="SlateGrey"><b>${sum}</b></td>--%>
<%--                    <td bgcolor="SlateGrey"></td>--%>
<%--                </tr>--%>
            </table>

        </form>

    </div>

</div>


</body>

</html>