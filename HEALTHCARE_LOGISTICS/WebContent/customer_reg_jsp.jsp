<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel = "icon" href="homes.png" type="image/x-icon">
<%@page import="java.sql.*"%>
<%
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String location = request.getParameter("location");
String mobileno =request.getParameter("mobileno");
int id=(int)(Math.random()*99999)+1;
%>

<% 
try {
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver calss is loaded");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","suhas");
	System.out.println("Successfully connected");
	
	
	PreparedStatement pstmt = con.prepareStatement("insert into custreg values(?,?,?,?,?,?,?)");
	pstmt.setInt(1,id);
	pstmt.setString(2,username);
	pstmt.setString(3,email);
	pstmt.setString(4,password);
	pstmt.setString(5,location);
	pstmt.setString(6,mobileno);
	pstmt.setTimestamp(7,new Timestamp(System.currentTimeMillis()));
	
	int n =pstmt.executeUpdate();
	 if(n>0){
		 response.sendRedirect("customer_login2.html");
		  }
		  else{
		    %>
		    <h3 align=center>Registration Failed</h3>
		    <a href="customer_reg.html">Try Again</a>
		    <%
		  }
	
}

catch(Exception e){
	System.out.println(e);
	
}




%>
	