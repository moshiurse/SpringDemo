
var appraisalMarksJsonCommon = [];
var employeeJsonCommon = [];
var departmentsJsonCommon = [];
var appraisalHeadsJsonCommon = [];

function funGetTableFromJsonData(jsonData,tableName){
	
	var keys = $.map( jsonData[0], function( value, key ) {
		  return key;
		});
		
		//$('#DynTbl').append('<table id="dytable" border=1><tr id="dth"></tr></table>');

		/* $.each(keys, function(key,value) {
		    $('#dth').append('<th>'+value+'</th>');
		}); */

		//$('#' + tableName).append("<tbody>");
		$.each(jsonData, function(index,data) {

			$('#' + tableName).append('<tr id="t'+index+'"></tr>');

				var values = $.map( data, function( value, key ) {
			  	return value;
			});

			$.each(values, function(key,value) {
			    $('#t'+index).append('<td>'+value+'</td>');
			});
		});
		//$('#' + tableName).append("</tbody>");
		//alert($('#' + tableName).html())
}





//Function for getting employee list
function funGetAppEmployeeListCommon(){
	
	//var employeeJson = [];	
	return employeeJsonCommon;
	
} //End funGetAppEmployeeListCommon() 



//Function for generating year dropdown
function funGetYearDropDown(comboId, yearRange){
	var date = new Date();
	var curYear = date.getFullYear();
	var htmlCode = '<select class="form-control" id="' + comboId + '" name="' + comboId + '">';
	var optionBellow = '';
	var optionUp = '';
	
	for(var i = 1; i <= yearRange; i++){
		optionUp += '<option value="' + (curYear + i) + '">' + (curYear + i) + '</option>';
	}
	
	for(var i = yearRange; i >= 1; i--){
		
		optionBellow += '<option value="' + (curYear - i) + '">' + (curYear - i) +  '</option>';
	}
	
	htmlCode += optionBellow + '<option value="' + curYear + '" selected>' + curYear + '</option>' + optionUp + '</select>'; 
	
	return htmlCode;
	
} // End funGetYearDropDown()


//Function for getting employee name from json array
function funGetEmployeeNameFromJson(vEmoCode){
	
	var empName = '';
	
	$.each(employeeJsonCommon, function(i, v) {
	    if (v.empCode == vEmoCode) {
	  
	    	empName = v.empName;
	        
	    	return;
	    } 
	});
	
	//alert(empName);
	
	return empName;
} // End funGetEmployeeNameFromJson()



//Function for getting employee name,designation,department from json array
function funGetEmpNameDesigDept(vEmoCode){
	
	var empName = '';
	
	$.each(employeeJsonCommon, function(i, v) {
	    if (v.empCode == vEmoCode) {
	  
	    	empName = v.empName + ', ' + v.empDesig + ', ' +  v.empDept;
	        
	    	return;
	    } 
	});
	
	//alert(empName);
	
	return empName;
} // End funGetEmployeeNameFromJson()




//Function for returning appraisal marks list with details
function funGetAppraisalMarksList(){
	return appraisalMarksJsonCommon;
}



/* Function returns marks head name from appraisalMarksJsonCommon */ 
function funGetMarksHeadNameFromJson(vMarks,vVersion){
	
	var marksTitle = '';
	
	$.each(appraisalMarksJsonCommon, function(i, v) {
	    if (v.marks == vMarks && v.versionNo == vVersion) {
	    	marksTitle = v.marksDesc;
	        return;
	    } 
	});		
	
	return marksTitle;
	
	
} // End funGetAppraisalHeadName()



//Function for returning appraisal marks list with details
function funGetDepartmentListCommon(){
	
	return departmentsJsonCommon;
}





// Function for getting appraisal head list
function funGetAppraisalHeadsCommon(){
	
	return appraisalHeadsJsonCommon;
} // End of funGetAppraisalHeadsCommon



// Function for returning appraisal head name
function funGetAppraisalHeadName(vHeadId){
	
	var headName = '';
	
	$.each(appraisalHeadsJsonCommon, function(i, v) {
	    if (v.id == vHeadId) {
	  
	    	headName = v.headName;
	        
	    	return;
	    } 
	});
		
	return headName;
} // End funGetAppraisalHeadName()



//Function for returning appraisal head group name
function funGetAppraisalHeadGroupName(vHeadId){
	
	var headParent = '';
	
	$.each(appraisalHeadsJsonCommon, function(i, v) {
	    if (v.id == vHeadId) {
	  
	    	headParent = v.headParent;
	        
	    	return;
	    } 
	});
	
	if(headParent != ''){
		return funGetAppraisalHeadName(headParent);
	} else {
		return null;
	}
	
} // End funGetAppraisalHeadName()

