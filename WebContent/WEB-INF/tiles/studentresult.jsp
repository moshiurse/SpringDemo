<script type="text/javascript">
$(document).ready(function(){
	
	// viewResult();
	
	// Validator function
	function validator(){
		
		var studentid = $.trim($("#studentid").val());
		var marks = $.trim($("#marks").val());
		
		if(studentid == ""){
			$("#errorMessage").html("!! Please enter a Student ID");
	   	    $("#errorMessage").removeClass("hidden");
	   	    $("#successMessage").addClass("hidden");	
			return false;
		}
		
		if(marks == ""){
			$("#errorMessage").html("!! Please enter Student marks");
	   	    $("#errorMessage").removeClass("hidden");
	   	    $("#successMessage").addClass("hidden");	
			return false;
		}
		
		return true;
	}
	
	
	/* Button Click Event*/
	
	$("#addmarks").click(function(event){
		
		// alert("Button Clicked!!");
		event.preventDefault();
		if(validator()){
			
			//create data array
			var data = {};
			data["studentid"] = $("#studentid").val();
			data["marks"] = $("#marks").val();
			alert(JSON.stringify(data));
			// send data using ajax/json
			$.ajax({
				type: "POST",
				url: "saveResult",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success: function(successData){
					alert("successfull");
					$("#successMessage").html(successData);
					$("successMessage").removeClass("hidden");
					$("#errorMessage").addClass("hidden");
					
				},
				error: function(error){
					 $("#errorMessage").html("Error: Record Not Saved");
	            	 $("#errorMessage").removeClass("hidden");
	                 $("#submit").prop("disabled", false);
	                 alert(JSON.stringify(error));
				}
				
				
			});
			// finish sending data using ajax
		}
		
		
	})
	// ending of button click event
	
	
})
//ending of jquery



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
<legend>Student Marks</legend>

<div id="successMessage" align="center" class="hidden alert alert-success"></div>
<div id="errorMessage" align="center" class="hidden alert alert-danger"></div>	

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="studentid">Student ID</label>  
  <div class="col-md-4">
  <input id="studentid" name="studentid" type="text" placeholder="Enter Student ID" class="form-control input-md" required="">
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="marks">Marks</label>  
  <div class="col-md-4">
  <input id="marks" name="marks" type="text" placeholder="Enter Marks" class="form-control input-md" required="">
    
  </div>
</div>


<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="addmarks"></label>
  <div class="col-md-8">
    <button id="addmarks" name="addmarks" class="btn btn-success">Add</button>
    <button id="clear" name="clear" class="btn btn-danger">Clear</button>
  </div>
</div>


</fieldset>
</form>


</body>
</html>