<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String cname = request.getParameter("cname");
            String type = request.getParameter("type");                      
            String stype = request.getParameter("stype");
            String cost = request.getParameter("cost");
            String tname = session.getAttribute("username").toString();
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("insert into cdetails values(?,?,?,?,?)");
            
            ps.setString(1,cname);
            ps.setString(2,tname);            
            ps.setString(3,type);
            ps.setString(4,stype);	
             ps.setString(5,cost);	
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("customerdetails.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("customerdetails.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          