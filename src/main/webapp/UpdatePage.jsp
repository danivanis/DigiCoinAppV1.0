<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body>

<div class="sidenav">
    <a href="#">Home</a>
    <a href="#">New entries</a>
    <a href="#">Edit entries</a>
    <a href="#">Find entries</a>
    <a href="#">List entries</a>
    <a href="#">Delete entries</a>
    <a href="#">Exit</a>
</div>

<div class="content">
    <h1 style="color:DimGrey;">DigiCoin - Personal Expense Tracker</h1>
    <br>
    <div id="form-box">
        <form>
            <meta charset="ISO-8859-1">
            <div>
                <span style="color:Black;"><b>Source:</b></span>
                <select name="type" style="color:DimGrey;">
                    <option value="debitcard">Debit Card</option>
                    <option value="creditcard">Credit Card</option>
                    <option value="cash">Cash</option>
                    <option value="mealvouchers">Meal vouchers</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div>
                <span style="color:Black;"><b>Details:</b></span> <input type="text" name="item-name" placeholder="Entry description">
            </div>

            <div>
                <span style="color:Black;"><b>Date:</b></span> <input type="date" name="date" placeholder="dd/mm/yyyy">
            </div>

            <div>
                <span style="color:Black;"><b>Amount:</b></span> <input type="number" name="amount" placeholder="What was the value?" style="color:DimGrey;">
            </div>

        </form>
    </div>

    <div id="button" style="background-color: GoldenRod;"><span>Update entry</span></div>

    <%--    <table>--%>
    <%--        <tr>--%>
    <%--            <th id="type" class="center" bgcolor="SlateGrey">Source</th>--%>
    <%--            <th bgcolor="SlateGrey">Details</th>--%>
    <%--            <th id="date" bgcolor="SlateGrey">Date</th>--%>
    <%--            <th style="text-align: right" id="amount" bgcolor="SlateGrey">Amount</th>--%>
    <%--        </tr>--%>
    <%--        <tr id="if-empty">--%>
    <%--            <td colspan="4"><span>Your added items will show up here!</span></td>--%>
    <%--        </tr>--%>

    <%--    </table>--%>

</div>

</body>

</html>