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

 <script>alert('Login Failed... Username/password Incorrect.!')</script>
 <%
}
%>
<body class="templatemo-bg-image-2">

<div id="container">
 <div class="col-md-12">
  <header id="header">
   <div class="navbar">
    <div class="navigation-row">
     <nav id="navigation">
	   <button type="button" class="navbar-toggle"> <i class="fa fa-bars"></i> </button>
        <div class="nav-box navbar-collapse">
            <ul class="navigation-menu nav navbar-nav navbars" id="nav">
                <li><a href="index.html">Home</a></li>
                <li><a href="owner.jsp">Owner</a></li>
                <li><a href="client.jsp">Admin</a></li>
                <li><a href="customer.jsp">Customer</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>    	
        </div> <!-- end of menu -->
       </nav>
      </div>
     </div>
    </header>
    
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div>  
    
 
                    <form  class="form-horizontal templatemo-contact-form-1" action="clientact.jsp" method="post" id="adminact" >
                        <br><br>
                        <center>
                        <div class="form-group">
		  				<div class="col-md-12">
		  				<h1 class="margin-bottom-15">Admin Login</h1>
		  				</div>
		  				</div>


                            <table >
                                <tr>
                                    <td align="right"><font size="2" color="white"> User Name: </font>
                                    </td><td> 
                                    <input type="text" class="form-control" align="left" size="25" name="username" placeholder=UserName required /></td>
                                </tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr>
                                <tr>
                                    <td align="right"><font size="2" color="white">Password:</font>
                                    </td><td> 
                                    <input type="password" class="form-control" align="left" size="25" name="password" placeholder=Password required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>
                                 <tr>
                                    <td>
                                       <center> 
                                           <div class="form-group"><p>&nbsp;
                            </p>
                            <p>
                                       <input type="submit" class="btn btn-info pull-right"  form="adminact" align="right" value='Submit' />
                                       </p>
                                       </div>
                                       </center>
                                    </td>
                                </tr>
                            </center> 
                     </table>
                     </center>
                     </br>
                     </br>
                     </form>
                     </div>
                     </div>
                     
</div>
</body>
</html>