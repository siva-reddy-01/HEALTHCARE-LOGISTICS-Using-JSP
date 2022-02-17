<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
  <link rel = "icon" href="homes.png" type="image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="home.css">

<link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  
  </head>
  <body >
  
  <div class="container-fluid" >
  <br>
  <h3 style="text-align: center; letter-spacing: 2px; padding:20px;">HEALTH   CARE   LOGISTICS</h3>
  
</div>

    
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="Managerhome.html">Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Add
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="addequipments.html">AddEquipments</a></li>
            <li><a class="dropdown-item" href="addtests.html">AddTests</a></li>
            
          </ul>
        </li>
        


      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          View
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">view Equipment</a></li>
            <li><a class="dropdown-item" href="viewtechnician.jsp">view Technician</a></li>
            <li><a class="dropdown-item" href="viewtests.jsp">view Tests</a></li>
            <li><a class="dropdown-item" href="viewcustomers.jsp">view  Customer</a></li>
            
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="home.html">Logout</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>



   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

   <h3 style="padding:40px;" align=center > Technician Details </h3><br>
	<table class="table">
   
   <th>Name</th>
   <th>Email</th>
    <th>Location</th>
    <th>Mobile</th>
    <th>Timings</th>
   

</tr>


<% 

Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("ok");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","suhas");
	System.out.println("succed");
	
		ResultSet rs = con.createStatement().executeQuery("select * from techreg");
		while(rs.next())
		{
		
		%>
		
		<tr>
		
		<td scope="row"><%=rs.getString(2) %></td>
	    <td scope="row"><%=rs.getString(3) %></td>
	    <td scope="row"><%=rs.getString(5) %></td>
	    <td scope="row"><%=rs.getString(7) %></td>
	    <td scope="row"><%=rs.getString(6) %></td>
		
		
		
		</tr>
		
		
		 
		  
		 <% 
		
	}
%>
</table>
			</center>
	
		
		




<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	

		
		



<!---Footer--------->
   <section id="footer">
   <div class="container text-center">
   <p> Made With <i class="fa fa-heart-o  "></i> by Healthcare Logistics</p>    
 
  
   </div>
    
  </body>
</html>