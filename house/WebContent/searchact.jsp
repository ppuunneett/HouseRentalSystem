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
    <div class="col-md-6 col-md-push-3">
    
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div><br/><br />
     <div class="jumbotron" style=width:800px;>	
        
            <h2>Results</h2>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
   String area=request.getParameter("area");
  
   ResultSet rs=null;
 try{
    
  Connection con = null;
   con = databasecon.getconnection();
     
     System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from house where location = '"+area+"'");
        
        pst.execute();
        rs =pst.getResultSet();
	
      
    }catch(Exception e){
        e.printStackTrace();
        }
%>
<center>
<table>        
             <% while(rs.next()){

                 String category=rs.getString("category");
                 String bedroom=rs.getString("bedroom");
                 
                 
                 %>
            
            <%
            String image=rs.getString("image");
           
            %>
            <tr width="100%">
                <td><img src="Gallery/<%=image%>" width="100" height="100"></td>
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
               <td> <b> Category Name : &nbsp;</b>
                <b><%=rs.getString("category")%></b><br>  

                <b>Bedrooms: &nbsp;</b> <b><%=bedroom%></b><br>
                
                    <b>Address: &nbsp;</b><b><%=rs.getString("address")%></b><br/>
                    
                    <b>Mobile: &nbsp;</b><b><%=rs.getString("mobile")%></b><br/>

                </td>
            </tr>
            </tr>
        <%}
        
            
        %>  
        </table>
        </center>
        </div>
        </div>
</div>
</div>
</body>
</html>
