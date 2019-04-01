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
<%
    String user = session.getAttribute("username").toString();
    
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
    <div class="col-md-6 col-md-push-3">
    <div class="jumbotron " style=width:800px; >	
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div> 
            <h2><%=user%>'s Profile</h2>
            <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
    <%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
     
        <%
						
						
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try                                                    
                                                    
						{
                                                    Connection con=databasecon.getconnection();
                                                        Statement st = con.createStatement();
						   	String query="select * from owner where username='"+user+"'"; 
						   	
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
							
								
								s2=rs.getString(1);
								s3=rs.getString(3);
                                                                s4=rs.getString(4);
                                                                
								s5=rs.getString(5);
                                                                s6=rs.getString(10);
                                                                 s1=rs.getString(9);
							
								
								
								
								
								
								
					%>
        <tr>
          <td width="230" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="Gallery/<%=s1%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Id</strong></div></td>
          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Name</strong></div></td>
          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s3);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s4);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Mobile</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        <tr>
          <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
          <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style23 style9 style10" style="margin-left:20px;">
                <%out.println(s6);%>
              </div></td>
        </tr>
        <%
						}
						con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
                    
</div>
</div>
</body>
</html>