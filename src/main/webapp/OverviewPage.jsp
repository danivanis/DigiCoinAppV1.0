<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin List entries</title>
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

/*        .amount {
            color: #DA4453;
            text-align: right;
        }*/

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
            position: relative;
            width: 900px;
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

        /*#type {
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
*/

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
        function myCategory() {
            // alert("Update was successful!");
            window.open('${pageContext.request.contextPath}/PieChartCategory', "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=1280,height=720");
            window.location.reload();
        }
    </script>

    <script>
        function myDate() {
            // alert("Update was successful!");
            window.open('${pageContext.request.contextPath}/PieChartDate', "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=1280,height=720");
            window.location.reload();
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

            <div>
                <button onclick="myCategory()" type="submit" id="button1" style="background-color: #df4885; margin-left: 6%; padding: 5px 1px;border: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" value="Submit"><b>Show category cost split in Pie Chart!</b></button>
            </div>

            <div>
                <button onclick="myDate()" type="submit" id="button2" style="background-color: #df4885; margin-left: 6%; padding: 5px 1px;border: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" value="Submit"><b>Show calendar date cost split in Pie Chart!</b></button>
            </div>

            <table>
                <tr>
                    <th id="number" style="text-align: center; width:5%" bgcolor="SlateGrey">ID</th>
                    <th id="type" style="text-align: center; width:17%" bgcolor="SlateGrey">Source</th>
                    <th style="text-align: center; width:20%" bgcolor="SlateGrey">Category</th>
                    <th id="date" style="text-align: center; width:15%" bgcolor="SlateGrey">Date</th>
                    <th style="text-align: right; width:10%" id="amount" bgcolor="SlateGrey">Amount</th>
                    <th style="width:21%" bgcolor="SlateGrey">Details</th>
                    <th style="width:12%; text-align: center;" bgcolor="SlateGrey">Actions</th>
                </tr>
                <c:forEach items = "${list}" var = "records">
                    <tr style="line-height: 13px;">
                        <td style="text-align: center;line-height: 10px; font-size: 14px;">${records.id}</td>
                        <td style="text-align: center;line-height: 10px; font-size: 14px;">${records.source}</td>
                        <td style="text-align: center;line-height: 10px; font-size: 14px;">${records.category}</td>
                        <td style="text-align: center;line-height: 10px; font-size: 14px;">${records.entryDate}</td>
                        <td style="text-align: right;line-height: 10px; font-size: 14px;" >${records.amount}</td>
                        <td style="line-height: 10px; font-size: 14px;">${records.description}</td>
                        <td style="text-align: center;"><a href="QuickUpdatePage?entryid=<c:out value='${records.id}' /> " style="text-decoration:none;">&#128221;</a>
                            <a> </a> <a> </a> <a> </a>
                            <a href="QuickDeletePage?entryid=<c:out value='${records.id}' />" style="text-decoration:none;">&#10060;</a></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td bgcolor="SlateGrey" colspan="4"  style="text-align: center;line-height: 10px; color: #F5F7FA; font-size: 14px;"><b>TOTAL</b></td>
                    <td id="TOTAL" type="number" lang="en-150" step="any" style="text-align: right;line-height: 13px; color: #F5F7FA;" bgcolor="SlateGrey"><b>${sum}</b></td>
                    <td bgcolor="SlateGrey" colspan="2"></td>
                </tr>
            </table>

        </form>

    </div>

</div>




</body>

</html>