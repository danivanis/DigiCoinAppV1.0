<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>DigiCoin Chart</title>
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

        #form-box {
            width: 650px;
            margin: 30px auto;
            padding-left: 15px;
            /*background-attachment:fixed;*/
            /*background-repeat: no-repeat;*/
            /*background-size: cover;*/
            /*margin: 0;*/
        }

    </style>
</head>

<script language="Javascript">
    function refreshpage(){
        document.forms.form-box.submit();
    }
</script>

<body>

<div class="sidenav">
    <p><a href="http://localhost:8080">&#127968; Home</a></p>
    <p><a href='${pageContext.request.contextPath}/InputPage'>&#128181; New entries</a></p>
    <p><a href='${pageContext.request.contextPath}/UpdatePage'>&#128221; Edit entries</a></p>
    <a href="#">&#128270; Find entries</a>
    <a href="#">&#128195; List entries</a>
    <a href="#">&#128465; Delete entries</a>
    <br>
    <a href='${pageContext.request.contextPath}/About'>&#9187; About</a>
</div>

<div class="content">
    <br>
    <h1 style="color:DimGrey;">DigiCoin - Personal Expense Tracker</h1>
    <br>
    <br>
<%--    <%response.setIntHeader("Refresh",5);%>--%>
    <form id="form-box">
        <img src="C:/Users/Dan/IdeaProjects/DigiCoinAppV1.0/PieChart.jpeg" width="600" height="400" border="0"/>
<%--        <input type="button" onclick="refreshpage()" value="Refresh"/>--%>
    </form>

</div>

</body>

</html>