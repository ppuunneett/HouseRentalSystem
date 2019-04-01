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

<script type="text/javascript">
$(document).ready(function () 
{
	$.localScroll();
	$('#map a').lightBox();
});
</script>

</head>
     <%
if(request.getParameter("m1")!=null){%>
    
    <script>alert('Activated Success..!')</script>
 

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Activated Failed..!')</script>
 <%
}
%>
<body  class="templatemo-bg-image-2">

<div id="container">
 <div class="col-md-12">
  <header id="header">
   <div class="navbar">
    <div class="navigation-row">
     <nav id="navigation">
	   <button type="button" class="navbar-toggle"> <i class="fa fa-bars"></i> </button>
        <div class="nav-box navbar-collapse">
            <ul class="navigation-menu nav navbar-nav navbars">
                <li><a href="clienthome.jsp">Home</a></li>
                <li><a href="viewowner.jsp">View Owner</a></li>
                <li><a href="viewcustomer.jsp">View Customer</a></li>                
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    
            </ul>    	
        </div> <!-- end of menu -->
       </nav>
      </div>
     </div>
    </header>
    
	 <div class="text-center tm-site-title-wrap">
          <h1 class="tm-site-title">House Rental System</h1>    
     </div> 	
			<div class="col-md-6 col-md-push-3">
    	<div class="jumbotron" style=width:800px;>	
            <h2>View & Activate</h2>
           <table width="564" border="1" align="center"  cellpadding="0" cellspacing="0"  >
          <tr>
            <td  width="39"  valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">ID</div></td>
            <td  width="118" valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">User Image</div></td>
            <td  width="112" valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">User Name</div></td>
            <td  width="100" valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">Email</div></td>
            <td  width="108" valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">Mobile</div></td>
            <td  width="100"  valign="bottom" height="34" style="color: blue"><div align="center" class="style15 style21 style7 style6 style5">Status</div></td>
          </tr>
         <%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{       Connection con=databasecon.getconnection();
						   	String query="select * from customer"; 
						   	Statement st=con.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(9);
								s5=rs.getString(10);
								
							
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            <td width="118" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="Gallery/<%=s4%>" style="width:90px; height:90px;">
            </a> </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s1);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
            <td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style5">
                <p>&nbsp;</p>
            <a href="activatecustomer.jsp?id=<%=i%>">waiting</a> </div></td>
            <%
						}
						else
						{
						%>
            <td width="71" height="0"  valign="baseline"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s5);%>
            </div></td>
            <%
						}
						%>
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
                                        
                                        
                                        
                                        <%--        <tr>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
</tr>--%>
        </table>
        </div>
        </div>
        </div>
        </div>
</body>
</html>