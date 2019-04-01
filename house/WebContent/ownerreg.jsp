<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>House Rental</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2027 Melody
http://www.tooplate.com/view/2027-melody
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" media="screen" /> 

<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">


<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/jquery.scrollTo-min.js'></script>


</head>
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
     
     
        
        <div id="home"></div>
        <div class="content_box">
            
             
		  <form class="form-horizontal templatemo-contact-form-1" action="ownerregact.jsp" method="post" >
		  	<div class="form-group">
		  		<div class="col-md-12">
		  		<h1 class="margin-bottom-15">Owner Registration Form</h1>
		  		</div>
		  	</div>
		  		<div class="tabletop">
					  <table width="567">
                                            
                        <tr>
                          <td width="238" height="43">User Name</td>
                          <td width="317">
                          <input id="username" name="username" required class="form-control" placeholder="User Name" /></td>
                        </tr>
                        <tr>
                          <td height="43">Password</td>
                          <td>
                          <input type="password" id="password" required name="password" class="form-control" placeholder="Password"/></td>
                        </tr>
                        <tr>
                          <td height="43">Email</td>
                          <td>
                          <input type="email" id="email" name="email" required class="form-control" placeholder="Email" /></td>
                        </tr>
                        <tr>
                          <td height="43">Mobile</td>
                          <td>
                          <input id="mobile" name="mobile" class="form-control" required placeholder="Mobile"/></td>
                        </tr>
                        <tr>
                          <td height="43">Date of Birth</td>
                          <td>
                              <input type="date" id="dob" name="dob" required class="form-control" placeholder="DOB"/></td>
                        </tr>
                        <tr>
                          <td height="43">Gender</td>
                          <td><select id="gender" name="gender" required style="width:175px;height:50px;" class="form-control">
                            <option></option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="65">Address</td>
                          <td>
                              <textarea id="address" class="form-control" name="address" required rows="3" cols="30" placeholder="Address"> 
                              </textarea></td>
                        </tr>
                                              <tr>
                          <td height="65">Picture</td>
                          <td>
                              <input type="file" id="image" class="form-control" required name="image"> 
                              </input></td>
                        </tr>
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td > <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" class="btn btn-success pull-right" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                           
                          </div></td>
                        </tr>
                                             
                      </table>
                  </div>  
            </form>
          
		</div>
		</div>
</div>
</body>
</html>