<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Ninja Form</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<fieldset style="width:50%;margin:40px auto;">
<form:form action="/ninjas/createninja" method="post" modelAttribute="ninja">

<h1>New Ninja</h1>
<table>

<tr>
<td>
Dojo
</td>
<td>
<select name="dojo" style="width:240px;">
    <c:forEach items="${dojos}" var="dojo">
    <option value="${dojo.id}" label="${dojo.name}"></option>
    </c:forEach>
</select>
</td>
</tr>
<tr>
<td>
First Name:
</td>
<td>
<input name="firstName" type="text" />
</td>
</tr>
<tr>
<td>
Last Name:
</td>
<td>
<input name="lastName" type="text" />
</td>
</tr>
<tr>
<td>
Age:
</td>
<td>
<input name="age" type="text" />
</td>
</tr>
</table>
<input type="submit" value="Create Ninja" />
</form:form>
</fieldset>
<a href="/dojos/">Back</a>
</body>
</html>