<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
  <link rel = "icon" href="homes.png" type="image/x-icon">
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Add Customer</title>
   <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
 <body >
 
  <div class="container-fluid" >
  <br>
  <h3 style="text-align: center; letter-spacing: 2px; padding:20px;">HEALTH   CARE   LOGISTICS</h3>
 
</div>

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Technician</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="tech_userhome.jsp">Home</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="tech_customer_details.jsp">View Customer Details</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="technician_logout.jsp">Logout</a>
        </li>
       


      

       
      </ul>
     
    </div>
  </div>
</nav>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

<%
 String cname = request.getParameter("cname");
String test_type =request.getParameter("test_type");

%>
<div class="container-fluid">
 <div class="row justify-content-center align-items-center h-100">
                  
<form id="form" class="form" method="post" action="tech_customercost_DB.jsp">
  
    <h1 class="display-6 py-6 text-truncate">Adding Customer</h1>
    
  <div class="row">
  				<div class="col"> <label style="padding:10px; margin-top:10px; font-size:20px;"><b>Customer Name</b></label>
      				<input type="text" class="form-control" value="<%=cname %>" name="cname">
 					 </div>
 					 
 					 <div class="col"><label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Test Type</b></label>
      						<input type="text" class="form-control" value="<%=test_type %>" name="test_type">
    						</div>

 <div class="w-100"></div>
 <div class="col"> 
 <label  style="padding:10px; margin-top:10px; font-size:20px;"><b>Cost for Test</b></label>
      <input type="text"  name="ctestcost" class="form-control" placeholder="Enter cost for the test" required >
      </div>
 
 
 <div class="col"> 
      <button type="submit"   style=" margin-top:50px;" class="btn btn-primary btn-lg btn-block">Add Customer</button>
      
      </div>
 </div>     
</form>
</div>
</div>
</body>
</html>
