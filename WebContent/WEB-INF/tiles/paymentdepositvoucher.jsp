<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Deposit Voucher</title>
</head>
<body>

<div class="panel panel-default">
<div style="padding:25px; ">
<div class="container center_div">
<form action="" method="post" class="form">
<div class="col-sm-10">
<div class="form-group">
<div class="col-sm-12 panel panel-heading panel-success">PAYMENT DEPOSIT VOUCHER <span style="color:green">[DAFFODIL INTERNATIONAL UNIVERSITY]</span>
</div>
</div>


<div class="form-group">
<div class="panel panel-default">
 <div class="col-sm-6" style="padding-bottom:5px;">

<input type="radio" name="voucher" value="payment_voucher">Payment Voucher
<input type="radio" name="voucher" value="deposit_voucher">Payment Voucher
</div>
<div class="col-sm-3"style="padding-bottom:5px;"></div>
 <div class="col-sm-3" style="padding-bottom:5px;">

<input type="radio" name="transaction" value="cash">Cash
<input type="radio" name="transaction" value="bank">Bank
</div></div></div>

<div class="panel panel-default">
<div class="panel panel-body">
<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Voucher ID:</label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control"  name="voucherid" id="voucherid"></div></div>
<div class="form-group">
<div class="col-sm-2"></div></div>
<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Date :</label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control"  name="date" id="date">
</div></div><br>
<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Project : </label></div>
<div class="col-sm-10" style="padding-top:5px"><input type="text" class="form-control" name="project" id="project"></div></div>
<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Department : </label></div>
<div class="col-sm-3" style="padding-top:5px"><select name="department" class="form-control">
  <option value="Select">Select...</option>
  <option value="SWE">SWE</option>
  <option value="CSE">CSE</option>
  <option value="EEE">EEE</option>
</select>
</div></div>
<div class="col-sm-2"></div>
<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Cash in Hand : </label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control" name="cashinhand" id="cashinhand"> </div></div>

<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Bank Account :</label></div>
<div class="col-sm-10" style="padding-top:5px"><input type="text" class="form-control" name="bankacc" id="bankacc"></div></div>

<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Cheque No: </label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control" name="chequeno" id="chequeno"></div></div>

<div class="form-group">
<div class="col-sm-2"></div>
<div class="col-sm-2" style="padding-top:5px"><label>MR. No :</label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control" name="mrno" id="mrno"></div></div>

<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Control Head : </label></div>
<div class="col-sm-10" style="padding-top:5px"><input type="text" class="form-control" name="controllhead" id="controllhead"></div></div>

<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Client :</label></div>
<div class="col-sm-10" style="padding-top:5px"><select name="client" class="form-control">
  <option value="Select">Select...</option>
  <option value="SWE">SWE</option>
  <option value="CSE">CSE</option>
  <option value="EEE">EEE</option>
</select> </div></div>

<div class="form-group">
<div class="col-sm-2" style="padding-top:5px"><label>Debit: </label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control" name="debit" id="debit"></div></div>

<div class="form-group">
<div class="col-sm-2" ></div>
<div class="col-sm-2" style="padding-top:5px"><label>Credit : </label></div>
<div class="col-sm-3" style="padding-top:5px"><input type="text" class="form-control" name="credit" id="credit"></div></div>
</div>
</div>
</div>
</form>
</div>
</div>

<div class="col-sm-10">
<div class="panel panel-default">
<div class="showtable">
<table class="table">
<tr>
<th>ACCOUNT HEAD</th>
<th>DEBIT</th>
<th>CREDIT</th>
<th>CHEQUE</th>
<th>PROJECT NAME</th>
<th>MR. NO</th>
<th>DEPT NAME</th>
<th>CLIENT NAME</th>
</tr>

</table>
</div>
</div>
</div>
</div>

 <div class="col-sm-10">
<div class="panel panel-default">
 <div class="col-sm-10"></div>
 <div class="col-sm-2" style="padding-bottom:5px">
<input type="submit" class="btn btn-lg btn-success" name="finish" value="FINISH" id="finish"></div>
</div>
</div>
</body>
</html>