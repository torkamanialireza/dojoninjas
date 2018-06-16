<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dojo Page</title>
<style>

tr:nth-child(odd) {
background-color:#ababab;
}
td {
border:solid 1px black;
}


</style>
</head>

<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<%-- <c:out value="${allninjasforcurrentdojo.size()}"/>Ninjas --%>
<table style="width:70%; margin:20px auto; background-color:#CCC;border:solid 1px black">

<thead>
<tr><h1 style="text-align:center"><c:out value="${dojo.name}"/></h1></tr>
	<tr>
	<td><strong>First Name</strong></td>
	<td><strong>Last Name</strong></td>
	<td><strong>Age</strong></td>
	</tr>
</thead>
<tbody>
<c:forEach items="${allninjasforcurrentdojo}" var="ninja">
	<tr>
	<td><c:out value="${ninja.firstName}"/></td>
	<td><c:out value="${ninja.lastName}"/></td>
	<td><c:out value="${ninja.age}"/></td>
	</tr>
</c:forEach>
</tbody>
</table>
<a href="/dojos">Back</a>
</body>
</html>