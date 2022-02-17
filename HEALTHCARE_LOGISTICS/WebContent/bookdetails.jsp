<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
  <link rel = "icon" href="homes.png" type="image/x-icon">
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Technician Booking</title>
   <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script>
    $(document).ready(function(){
      var date_input=$('input[name="cdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
 
  </head>
  <body >
 
  <div class="container-fluid" >
  <br>
  <h3 style="text-align: center; letter-spacing: 2px; padding:20px;">HEALTH   CARE   LOGISTICS</h3>
 
</div>

   
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Customer</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userhome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="booktechnician.jsp"> Book Technicians</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="customer_viewdetails.jsp">View Bills</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="customer_logout.jsp">Logout</a>
        </li>
       


      

       
      </ul>
     
    </div>
  </div>
</nav>



   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>


<%
String tname =request.getParameter("tname");
String tlocation =request.getParameter("tlocation");
String tphoneno =request.getParameter("tphoneno");
String tavailtime =request.getParameter("tavailtime");

%>

<%

try
{
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","suhas");
	 
	PreparedStatement pstmt = con.prepareStatement("select * from tests_name");
	
	ResultSet rs = pstmt.executeQuery();
%>
 <div class="container-fluid">
 <div class="row justify-content-center align-items-center h-100">
                  
<form id="form" class="form" method="post" action="bookdetails_DB.jsp">
  
    <h1 class="display-6 py-6 text-truncate">Technician Booking</h1>
   
    <div class="row">
  				<div class="col"> <label style="padding:10px; margin-top:10px; font-size:20px;"><b>Technician Name</b></label>
      				<input type="text" class="form-control" value="<%=tname %>" name="tname">
 					 </div>
 					 
 					 <div class="col"><label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Technician Location</b></label>
      						<input type="text" class="form-control" value="<%=tlocation %>" name="tlocation">
    						</div>
  
  <div class="w-100"></div>
  
  
  <div class="col">
   <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Technician Phone no</b></label>
      <input type="text" class="form-control" value="<%=tphoneno %>">
      </div>
      
      
      <div class="col"> <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Technician Available Time</b></label>
      <input type="text" class="form-control" value="<%=tavailtime %>" name="tavailtime">
      </div>
      
      
   <div class="w-100"></div>   
      
					<div class="col">
					<label  style="padding:10px; margin-top:10px; font-size:20px;"> <b>Test type</b></label>
					   <select name="test_type" class="form-select" required>
					    <option style="color: white">Select</option>
            <%
            while(rs.next()){
            
            
            
            %>
             <option><%=rs.getString("test")%></option>
           <%
            }
           %>
            
     
    </select>
  <%	
}
catch(Exception e) {
	
	out.println(e);
	
}

%>
  					
					</div>

						<div class="col">
						<div class="form-group"> <!-- Date input -->
						        <label  style="padding:10px; margin-top:10px; font-size:20px;" class="control-label" for="date"><b>Date</b></label>
						        <input class="form-control" id="cdate" name="cdate" placeholder="MM/DD/YYY" type="text" required/>
						      </div>
						</div>     
						
 <div class="w-100"></div>
  
  
  <div class="col">
   <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Your Name</b></label>
      <input type="text" name = "cname" class="form-control" placeholder="Enter Your Name" required>
      </div>
      
      
      <div class="col"> <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Your Address</b></label>
      <input type="text"  name = "caddress" class="form-control" palceholder="Enter Your Address" required>
      </div>
      
<div class="w-100"></div>
  
  
  <div class="col">
   <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Your Mobile no</b></label>
      <input type="text"  name="cmobileno" class="form-control" placeholder="Enter Your Mobile Number" required maxlength="10" >
      </div>
      
      
      <div class="col"> 
      <button type="submit"   style=" margin-top:50px;" class="btn btn-primary btn-lg btn-block">Book Technician</button>
      
      </div>
      						 
</div>
 
  
</form>
</div>
 </div>




</body>
</html>