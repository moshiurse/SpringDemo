<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sample Table</title>
<script type="text/javascript">
$(document).ready(function(){
		
		var count = $("#table tr").length;
		alert(count);
		var table = $("#table tr");
		alert(table.text());
		//var h = 2;
		var col = 0;
		//var col = $('#showtable tr td:nth-child(2)').text(); 
		//alert(col);
		for(var i=1; i<count; i++){
			col = $table.eq(i).find("td").eq(2);
			alert(col);
		}
		
		
		
		
	
	$('#showdetail').click( function() {
		  alert("Show Detail");
		  
		  var $table = $("table")
		    rows = [],
		    header = [];

		 $table.find("thead th").each(function () {
		    header.push($(this).html());
		});

		$table.find("tbody tr").each(function () {
		    var row = {};
		    
		    $(this).find("td").each(function (i) {
		        var key = header[i],
	            value = $(this).html(); 
		        row[key] = value;
		    });
		    
		    rows.push(row);
		});    
		alert(JSON.stringify(rows));
		    
	});

	$("#showdata").click(function(){
		
		  var $table = $("table")
		    rows = [] ,
		    header = [];

		 /* $table.find("thead th").each(function () {
		    header.push($(this).html());
		});
 */
		$table.find("tbody tr").each(function () {
		    var row = {};
		    
		    $(this).find("td").each(function (i) {
		        var key = i;
	          value = $(this).html();
		       row[key] = value;
		        
		    });
		    
		    rows.push(row);
		});    
		alert(JSON.stringify(rows));
		    
	});

}); 

</script>
</head>
<body>
<div class="panel panel-primary">
	<form action="" method="post">
	<table class="table" id="table">
	<thead>
	<tr>
	<th>ID</th>
	<th>Name</th>
	<th>ADDRESS</th>
	<th>SALARY</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td>1</td>
	<td>Moshiur</td>
	<td>Dhaka</td>
	<td>200</td>
	</tr>
	
	<tr>
	<td>2</td>
	<td>Dipta</td>
	<td>CTG</td>
	<td>500</td>
	</tr>
	
	
	<tr>
	<td>3</td>
	<td>Rabbani</td>
	<td>Narayanganj</td>
	<td>1000</td>
	</tr>
	
	<tr>
	<td>4</td>
	<td>Shamrat</td>
	<td>Gazipur</td>
	<td>300</td>
	</tr>
	</tbody>
	</table>
	
	<div class="panel panel-default">
			<div class="panel panel-body">

				<div class="col-sm-3"></div>
				<div class="col-sm-3">
					<input type="submit" class="btn btn-primary" name="showdetail" value="Show Array With Title" id="showdetail">
				</div>
				<div class="col-sm-5">
					<input type="submit" name="showdata" value="Show Only Data" class="btn btn-success" id="showdata"
						class="col-sm-10">
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	</form>
</div>

</body>
</html>