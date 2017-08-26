<script type="text/javascript">

$(document).ready(function(){
	
	
function viewData(){
	var data[] = {};
	
	data["studentid"] = $("#studentid").val();
	data["marks"] = $("#marks").val();
	data["grade"] = $("#grade").val();
	
	var id = $("#id").val();
	
		
		$.post("showAllResult", function(data){
			
			var dataTable = '<table class="table"><tr><th>ID</th><th>Student ID</th><th>Marks</th></th><th>Grade</th></tr>';
			
			for(var key in data){
				dataTable += '<tr><td>' + data[key].id + '</td><td>' + data[key].studentid + '</td><td>' + data[key].marks + '</td><td>' + data[key].grade + '</td></tr>';
			}
			
			dataTable += '</table>';
			
			$("#divDataTable").html(dataTable);
		})
	}
})


</script>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Search input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="serchresult">Student ID</label>
  <div class="col-md-4">
    <input id="serchresult" name="serchresult" type="search" placeholder="Search ID" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="searchbtn"></label>
  <div class="col-md-4">
    <button id="searchbtn" name="searchbtn" class="btn btn-primary">Search</button>
  </div>
</div>

</fieldset>
</form>

<div id="divDataTable">

</div>



</body>
</html>