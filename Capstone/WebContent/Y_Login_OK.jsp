<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String login = request.getParameter("login");

Class.forName("com.mysql.jdbc.Driver");
try{
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/billyu",
			"root",
			"1234");
	Statement stmt = conn.createStatement();
	String sql="select nickname from user where usernumber = '"+login+"'";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next())
	{
		String nickname = rs.getString("nickname");
		session.setAttribute("id", nickname);
		response.sendRedirect("Y_Main.jsp");
	}
	
}catch(Exception e){
	e.printStackTrace();
}
%>
<script>
alert('회원가입후 이용해 주세요!');
history.go(-1);
</script>
</body>
</html>