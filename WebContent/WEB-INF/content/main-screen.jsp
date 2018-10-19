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
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
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

.btn {
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
</style>



</head>
<body>
 <h1>Enter Number</h1>
 
 <table>
  <tr>
    <th>Part Name</th>
    <th>In Stock</th> 
    <th>Minimum Stock Threshold</th>
  </tr>
  <tr>
    <td><button onclick="openFormAlternator()">Alternator</button></td>
    <td> <s:property value = "alternator"/></td> 
    <td><s:property value = "alternatorThreshold"/></td>
  </tr>
  <tr>
    <td><button onclick="openFormAxleShaft()">Axle Shaft</button></td>
    <td> <s:property value = "axleShaft"/></td> 
    <td><s:property value = "axleShaftThreshold"/></td>
  </tr>
  <tr>
    <td><button onclick="openFormBrakePads()">Brake Pads</button></td>
    <td> <s:property value = "brakePads"/></td> 
    <td><s:property value = "brakePadsThreshold"/></td>
  </tr>
  <tr>
    <td><button onclick="openFormClutch()">Clutch</button></td>
    <td> <s:property value = "clutch"/></td> 
    <td> <s:property value = "clutchThreshold"/></td> 
  </tr>
  <tr>
    <td><button onclick="openFormEngine()">Engine</button></td>
    <td> <s:property value = "engine"/></td> 
    <td> <s:property value = "engineThreshold"/></td> 
  </tr>
  <tr>
    <td><button onclick="openFormSuspension()">Suspension</button></td>
    <td> <s:property value = "suspension"/></td> 
    <td> <s:property value = "suspensionThreshold"/></td> 
  </tr>
</table>

<div class="form-popup" id="formAlternator">
	<s:form class="form-container">
		<h3>Alternator</h3>
 		<s:textfield name = "alternator" type = "number" min = "%{alternatorThreshold}"/>
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formAxleShaft">
	<s:form class="form-container">
		<h3>Axle Shaft</h3>
 		<s:textfield name = "axleShaft" type = "number" min = "%{axleShaftThreshold}"/>
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>
<div class="form-popup" id="formBrakePads">
	<s:form class="form-container">
		<h3>Brake Pads</h3>
 		<s:textfield name = "brakePads" type = "number" min = "%{brakePadsThreshold}"/>
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div><div class="form-popup" id="formClutch">
	<s:form class="form-container">
		<h3>Clutch</h3>
 		<s:textfield name = "clutch" type = "number" min = "%{clutchThreshold}"/>
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div><div class="form-popup" id="formEngine">
	<s:form class="form-container">
		<h3>Engine</h3>
 		<s:textfield name = "engine" type = "number" min = "%{engineThreshold}"/>
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div><div class="form-popup" id="formSuspension">
	<s:form class="form-container">
		<h3>Suspension</h3>
 		<s:textfield name = "suspension" type = "number" min = "%{suspensionThreshold}" />
 		<s:submit value = "Update" class="btn"/>
 		<button type="button" class="btn cancel" onclick="closeForms()">Close</button>
 	</s:form>
</div>

<script>


function checkValue() {
	
}


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