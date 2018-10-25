<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "s" uri = "/struts-tags"%> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- <link rel="stylesheet" type="text/css" href="add-form.css">
 -->
 
 
<title>Main Screen</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 13px 15px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 73px;
  right: 52%;
  width: 200px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 12px;
  right: 95px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}



table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

.table tr:nth-child(even) {background-color: #f2f2f2;}

</style>

</head>
<body>
        
<table class = "table">
 <thead>
  <tr>
    <th>Part Name</th>
    <th>In Stock</th> 
    <th>Minimum Stock Threshold</th>
  </tr>
 </thead>
 <tbody>
  <tr>
    <td style= "cursor:pointer" onClick="openFormAlternator()">Alternator</td>
    <td> <s:property value = "alternator"/></td> 
    <td><span id="alternatorThreshold"><s:property value = "alternatorThreshold"/></span></td>
  </tr>
  <tr>
    <td style= "cursor:pointer" onClick="openFormAxleShaft()">Axle Shaft</td>
    <td> <s:property value = "axleShaft"/></td> 
    <td><span id="axleShaftThreshold"><s:property value = "axleShaftThreshold"/></span></td>
  </tr>
  <tr>
    <td style= "cursor:pointer" onClick="openFormBrakePads()">Brake Pads</td>
    <td> <s:property value = "brakePads"/></td> 
    <td><span id="brakePadsThreshold"><s:property value = "brakePadsThreshold"/></span></td>
  </tr>
  <tr>
    <td style= "cursor:pointer" onClick="openFormClutch()">Clutch</td>
    <td> <s:property value = "clutch"/></td> 
    <td> <span id="clutchThreshold"><s:property value = "clutchThreshold"/></span></td> 
  </tr>
  <tr>
    <td style= "cursor:pointer" onClick="openFormEngine()">Engine</td>
    <td> <s:property value = "engine"/></td> 
    <td> <span id="engineThreshold"><s:property value = "engineThreshold"/></span></td> 
  </tr>
  <tr>
    <td style= "cursor:pointer" onClick="openFormSuspension()">Suspension</td>
    <td> <s:property value = "suspension"/></td> 
    <td> <span id="suspensionThreshold"><s:property value = "suspensionThreshold"/></span></td> 
  </tr>
 </tbody>
</table>

<button onclick="window.location.href='satya/threshold-edit'" class = "open-button">Edit Thresholds</button>

<div class="form-popup" id="formAlternator">
	<s:form class="form-container">
		<h3>Alternator</h3>
 		<s:textfield id = "fieldAlternator" class = "text-field" name = "alternator" type = "number" min = "0"/>
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('alternatorThreshold','fieldAlternator')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formAxleShaft">
	<s:form class="form-container">
		<h3>Axle Shaft</h3>
 		<s:textfield id = "fieldAxleShaft" class = "text-field" name = "axleShaft" type = "number" min = "0"/>
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('axleShaftThreshold','fieldAxleShaft')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formBrakePads">
	<s:form class="form-container">
		<h3>Brake Pads</h3>
 		<s:textfield id = "fieldBrakePads" class = "text-field" name = "brakePads" type = "number" min = "0"/>
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('brakePadsThreshold','fieldBrakePads')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formClutch">
	<s:form class="form-container">
		<h3>Clutch</h3>
 		<s:textfield id = "fieldClutch" class = "text-field" name = "clutch" type = "number" min = "0"/>
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('clutchThreshold','fieldClutch')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formEngine">
	<s:form class="form-container">
		<h3>Engine</h3>
 		<s:textfield id = "fieldEngine" class = "text-field" name = "engine" type = "number" min = "0"/>
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('engineThreshold','fieldEngine')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formSuspension">
	<s:form class="form-container">
		<h3>Suspension</h3>
 		<s:textfield id = "fieldSuspension" class = "text-field" name = "suspension" type = "number" min = "0" />
 		<s:submit value = "Update" class="btn" onClick="thresholdAlert('suspensionThreshold','fieldSuspension')"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<%-- <s:property value="suspensionThreshold"/>, "fieldSuspension"  --%>
<script>
	
	
function thresholdAlert( thresholdValue, fieldName ) {
	console.log(5 + 6);
	var x = document.getElementById(fieldName).value;
	var y = document.getElementById(thresholdValue).innerHTML;
	
	if(x<y && x>=0 && typeof x == 'number')
		alert("Value has been updated to below the Threshold.");
	
	console.log(y); 
	
	
}
	
	
/* document.addEventListener("DOMContentLoaded", function() {
    var elements = document.getElementsByClassName("text-field");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
            	
            	if(e.target.validity.badInput){
          	      e.target.setCustomValidity('Please Enter an Integer');
          	      return;
          	    }
          	    if(e.target.validity.rangeUnderflow){
          	      e.target.setCustomValidity('Value Must be Greater than Zero');
          	      return;
          	    }
          	    if(e.target.validity.valueMissing){
          	      e.target.setCustomValidity("Value Missing");
          	      return;
          	    }
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
}) */



function closeForms() {
	var elements = document.getElementsByClassName("form-popup")

    for (var i = 0; i < elements.length; i++){
        elements[i].style.display = "none";
    }
}

function openFormAlternator() {
	closeForms();
    document.getElementById("formAlternator").style.display = "block";
}

function openFormAxleShaft() {
	closeForms();
    document.getElementById("formAxleShaft").style.display = "block";
}

function openFormBrakePads() {
	closeForms();
    document.getElementById("formBrakePads").style.display = "block";
}

function openFormClutch() {
	closeForms();
    document.getElementById("formClutch").style.display = "block";
}

function openFormEngine() {
	closeForms();
    document.getElementById("formEngine").style.display = "block";
}

function openFormSuspension() {
	closeForms();
    document.getElementById("formSuspension").style.display = "block";
}

</script>
 
 
 
</body>
</html>