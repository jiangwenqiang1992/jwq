<%@page import="java.text.Normalizer.Form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jkxy.JdbcTest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改标的日期</title>
</head>
<body>
	<form action="result.jsp" method="post"  target="_blank">
	Borrow_ID： <input type="text" name="borrow_id" >
	修改天数：<input type="text" name="date" >
	<input type="submit" value="执行" />
	</form>
	<br>
	修改内容：<br>
	（标的表）bus_borrow：start_interest_time(起息日)  <br>
	（还款表）bus_repayment_detail：repay_date(回款日),real_repay_date(实际回款日) <br>
	（投资表）plat_customer_invest：cul_interest_start_time(起息日),last_repay_date(退出日),cul_interest_end_time(到期日) <br>
	（债转表）bus_borrow_debt：transfer_time(转让开始时间),transfer_end_date(转让结束时间) <br>
	（新网流水）plat_xwbank_transaction_deal_extend：deal_time(满标时间/还款时间)
</body>
</html>