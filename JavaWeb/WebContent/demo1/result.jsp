<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jkxy.JdbcTest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>执行结果</title>
</head>
<body>
	<% String borrow_id = request.getParameter("borrow_id");  
	   String date = request.getParameter("date") ; %>
	修改标的：<% out.print(borrow_id); %> <br>
	修改天数：<% out.print(date); %> <br>
	受影响的行<br>
	bus_borrow：<% out.print(JdbcTest.update_bus_borrow(borrow_id, date)); %><br>
	bus_repayment_detail：<% out.print(JdbcTest.update_bus_repayment_detail(borrow_id, date)); %><br>
	plat_customer_invest：<% out.print(JdbcTest.update_plat_customer_invest(borrow_id, date)); %><br>
	bus_borrow_debt：<% out.print(JdbcTest.update_bus_borrow_debt(borrow_id, date)); %><br>
	plat_xwbank_transaction_deal_extend：<% out.print(JdbcTest.update_plat_xwbank_transaction_deal_extend(borrow_id, date)); %>
</body>
</html>