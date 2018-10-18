<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "s" uri = "/struts-tags"%> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Enter Number</h1>
 <s:form>
 	<s:textfield name = "enteredNumber"/>
 	<s:submit value = "Enter"/>
 </s:form>
 <div>
 	Last Entered Number: <s:property value = "enteredNumber"/>
 	Total After Addition: <s:property value = "total"/> 
 </div>
 <div>
 	<s:property value = "maxTotal"/> 
 </div>
</body>
</html>