<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dojos Information</title>
</head>
<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<h1 style="text-align:center">Information</h1>
<table style="width:50%;margin:40px auto;">
    <thead>
        <tr>
            <td><strong>Dojo Name</strong></td>
            <td><strong>Ninjas Count</strong></td>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${dojos}" var="dojo">
        <tr>
        	<td><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}" /></a></td>
            <td><c:out value="${dojo.getNinjas().size()}"/> ninjas</td>
            
        </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/dojos/create">Create New Dojo</a> | <a href="/ninjas/new">New Ninja</a>
</body>
</html>