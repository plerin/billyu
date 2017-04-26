<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>This pase for insert to DB with previous data</h1>
	<jsp:useBean id="insert" class="test.db.insert.InsertTest"></jsp:useBean>
	<%
		/*
		String rental = request.getParameter("rental"); 
		String deposit = request.getParameter("deposit");
		String able = request.getParameter("able");
		String trade = request.getParameter("trade");
		String condition = request.getParameter("condition");
		String position = request.getParameter("position");
		String info = request.getParameter("info");
		
		
		title cetegory quantity condition info
		rentalfee  deposit period trade
		*/
		String title = request.getParameter("title");
		String cetegory = request.getParameter("cetegory");
		String quantity = request.getParameter("quantity");
		String condition = request.getParameter("condition");
		String info = request.getParameter("info");
		String rentalfee = request.getParameter("rentalfee");
		String deposit = request.getParameter("deposit");
		String period = request.getParameter("period");
		String trade = request.getParameter("trade");

		insert.insertCategory(1, cetegory);
		insert.insertProduct(title, cetegory, quantity, condition, info);
		insert.insertRental(rentalfee, deposit, period, trade);
		
		//insert.insert(rental, deposit, able, trade, condition, position, info);
		response.sendRedirect("K_view.jsp");
		%>
		<!--   rental +" / " + deposit +" / " + able +" / " + trade +" / " + condition +" / " +position +" / " + info --> 	
		
	

</body>
</html>