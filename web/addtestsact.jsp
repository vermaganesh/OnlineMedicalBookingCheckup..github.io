<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String name = request.getParameter("name");
          
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into tests values(?)");
            
            ps.setString(1,name);
          
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addtests.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("addtests.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          