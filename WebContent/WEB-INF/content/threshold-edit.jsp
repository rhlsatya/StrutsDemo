<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix = "s" uri = "/struts-tags"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Threshold Edit</title>

<style>

.back-button {
  background-color: red;
  color: white;
  padding: 8px 4px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  top: 5px;
  right: 5%;
  width: 80px;
}
.open-button {
  background-color: #555;
  color: white;
  padding: 13px 15px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 40px;
  right: 51%;
  width: 150px;
}

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
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
<s:form theme = "simple">
<table class = "table">
	<tr>
		<th>Part Name</th>
		<th>Minimum Stock Threshold</th>
	</tr>
	<tr>
		<td>Alternator </td>
		<td><s:textfield name="alternatorThreshold" type="number" min = "0"/></td>
	</tr>
	<tr>
		<td>Axle Shaft</td>
		<td><s:textfield name="axleShaftThreshold" type="number" min = "0"/></td>
	</tr>
	<tr>
		<td>Brake Pads</td>
		<td><s:textfield name="brakePadsThreshold" type="number" min = "0"/></td>
	</tr>
	<tr>
		<td>Clutch</td>
		<td><s:textfield name="clutchThreshold" type="number" min = "0"/></td>
	</tr>
	<tr>
		<td>Engine</td>
		<td><s:textfield name="engineThreshold" type="number" min = "0"/></td>
	</tr>
	<tr>
		<td>Suspension</td>
		<td><s:textfield name="suspensionThreshold" type="number" min = "0"/></td>
	</tr>
</table>

	<s:submit value="Update" class = "open-button"/>
</s:form>

<button onclick="window.location.href='satya/main-screen'" class = "back-button">Go Back</button>
 
</body>
</html>