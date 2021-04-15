<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

                String username=request.getParameter("username");
   	        String Password=request.getParameter("password");
               
                try {
                
                Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM technician where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                        if(rs.next())
			{
                       session.setAttribute("username",username);
                           session.setAttribute("location",rs.getString("location"));
                       
			response.sendRedirect("technicianhome.jsp?m1=success");
						
			}
			else
			{
			
                         response.sendRedirect("technicianlogin.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>