<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String location = request.getParameter("location");
String atime = request.getParameter("atime");
String mobileno =request.getParameter("mobileno");
int id=(int)(Math.random()*99999)+1;
%>

<% 
try {
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver calss is loaded tech ");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","suhas");
	System.out.println("Successfully connected tech ");
	
	
	PreparedStatement pstmt = con.prepareStatement("insert into techreg values(?,?,?,?,?,?,?,?)");
	pstmt.setInt(1,id);
	pstmt.setString(2,username);
	pstmt.setString(3,email);
	pstmt.setString(4,password);
	pstmt.setString(5,location);
	pstmt.setString(6,atime);
	pstmt.setString(7,mobileno);
	pstmt.setTimestamp(8,new Timestamp(System.currentTimeMillis()));
	
	int n =pstmt.executeUpdate();
	 if(n>0){
		 response.sendRedirect("technician_login2.html");
		  }
		  else{
		    %>
		    <h3 align=center>Registration Failed</h3>
		    <a href="technician_reg.html">Try Again</a>
		    <%
		  }
	
}

catch(Exception e){
	System.out.println(e);
	
}




%>
	