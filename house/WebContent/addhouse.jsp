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
    
    <script>alert('Added Success..!')</script>
  

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Added Failed..!')</script>
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
            <ul class="navigation-menu nav navbar-nav navbars"  id="nav">
                <li><a href="ownerh	ome.jsp">Home</a></li>
 				<li><a href="viewprofile2.jsp">View Profile</a></li>
				<li><a href="addhouse.jsp">Add House</a></li>
				<li><a href="viewhouse.jsp">View House</a></li>                
				<li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of menu -->
       </nav>
      </div>
     </div>
    </header>
    
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div> 
            
            
            <form class="form-horizontal templatemo-contact-form-1" action="addhouseact.jsp" method="post" ><center>
            <div class="form-group">
		  		<div class="col-md-12">
		  		<h1 class="margin-bottom-15">Add House</h1>
		  		</div>
		  	</div>
					  <table width="567">
                                            
                        <tr>
                          <td width="238" height="43">Location</td>
                          <td width="317">
                              <input id="Location" name="location" required class="form-control" placeholder="Location" /></td>
                        </tr>
                        
                        <tr>
                          <td height="43">Category</td>
                          <td><select id="gender" name="category" required style="width:175px;height:50px;"" class="form-control">
                                  <option value="">--Select--</option>
                                  <option value="Individual">Individual</option>
                                  <option value="">Apartment</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="43">Bedrooms</td>
                          <td>
                          <input id="Bedrooms" name="bedroom" required class="form-control" placeholder="Bedrooms"/></td>
                        </tr>
                        <tr>
                          <td height="43">Name</td>
                          <td>
                              <input type="text"  name="name" required class="form-control" placeholder="Name"/></td>
                        </tr>
                        
                        <tr>
                          <td height="65">Address</td>
                          <td>
                              <input id="address" class= "form-control" name="address" required placeholder="address"> 
                              </input></td>
                        </tr>
                                               <tr>
                          <td height="65">Mobile</td>
                          <td>
                              <input type="text" class="form-control" name="mobile" required placeholder="Mobile"> 
                              </input></td>
                        </tr>
                                              
                                              <tr>
                          <td height="65">Image</td>
                          <td>
                              <input type="file" class= "form-control" name="image" required>  
                              </input></td>
                        </tr>
                                              
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" class="btn btn-success pull-right" type="submit" value="Add" />
                            </p>
                            <div align="right">
                           
                          </div></td>
                        </tr>
                                              </center>
                      </table>
            </form>
            
            
            
            
            
            
            
            
            </div>
        </div>
</body>
</html>