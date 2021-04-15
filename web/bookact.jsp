<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = session.getAttribute("username").toString();                    
            String tname = request.getParameter("tname");                      
            String types = request.getParameter("types");
            String location = request.getParameter("location");
            String cnumber = request.getParameter("mobile");
              String date = request.getParameter("date");
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();  
            PreparedStatement ps=connection.prepareStatement("insert into bookings values(?,?,?,?,?,?)");
            
            ps.setString(1,username);
            ps.setString(2,tname);            
            ps.setString(3,location);
            ps.setString(4,cnumber);	
            ps.setString(5,types);
            ps.setString(6,date);
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("booktechnicians.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("booktechnicians.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          