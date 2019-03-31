<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
     int id = 0;
	    String username=session.getAttribute("username").toString();
            String location=request.getParameter("location");
            String category=request.getParameter("category");
            String bedroom=request.getParameter("bedroom");
            String name=request.getParameter("name");
            String address=request.getParameter("address");
            String mobile=request.getParameter("mobile");
            String image=request.getParameter("image");
        
		try
		{
        co = databasecon.getconnection();
	PreparedStatement pst2=co.prepareStatement("insert into house values(?,?,?,?,?,?,?,?)");

     
	pst2.setString(1,username);
        pst2.setString(2,location);
        pst2.setString(3,category);
        pst2.setString(4,bedroom);
        pst2.setString(5,name);   
        pst2.setString(6,address); 
        pst2.setString(7,mobile);
         pst2.setString(8,image);
         
        
	pst2.executeUpdate();
                
       response.sendRedirect("addhouse.jsp?m1=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>