<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="insert" class="test.db.insert.InsertTest"></jsp:useBean>
<%
String rentalfee = request.getParameter("rentalfee");
String deposit = request.getParameter("deposit");
String period = request.getParameter("period");
String trade = request.getParameter("trade");

insert.insertRental(rentalfee, deposit, period, trade);

//insert.insert(rental, deposit, able, trade, condition, position, info);
response.sendRedirect("K_view.jsp");
%>
</body>
</html>