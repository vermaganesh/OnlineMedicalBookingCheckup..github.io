<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String name = request.getParameter("name");
            String image = request.getParameter("image");
          
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into equipments values(?,?)");
            
            ps.setString(1,name);
            ps.setString(2,image);
          
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addequipments.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("addequipments.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          