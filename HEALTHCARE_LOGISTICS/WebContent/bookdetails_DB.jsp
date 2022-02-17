<%@page import="java.sql.*"%>
<%
String tname = request.getParameter("tname");
String cname = request.getParameter("cname");
String tlocation = request.getParameter("tlocation");
String test_type = request.getParameter("test_type");
String tavailtime = request.getParameter("tavailtime");
String cdate = request.getParameter("cdate");
String cmobileno = request.getParameter("cmobileno");
String caddress = request.getParameter("caddress");

try {
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver calss is loaded booking");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","suhas");
	System.out.println("Successfully connected booking");
	
	
	PreparedStatement pstmt = con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?)");
	pstmt.setString(1,tname);
	pstmt.setString(2,cname);
	pstmt.setString(3,tlocation);
	pstmt.setString(4,test_type);
	pstmt.setString(5,tavailtime);
	pstmt.setString(6,cdate);
	pstmt.setString(7,cmobileno);
	pstmt.setString(8,caddress);
	
	int n =pstmt.executeUpdate();
	 if(n>0){
		 response.sendRedirect("booktechnician.jsp?m1=success");
		  }
		  else{
			  response.sendRedirect("booktechnician.jsp?m2=Failed");
		  }
	
}

catch(Exception e){
	System.out.println(e);
	
}




%>