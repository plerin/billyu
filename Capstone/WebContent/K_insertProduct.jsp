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
	String title = request.getParameter("title");
	String cetegory = request.getParameter("cetegory");
	String quantity = request.getParameter("quantity");
	String condition = request.getParameter("condition");
	String info = request.getParameter("info");
	
	out.println(title);
	
	insert.insertCategory(1, cetegory);
	insert.insertProduct(title, cetegory, quantity, condition, info);
	response.sendRedirect("K_product.jsp");
	%>
</body>
</html>