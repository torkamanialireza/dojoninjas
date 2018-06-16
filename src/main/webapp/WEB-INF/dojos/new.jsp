<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New Dojo</title>
</head>
<body>

<fieldset style="width:50%;margin:40px auto;">
<h1>New Dojo</h1>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<form:form action="/dojos/createdojo" method="post" modelAttribute="dojo">
    <p>
        <form:label path="name">name</form:label>
        <form:errors path="name"/>
        <form:input path="name"/>
    </p>   
    <input type="submit" value="Create Dojo"/>
</form:form> 
</fieldset>   
<a href="/dojos/">Back</a>
</body>
</html>