<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
        String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
   // int uid=-1;
    session.setAttribute("username",username);
    try{
         Connection co = null;
       
       co = databasecon.getconnection();
			
			String sql="SELECT * FROM customer where username='"+username+"' and password='"+password+"' and status='Authorized'";
			Statement stmt = co.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
			response.sendRedirect("customerhome.jsp?m1=success");
			}
			else
			{
			String sql1="SELECT * FROM customer where username='"+username+"' and password='"+password+"'  and status='waiting'";
			Statement stmt1 = co.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next())
			{
			out.print("Sorry You are not authorized user");
			%><br /><a href="customer.jsp">Click Here to Home</a><%
			}
			else
			{
				response.sendRedirect("customer.jsp?m2=Failed");
			}
			}
	}
    catch(Exception e)
    {
        System.out.println("Error in emplogact"+e.getMessage());
    }
%>