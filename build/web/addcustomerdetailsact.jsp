<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = request.getParameter("username");
            String type = request.getParameter("type");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String cnumber = request.getParameter("cnumber");
            String user = session.getAttribute("username").toString();
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into customerdetails values(?,?,?,?,?)");
            
            ps.setString(1,username);
            ps.setString(2,type);            
            ps.setString(3,email);
            ps.setString(4,cnumber);	
             ps.setString(5,user);	
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addcustomerdetails.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("addcustomerdetails.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          