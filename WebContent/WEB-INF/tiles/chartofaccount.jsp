 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chart Of Account</title>
<style type="text/css">
body{
margin: 0,auto;
margin-top: 30px;
}

</style>
</head>
<body>

<div class="col-md-7 col-md-offset-4">
<div class="panel panel-heading">
<h4>Chart Of Account</h4>
<div class="panel panel-body">
<div class="row">
</div>

<div class="row">
<div class="col-md-3">Control Code Level</div>
<div class="col-md-6">
<select id="codelevel">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
</div>
<div class="col-md-3">
<input type="checkbox" id="display" value="display">Display
</div>
</div>

<div class="row">
<div class="col-md-3">Acc. Group</div>
<div class="col-md-6">
<select id="accgroup" class="col-md-12">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
</div>
<div class="col-md-3"></div>
</div>

<div class="row">
<div class="col-md-3">Acc. Sub Group</div>
<div class="col-md-6">
<select id="accsubgroup" class="col-md-12">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
</div>
<div class="col-md-3"></div>
</div>

<div class="row">
<div class="col-md-3">Control Head</div>
<div class="col-md-6">
<select id="controlhead">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
<input type="text" name="controlhaed" id="controlheadtext">
</div>
<div class="col-md-3"></div>

</div>

<div class="row">
<div class="col-md-3">Sub Control Head</div>
<div class="col-md-6">
<select id="subcontrolhead">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
<input type="text" name="subcontrolhaed" id="subcontrolheadtext">
</div>
<div class="col-md-3"></div>

</div>

<div class="row">
<div class="col-md-3">Sub Sub Control Head</div>
<div class="col-md-6">
<select id="subsubcontrolhead">
<option value="0">Select</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
<input type="text" name="subsubcontrolhaed" id="subsubcontrolheadtext">
</div>
<div class="col-md-3"></div>
</div>

<div class="row">
<div class="col-md-6 col-md-offset-6">
<input type="button" id="clear" class="btn btn-success" value="CLEAR" name="clear">
<input type="button" id="save" class="btn btn-success" value="SAVE" name="save">
</div>
</div>

</div>
</div>
</div>

</body>
</html>