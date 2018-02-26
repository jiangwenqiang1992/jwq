<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:forward page="login.jsp">
	<jsp:param value="admin" name="user"/>
	<jsp:param value="123456" name="passwd"/>
</jsp:forward>