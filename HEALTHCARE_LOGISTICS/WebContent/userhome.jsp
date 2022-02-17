<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "icon" href="homes.png" type="image/x-icon">
<title>Userhome</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="userhome_css.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
 <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<style>
body {
    font-family: 'Poppins';
}
</style>
</head>
<body>
 
<div class="container-fluid" >
  <br>
  <h3 style="text-align: center; letter-spacing: 2px; padding:20px;">HEALTH   CARE   LOGISTICS</h3>
  
</div>

<nav class="navbar navbar-expand-sm navbar-dark bg-primary sticky-top">
  <a class="navbar-brand" href="#">Customer</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a  style="margin-left: 600px; font-size:20px;" class="nav-link" href="userhome.jsp" onMouseOver="this.style.color='#ff275f'"  onMouseOut="this.style.color='#fff'" >Home</a>
    </li>
    <li class="nav-item">
      <a  style="margin-left: 100px; font-size:20px;"class="nav-link" href="booktechnician.jsp" onMouseOver="this.style.color='#ff275f'" onMouseOut="this.style.color='#fff'">Book Technicians</a>
    </li>
     <li class="nav-item">
      <a style="margin-left: 100px; font-size:20px;" class="nav-link" href="customer_viewdetails.jsp" onMouseOver="this.style.color='#ff275f'" onMouseOut="this.style.color='#fff'">View Bills</a>
    </li>
   <li class="nav-item">
      <a style="margin-left: 100px; font-size:20px;" class="nav-link" href="customer_logout.jsp" onMouseOver="this.style.color='#ff275f'" onMouseOut="this.style.color='#fff'">Logout</a>
    </li>
  </ul>
</nav>

<%
if(session!=null) {
	String username = (String)session.getAttribute("username");
%>
    
     <h2 style="letter-spacing:2px; text-align:center; margin-top:10px; ">Welcome <h1 style="text-align:center;padding:5px;font-weight:5px;color:#00FA9A;font-family:sans-serif;text-transform: uppercase; letter-spacing:2px;">
	 
	<%=username%>
	</h1></h2>
	
	<h2 style="letter-spacing:2px;  text-align:center; margin-bottom:10px;"> You Have Successfully Logged in </h2>
	
	
	
<% 
}
else {
	
	out.println("<h2> Session Expired</h2>");
	
	
}



%>

<div class="container-fluid"><br>
  <p>A logistics and technicians tracking website that allows a customer to search for all the booking date time and location, 
  Technicians assigned for a booking, also allows customers to check the logistics used for bookings and unique data for the logistics required.</p>
  <p>The purpose of designing this web-based application , for a healthcare logistics is to maintain a record of its tests and technicians.</p>
  <!-- <p>For example :we've sent a shipment of parts for some hospital purpose . There will be a time in between the parts will be delivered , 
  and the time the technician will arrive .The parts are most likely to arrive Tuesday morning, but they could be as late as Wednesday. 
  Thus, we schedule the technician that needs the parts to arrive on Wednesday afternoon.</p>-->
  
</div>

<div class="container">
  <div class="card">
      <div class="imgBx">
         <img src="BasicMetabolicPanel.jpg">
      </div>
      <div class="contentBx">
          <div class="content">
              <h3>Basic Metabolic Panel</h3>
              <p>This test measures glucose, sodium, potassium, calcium, chloride, carbon dioxide, blood urea nitrogen 
                  and creatinine which can help determine blood sugar level, electrolyte and fluid balance as well as kidney function.</p>
          </div>
      </div>
  </div>

  <div class="card">
    <div class="imgBx">
       <img src="completebloodcount.jpg">
    </div>
    <div class="contentBx">
        <div class="content">
            <h3>Complete Blood Count</h3>
           <p>This test, also known as a CBC, is the most common blood test performed. 
            It measures the types and numbers of cells in the blood, including red and white blood cells and platelets.</p>
        </div>
    </div>
</div>

<div class="card">
    <div class="imgBx">
       <img src="ComprehensiveMetabolicPanel.jpg">
    </div>
    <div class="contentBx">
        <div class="content">
            <h3>Comprehensive Metabolic Panel</h3>
           <p>This test combines the Basic Metabolic Panel with six more tests for a more comprehensive 
               evaluation of metabolic functions, with a focus on organ systems.
        </p>
        </div>
    </div>
</div>

<div class="card">
    <div class="imgBx">
       <img src="LipidPanel.jpg">
    </div>
    <div class="contentBx">
        <div class="content">
            <h3>Lipid Panel</h3>
           <p>The lipid panel is a group of tests used to evaluate cardiac risk. It includes cholesterol and triglyceride levels.
        </p>
        </div>
    </div>
</div>

<div class="card">
    <div class="imgBx">
       <img src="liverpaneltest.png">
    </div>
    <div class="contentBx">
        <div class="content">
            <h3>Liver Panel</h3>
           <p>The liver panel is a combination of tests used to assess liver function and establish the possible presence of liver tumors.</p>
        </div>
    </div>
</div>

<div class="card">
    <div class="imgBx">
       <img src="thyroidstimulatinghormone.jpg">
    </div>
    <div class="contentBx">
        <div class="content">
            <h3>Thyroid Stimulating Hormone</h3>
           <p>This test screens and monitors the function of the thyroid.
        </p>
        </div>
    </div>
</div>

</div>


</body>
</html>