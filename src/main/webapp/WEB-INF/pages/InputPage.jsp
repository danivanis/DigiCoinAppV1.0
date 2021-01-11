<style>
    body{
        background-image: url('https://i.ibb.co/XWbcjWw/Digi-Coin-Personal-Expense-Tracker.jpg');
        height: 100%;
        background-attachment:fixed;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<head>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<h1 style="color:DimGrey;">Simple expense manager project</h1>
<br>
<br>
<br>
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

<table>
    <tr>
        <th id="type" class="center" bgcolor="SlateGrey">Source</th>
        <th bgcolor="SlateGrey">Details</th>
        <th id="date" bgcolor="SlateGrey">Date</th>
        <th style="text-align: right" id="amount" bgcolor="SlateGrey">Amount</th>
    </tr>
    <tr id="if-empty">
        <td colspan="4"><span>Your added items will show up here!</span></td>
    </tr>

</table>