<%@page import="java.sql.*" %>
<link rel = "icon" href="homes.png" type="image/x-icon">
<%

String  test = request.getParameter("test");
int id = (int)(Math.random()*99999)+1;
%>




<%


try
{

    Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("ok");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","suhas");
	System.out.println("succed");
	
	PreparedStatement pstmt = con.prepareStatement("insert into tests_name values(?,?,?)");
	pstmt.setString(1,test);
	pstmt.setInt(2,id);
    pstmt.setTimestamp(3,new Timestamp(System.currentTimeMillis()));
    int n= pstmt.executeUpdate();
	
	if(n>0)
	{
		
		%>
		
		<a href="addtests.html" ><h3>  Test added succesfully</h3></a>
		<button> <a href="Managerhome.html">Home</a></button>
		
		
<% 
	}
	
	else
	{
	
	
	%>
	
	<h3 align=center>Adding failed</h3>
	
	<%
	}
}
	
	catch(Exception e)
	{
		
		out.println("Exception:" +e);
		
	}

	%>
	