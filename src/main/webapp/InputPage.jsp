<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600,300&subset=latin,latin-ext);
        * {
            font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h1, h2 {
            color: #F5F7FA;
            text-align: center;
        }

        h1 {
            font-size: 2.5em;
            margin-top: 20px;
        }

        h2 {
            margin: 20px 0;
            font-weight: 100;
        }

        body{
            background-image: url('https://i.ibb.co/myz6bNT/Digi-Coin-Personal-Expense-Tracker-background.jpg');
            height: 100%;
            background-attachment:fixed;
            background-repeat: no-repeat;
            background-size: cover;
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
            box-shadow: 0 3px #4A89DC;
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
    </style>
</head>

<h1 style="color:DimGrey;">DigiCoin - Personal Expense Tracker</h1>
<br>
<br>
<h2 style="color:DimGrey;"><b>Add a new item:</b></h2>

<div id="form-box">
    <form>
        <meta charset="ISO-8859-1">
        <div>
            <span style="color:DimGrey;"><b>Source:</b></span>
            <select name="type" style="color:DimGrey;">
                <option value="debitcard">Debit Card</option>
                <option value="creditcard">Credit Card</option>
                <option value="cash">Cash</option>
                <option value="mealvouchers">Meal vouchers</option>
                <option value="other">Other</option>
            </select>
        </div>

        <div>
            <span style="color:DimGrey;"><b>Details:</b></span> <input type="text" name="item-name" placeholder="Entry description">
        </div>

        <div>
            <span style="color:DimGrey;"><b>Date:</b></span> <input type="date" name="date" placeholder="dd/mm/yyyy">
        </div>

        <div>
            <span style="color:DimGrey;"><b>Amount:</b></span> <input type="number" name="amount" placeholder="What was the value?" style="color:DimGrey;">
        </div>



    </form>
</div>

<div id="button" style="background-color: #4CAF50;"><span>Add a new entry</span></div>

<%--<table>--%>
<%--    <tr>--%>
<%--        <th id="type" class="center" bgcolor="SlateGrey">Source</th>--%>
<%--        <th bgcolor="SlateGrey">Details</th>--%>
<%--        <th id="date" bgcolor="SlateGrey">Date</th>--%>
<%--        <th style="text-align: right" id="amount" bgcolor="SlateGrey">Amount</th>--%>
<%--    </tr>--%>
<%--    <tr id="if-empty">--%>
<%--        <td colspan="4"><span>Your added items will show up here!</span></td>--%>
<%--    </tr>--%>

<%--</table>--%>