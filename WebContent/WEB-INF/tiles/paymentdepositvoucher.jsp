


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Deposit Voucher</title>
<script type="text/javascript">

	$(document).ready(function() {

		$("#finish").click(function(event) {
			event.preventDefault();
			
			if(validator()){
				var data = {};
				
				data["voucher"] = $("#voucher").val();
				data["transaction"] = $("#transaction").val();
				data["voucherId"] = $("#voucherid").val();
				data["date"] = $("#date").val();
				data["project"] = $("#project").val();
				data["department"] = $("#department").val();
				data["cashInHand"] = $("#cashinhand").val();
				data["bankAcc"] = $("bankacc").val();
				data["chequeNo"] = $("#chequeno").val();
				data["mrNo"] = $("#mrno").val();
				data["controllHead"] = $("#controllhead").val();
				data["client"] = $("#client").val();
				data["debit"] = $("#debit").val();
				data["credit"] = $("#credit").val();
				
				alert(JSON.stringify(data));
				
				$("#errorMessage").addClass("hidden");
				$("#successMessage").html("Successfull!!").removeClass("hidden");
			}
		
		});
		
		 function validator(){
			 
		 var voucher= $.trim($("#voucher").val());
		 var transaction = $.trim($("#transaction").val());
		 var voucherId = $.trim($("#voucherid").val());
		 var date = $.trim($("#date").val());
		 var project = $.trim($("#project").val());
		 var department = $.trim($("#department").val());
		 var cashInHand = $.trim($("#cashinhand").val());
		 var bankAcc = $.trim($("#bankacc").val());
		 var chequeNo = $.trim($("#chequeno").val());
		 var mrNo = $.trim($("#mrno").val());
		 var controllHead = $.trim($("#controllhead").val());
		 var client = $.trim($("#client").val());
		 var debit = $.trim($("#debit").val());
		 var credit = $.trim($("#credit").val())		
		
		if(voucher == ""){		
		   	 	$("#errorMessage").html("!! You must check a voucher type!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(transaction == ""){		
		   	 	$("#errorMessage").html("You must check a transaction type!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(voucherId == ""){		
		   	 	$("#errorMessage").html("!! Please enter a voucher ID");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(date == ""){		
		   	 	$("#errorMessage").html("!! Please enter Date");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(project == ""){		
		   	 	$("#errorMessage").html("!! Please enter your project!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(department == ""){		
		   	 	$("#errorMessage").html("!! Please enter your Department");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(cashInHand == ""){		
		   	 	$("#errorMessage").html("!! Please enter Cash in Hand Amount");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(bankAcc == ""){		
		   	 	$("#errorMessage").html("Please enter Bank Account!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(chequeNo == ""){		
		   	 	$("#errorMessage").html("!!Please enter Cheque no!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(mrNo == ""){		
		   	 	$("#errorMessage").html("Please enter MR No !!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(controllHead == ""){		
		   	 	$("#errorMessage").html("!! Please enter Control Head !!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(client == ""){		
		   	 	$("#errorMessage").html("Please enter Client Infor!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(debit == ""){		
		   	 	$("#errorMessage").html("Please enter your Debit balance!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 if(credit == ""){		
		   	 	$("#errorMessage").html("Please enter your credit balance!!");
		   	    $("#errorMessage").removeClass("hidden");
		   	    $("#successMessage").addClass("hidden");	         	      	 
		        return false;		                
			}
		 
		 return true;
		 }
		 
	
	});
	
</script>

</head>
<body>
		<div class="panel panel-default">
			<div style="padding: 25px;">
				<div class="container center_div">

					<div class="col-sm-10">
						<div class="form-group">
							<div class="col-sm-12 panel panel-heading"
								style="background-color: green;">
								PAYMENT DEPOSIT VOUCHER <span style="color: white">[DAFFODIL
									INTERNATIONAL UNIVERSITY]</span>
							</div>
						</div>


						<div id="successMessage" align="center"
							class="hidden alert alert-success"></div>
						<div id="errorMessage" align="center"
							class="hidden alert alert-danger"></div>


						<div class="form-group">
							<div class="panel panel-body">
								<div class="col-sm-6" style="padding-bottom: 5px;">

									<input type="radio" id="voucher" name="voucher"
										value="payment_voucher" checked="checked">Payment
									Voucher <input type="radio" name="voucher" id="voucher"
										value="deposit_voucher">Deposit Voucher
								</div>
								<div class="col-sm-3" style="padding-bottom: 5px;"></div>
								<div class="col-sm-3" style="padding-bottom: 5px;">

									<input type="radio" name="transaction" id="transaction"
										value="cash" checked="checked">Cash <input
										type="radio" name="transaction" id="transaction" value="bank">Bank
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel panel-body">
								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Voucher ID:</label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="voucherid"
											id="voucherid">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-2"></div>
								</div>
								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Date :</label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="date" id="date">
									</div>
								</div>
								<br>
								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Project : </label>
									</div>
									<div class="col-sm-10" style="padding-top: 5px">
										<input type="text" class="form-control" name="project"
											id="project">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Department : </label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<select name="department" class="form-control" id="department">
											<option value="">Select...</option>
											<option value="SWE">SWE</option>
											<option value="CSE">CSE</option>
											<option value="EEE">EEE</option>
										</select>
									</div>
								</div>
								<div class="col-sm-2"></div>
								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Cash in Hand : </label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="cashinhand"
											id="cashinhand">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Bank Account :</label>
									</div>
									<div class="col-sm-10" style="padding-top: 5px">
										<input type="text" class="form-control" name="bankacc"
											id="bankacc">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Cheque No: </label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="chequeno"
											id="chequeno">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2"></div>
									<div class="col-sm-2" style="padding-top: 5px">
										<label>MR. No :</label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="mrno" id="mrno">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Controll Head : </label>
									</div>
									<div class="col-sm-10" style="padding-top: 5px">
										<input type="text" class="form-control" name="controllhead"
											id="controllhead">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Client :</label>
									</div>
									<div class="col-sm-10" style="padding-top: 5px">
										<select name="client" class="form-control" id="client">
											<option value="">Select...</option>
											<option value="SWE">SWE</option>
											<option value="CSE">CSE</option>
											<option value="EEE">EEE</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Debit: </label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="debit"
											id="debit">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-2"></div>
									<div class="col-sm-2" style="padding-top: 5px">
										<label>Credit : </label>
									</div>
									<div class="col-sm-3" style="padding-top: 5px">
										<input type="text" class="form-control" name="credit"
											id="credit">
									</div>
								</div>
							</div>
						</div>
					</div>

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
			<div class="panel panel-body">
				<div class="col-sm-5"></div>
				<div class="col-sm-7" style="padding-bottom: 5px">
					<input type="submit" class="btn btn-lg btn-success" name="finish"
						value="FINISH" id="finish">
				</div>
			</div>
		</div>
	
</body>
</html>