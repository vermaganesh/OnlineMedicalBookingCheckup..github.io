<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

    

                
                
   	        String Password=request.getParameter("password");
                String username=request.getParameter("username");
                
                   
                try {
                
                Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM customer where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
                       session.setAttribute("username",username);
                       session.setAttribute("location",rs.getString("location"));
                       
			response.sendRedirect("customerhome.jsp?m1=success");
			
			
			}
			else
			{
			
                         response.sendRedirect("customerlogin.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>