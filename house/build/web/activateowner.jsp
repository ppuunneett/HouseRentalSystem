<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
 	<%
  		
   	try {
		   
			Connection con=databasecon.getconnection();
                    Statement st = con.createStatement();
			String id=request.getParameter("id");
			String str = "Authorized";
       		
       		String query1 ="update owner set status='"+str+"' where id="+id+" ";
	   		st.executeUpdate (query1);
			con.close();
			response.sendRedirect("viewowner.jsp?m1=activated");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
