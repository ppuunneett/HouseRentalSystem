<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>House Rental</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">


<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/jquery.scrollTo-min.js'></script>


</head>
     <%
if(request.getParameter("m1")!=null){%>
    
    <script>alert('Login Success..!')</script>


<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed..!')</script>
 <%
}
%>
<body class="templatemo-bg-image-2">

<%
                String username = session.getAttribute("username").toString();
                %>

<div id="container">
 <div class="col-md-12">
  <header id="header">
   <div class="navbar">
    <div class="navigation-row">
     <nav id="navigation">
	   <button type="button" class="navbar-toggle"> <i class="fa fa-bars"></i> </button>
        <div class="nav-box navbar-collapse">
            <ul class="navigation-menu nav navbar-nav navbars"  id="nav">
                <li><a href="customerhome.jsp">Home</a></li>
                <li><a href="viewprofile.jsp">View Profile</a></li>
                <li><a href="search.jsp">Search</a></li>                
                <li><a href="logout.jsp">Logout</a></li>
                <li></li>
                <li></li>
            </ul>    	
        </div> <!-- end of menu -->
       </nav>
      </div>
     </div>
    </header>
    
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div><br/><br />
            <h2><b>Welcome <%=username%></b></h2>
            <br/><br />
            <center>
            <img src="images/welcome.png"  width="800" height="250" alt="Image 01" />
            </center>
            </div>
        </div>
</body>
</html>