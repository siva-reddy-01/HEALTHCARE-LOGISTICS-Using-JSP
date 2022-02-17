<!doctype html>
<html lang="en">
  <head>
 <link rel = "icon" href="homes.png" type="image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Userhome</title>
   
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
String username = session.getAttribute("username").toString();
%>
<center>
<br><br><br><br><br><br><br><br><br><br><br><h1>Welcome <%=username%></h1>
<br><br><br><br><br><br><br><br><br><br><br></center>

<div class="container-fluid"><br>
  <p>A logistics and technicians tracking website that allows a customer to search for all the booking date time and location,
  Technicians assigned for a booking, also allows customers to check the logistics used for bookings and unique data for the logistics required.</p>
  <p>The purpose of designing this web-based application , for a healthcare logistics is to maintain a record of its tests and technicians.</p>
  <p>For example :we've sent a shipment of parts for some hospital purpose . There will be a time in between the parts will be delivered ,
  and the time the technician will arrive .The parts are most likely to arrive Tuesday morning, but they could be as late as Wednesday.
  Thus, we schedule the technician that needs the parts to arrive on Wednesday afternoon.</p>
 
</div>


   
  </body>
</html>

