
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Deposit Voucher</title>
<script type="text/javascript">
// ------------------- Start document.ready()---------------------------
	$(document).ready(function() {
			
		// ------------------Start Calling all functions--------------------------
			showControllHead();
			radioCheck();
			firstcheck();
		// ------------------- End of Calling all methods ------------------------	
		
		//----------------Start - Datepicker For Date Input-------------------
		$(function(){
			$("#date").datepicker({
				dateFormat: "yy-mm-dd"
			});
		});
		
		//--------------End of - Datepicker---------
			
		// First Checked value functionality...
		function firstcheck(){
			
			var vouchervalue = $("input[name='voucher']:checked").val();
			
			if(vouchervalue == 1){
				$("#credit").prop("disabled", true);
		        $("#debit").prop("disabled", false);
			}
			if(vouchervalue == 2){
		        $("#debit").prop("disabled", true);
		        $("#credit").prop("disabled", false);
			}
			
			var transactionvalue = $("input[name='transaction']:checked").val();
			
			if(transactionvalue == 1){
				$("#bankacc").prop("disabled", true);
	            $("#chequeno").prop("disabled", true);
	            $("#cashinhand").prop("disabled", false);
			}
			if(transactionvalue == 2){
				$("#cashinhand").prop("disabled", true);
	            $("#bankacc").prop("disabled", false);
	            $("#chequeno").prop("disabled", false);
			}
		
		}
		//Finished First Checked value functionality...

		//--------------------Start - Data Load to combo box----------------------
		function showControllHead() {
			$.post("showControllHead",function(ca) {
								
				var option = '<select class="form-control" id="controllhead" name="controllhead"><option value="0">Select</option>';
				for (var key in ca) {
					option += '<option value="'+ca[key].caName+'"> '+
					ca[key].caName+ ' </option>';
				}
				option += '</select>';
				
				$("#controllheaddiv").html(option);
			
			});
		}
					 
	 //---------------------- End of Data Load to combo box Task Complete-------------------
		 
	 //----------------Start- Disable some input after Click RadioButton-------------------
		 		function radioCheck() {
					$('input[name="voucher"]') 
					.change(function(){ 
						if( $(this).is(":checked") ){ 
					        var val = $(this).val(); 

					        if (val == 1) {
							
					        $("#credit").prop("disabled", true);
					        $("#debit").prop("disabled", false);
					    } else if (val == 2) {
							
					        $("#debit").prop("disabled", true);
					        $("#credit").prop("disabled", false);
					    }
					    }
					});


					 $('input[name="transaction"]') 
					.change(function()
							{ 
					    if( $(this).is(":checked") ){ 
					        var val = $(this).val(); 
					      if (val == 1) {

					            $("#bankacc").prop("disabled", true);
					            $("#chequeno").prop("disabled", true);
					            $("#cashinhand").prop("disabled", false);
					        }

					        if (val == 2) {

					            $("#cashinhand").prop("disabled", true);
					            $("#bankacc").prop("disabled", false);
					            $("#chequeno").prop("disabled", false);
					        }
					    }
					});
	 } 
					 
	// ---------------End of - Disable some input after Click RadioButton--------------------

			/*	
				$(".voucher").on( "click", function(event) {
					var target = $( event.target );
			        if (target.is(":checked")) {
			            check = target.val();
			            alert(check);
			            if (check == 1) {

			                $("#credit").prop("disabled", true);
			                $("#debit").prop("disabled", false);
			            } else if (check == 2) {

			                $("#debit").prop("disabled", true);
			                $("#credit").prop("disabled", false);
			            }
			        }
			    });
				
				 $(".transaction").click(function(event) {
				     var target = $( event.target );
				        if (target.is(":checked")) {
				            checktransaction = target.val();
				            alert(checktransaction);
				            if (checktransaction == 1) {

				                $("#bankacc").prop("disabled", true);
				                $("#chequeno").prop("disabled", true);
				                $("#cashinhand").prop("disabled", false);
				            }

				            if (checktransaction == 2) {

				                $("#cashinhand").prop("disabled", true);
				                $("#bankacc").prop("disabled", false);
				                $("#chequeno").prop("disabled", false);
				            }
				        }
				    });
			 */
			 
			 
		// ------------------- Start- Save Button function----------------------------- 
		 	$("#save").click(function(event){

				
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
				var debit = $.trim($("#debit").val());
				var credit = $.trim($("#credit").val());
				
				var dataTable = '<tr><td>'+controllHead+'</td><td>'+debit+'</td><td>'+credit
				+'</td><td>'+chequeNo+'</td><td>'+project
				+'</td><td>'+mrNo+'</td><td>'+department
				+'</td></tr>';
				dataTable += '</table>';
				
				$("#showtable").append(dataTable);

		 })
		 
		 // ---------------- End of - Save Button function----------------------
				
		 // ------------------ Start - SaveVoucher Button---------------------
		 $("#savevoucher").click(function(event){
			 
			 	var data = {};
				data["voucherNo"] = $("#voucherid").val();
				data["voucherDate"] = $("#date").val();
				data["narration"] = $("#narration").val();
				alert(JSON.stringify(data));
				$.ajax({
					type: "POST",
					url: "saveVoucherMaster",
					data: JSON.stringify(data),
					contentType: "application/json; charset=utf-8",
					success: function (successData) {
						alert(JSON.stringify(data));
					},
					error: function(error){
						alert(JSON.stringify(error));
					}
				});
		 })
		 
		 
		 // ------------------- End Of  SaveVoucher Button
		 
						 
		// ------------------------Start- Finish Button -----------------
		$("#finish").click(function(event) {
			event.preventDefault();

				if (validator()) {
					var data = {};

					data["voucher"] = $("#voucher").val();
					data["transaction"] = $("#transaction").val();
					data["voucher_id"] = $("#voucherid").val();
					data["date"] = $("#date").val();
					data["project"] = $("#project").val();
					data["department"] = $("#department").val();
					data["cash_in_hand"] = $("#cashinhand").val();
					data["bank_account"] = $("bankacc").val();
					data["cheque_no"] = $("#chequeno").val();
					data["mr_no"] = $("#mrno").val();
					data["controll_head"] = $("#controllhead").val();
					data["debit"] = $("#debit").val();
					data["credit"] = $("#credit").val();
					alert(JSON.stringify(error));

						$.ajax({
							type : "POST",
							url : "/saveVoucher",
							data : JSON.stringify(data),
							contentType : "application/json; charset=utf-8",
							success : function(
									successData) {
								$("#successMessage").html(successData);
								$("#successMessage").removeClass("hidden");
								$("#errorMessage").addClass("hidden");
							},
							error : function(
									error) {
								$("#errorMessage").html("Error: Record Not Saved");
								$("#errorMessage").removeClass("hidden");
								$("#submit").prop("disabled",false);
								alert(JSON.stringify(error));
							}

						});
					}
				});
		 // ----------------------End of - Finish Button -----------------------

		 // --------------------- Start Validator Function-----------------------
						function validator() {

							var voucher = $.trim($("#voucher").val());
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
							var debit = $.trim($("#debit").val());
							var credit = $.trim($("#credit").val())

							if (voucher == 0) {
								$("#errorMessage").html("!! You must check a voucher type!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (transaction == 0) {
								$("#errorMessage").html("You must check a transaction type!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (voucherId == "") {
								$("#errorMessage").html("!! Please enter a voucher ID");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (date == "") {
								$("#errorMessage").html("!! Please enter Date");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (project == "") {
								$("#errorMessage").html("!! Please enter your project!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (department == "") {
								$("#errorMessage").html("!! Please enter your Department");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							/* if (cashInHand == "") {
								$("#errorMessage").html("!! Please enter Cash in Hand Amount");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (bankAcc == "") {
								$("#errorMessage").html("Please enter Bank Account!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (chequeNo == "") {
								$("#errorMessage").html("!!Please enter Cheque no!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							} */
							if (mrNo == "") {
								$("#errorMessage").html("Please enter MR No !!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (controllHead == "") {
								$("#errorMessage").html("!! Please enter Control Head !!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							/* if (debit == "") {
								$("#errorMessage").html("Please enter your Debit balance!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							}
							if (credit == "") {
								$("#errorMessage").html("Please enter your credit balance!!");
								$("#errorMessage").removeClass("hidden");
								$("#successMessage").addClass("hidden");
								return false;
							} */

							return true;
						}
		 //--------------------End of Validation function--------------------------

					});
		// ----------------- End of Document.ready()-----------------------------
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

								<input type="radio" class="voucher" name="voucher" value="1"
									checked="checked">Payment Voucher <input type="radio"
									name="voucher" class="voucher" value="2">Receive
								Voucher
							</div>
							<div class="col-sm-3" style="padding-bottom: 5px;"></div>
							<div class="col-sm-3" style="padding-bottom: 5px;">

								<input type="radio" name="transaction" class="transaction"
									value="1" checked="checked">Cash <input type="radio"
									name="transaction" class="transaction" value="2">Bank
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
								<div class="col-sm-10" id="controllheaddiv">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-2" style="padding-top: 5px">
									<label>Debit: </label>
								</div>
								<div class="col-sm-3" style="padding-top: 5px">
									<input type="text" class="form-control" name="debit" id="debit">
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

							<div class="form-group">
								<div class="col-md-8 col-md-offset-4" style="padding-top: 5px">
									<input type="submit" class="btn btn-lg btn-success col-md-6"
										name="save" value="Save" id="save">
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="col-sm-10">
			<div class="panel panel-default">
				<div >
					<table class="table" id="showtable">
						<tr>
							<th>ACCOUNT HEAD</th>
							<th>DEBIT</th>
							<th>CREDIT</th>
							<th>CHEQUE</th>
							<th>PROJECT NAME</th>
							<th>MR.NO</th>
							<th>DEPT NAME</th>
						</tr>

					</table>
				</div>
			</div>
		</div>


		<div class="col-sm-12">
			<div class="panel panel-body">
				<div class="col-sm-3"></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="debitbal"
						id="debitbal">
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="creditbal"
						id="creditbal">
				</div>
				<div class="col-sm-3" style="padding-bottom: 5px">
					<input type="submit" class="btn btn-lg btn-success" name="finish"
						value="FINISH" id="finish">
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel panel-body">
				<div class="col-sm-2">
					<label>Narration: </label>
				</div>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="narration"
						id="narration" class="col-sm-10">
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel panel-body">

				<div class="col-sm-5"></div>
				<div class="col-sm-1">
					<input type="submit" class="btn btn-danger" name="clear" value="CLEAR" id="clear">
				</div>
				<div class="col-sm-3">
					<input type="submit" name="savevoucher" value="SAVE VOUCHER" class="btn btn-success" id="savevoucher"
						class="col-sm-10">
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
		<div class="col-sm-10">
			<div class="panel panel-default">
				<div class="panel panel-body" style="background-color: green">
					<div class="col-sm-10">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<input type="text" name="search" class="form-control" id="search"
								placeholder="SEARCH" class="col-sm-12">
						</div>
						<div class="col-sm-4"></div>

					</div>
				</div>
			</div>


			<div class="panel panel-default">
				<div class="showtable">
					<table class="table">
						<tr>
							<th>VOUCHER NO</th>
							<th>VOUCHER DATE</th>
							<th>VOUCHER AMMOUNT</th>
							<th>STATUS</th>
						</tr>
					</table>
				</div>

			</div>


			<div class="panel panel-body" style="background-color: green">
				<div class="col-sm-10">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<h4>&copy;Moshiur Rahman</h4>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
