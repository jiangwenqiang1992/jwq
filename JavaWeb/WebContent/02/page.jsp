<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  List<String> l = new ArrayList();
	l.add("a");
	l.add("b");
	l.add("c");
	l.add("d");
	l.add("e");
	l.add("f");
	for(int i=0;i<l.size();i++){
		out.print(l.get(i)+"\n");
	}
	
	%>
</body>
</html>