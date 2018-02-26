<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int i = 10; %>
<table width="100" height="50" border="1" align="left">
	<caption>表格</caption>
	<tr>
		<td><%=i+1 %></td>
		<td><%=i+2 %></td>
		<td><%=i+3 %></td>
		<td><%=i+4 %></td>
	</tr>
		<tr>
		<td><%=i+5 %></td>
		<td><%=i+6 %></td>
		<td><%=i+7 %></td>
		<td><%=i+8 %></td>
	</tr>
</table>
</body>
</html>