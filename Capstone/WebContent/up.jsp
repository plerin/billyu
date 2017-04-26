<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String savePath = "C:/WebSoft/WORKSPACE/SUBNET/Capstone/WebContent/img/"; // 저장할 디렉토리 (절대경로)
	int sizeLimit = 10 * 1024 * 1024; // 10메가까지 제한 넘어서면 예외발생
	String upfile = "";
	String upfile2 = "";
	String upfile3 = "";
	String upfile4 = "";
	String originalFileName = "";
	try {
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8",
				new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames(); // 폼의 이름 반환
		
		String file = (String)files.nextElement();
		upfile = multi.getFilesystemName(file);
		String file2 = (String)files.nextElement();
		upfile2 = multi.getFilesystemName(file2);
		String file3 = (String)files.nextElement();
		upfile3 = multi.getFilesystemName(file3);
		String file4 = (String)files.nextElement();
		upfile4 = multi.getFilesystemName(file4);
		
		
		String userName = "";
		if (upfile == null) { // 파일이 업로드 되지 않았을때
	//		out.print("파일 업로드 되지 않았음");
		} else { // 파일이 업로드 되었을때
		} //else 끝
		if (upfile2 == null) { // 파일이 업로드 되지 않았을때
	//		out.print("파일 업로드 되지 않았음");
		} else { // 파일이 업로드 되었을때
		} //else 끝
		if (upfile3 == null) { // 파일이 업로드 되지 않았을때
	//		out.print("파일 업로드 되지 않았음");
		} else { // 파일이 업로드 되었을때
		} //else 끝
		if (upfile4 == null) { // 파일이 업로드 되지 않았을때
	//		out.print("파일 업로드 되지 않았음");
		} else { // 파일이 업로드 되었을때
		} //else 끝
	} catch (Exception e) {
		out.print("예외 상황 발생..! ");
	} //catch
%>
<%
Class.forName("com.mysql.jdbc.Driver");
try{
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/BillyU", "root", "1234");
	
	Statement stmt = conn.createStatement();
	
	String sql = "insert into image2 (path,path2,path3,path4) value ('img/"+upfile+"','img/"+upfile2+"','img/"+upfile3+"','img/"+upfile4+"')";
	
	stmt.executeUpdate(sql);
	
	
	stmt.close();
	conn.close();
	
	out.println("MySql jdbc test: connect ok!!");
}catch(SQLException ex){
	out.println(ex.getMessage());
}
%>
<html>
<head>
<script language="javascript">
	function delfile() {
		document.myform.action = './delup.jsp'
		document.myform.submit();
	}

	function down() {
		document.myform.action = './down.jsp'
		document.myform.submit();
	}
</script>
</head>
<body>
</body>

</html>