<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Login Failed..!')</script>
 <%
}
%> 
<body>
<!-- Main Header -->
<header class="main-header">
    <img src="img/logo.png" alt="">
    <h1>Health Care Logistics</h1>
</header>
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="index.html">Home</a>
        </li>
        <li class="dropdown">
            <a href="#">Add</a>
            <div class="dropdown_list">
                <a href="addequipments.jsp">Add Equipments</a>
                <a href="addtests.jsp">Add Tests</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#"  class="active">View</a>
            <div class="dropdown_list">
                <a href="viewequipments.jsp">View Equipments</a>
                <a href="viewtests.jsp">View Tests</a>
                <a href="viewtechnicians.jsp">View Technician</a>
                <a href="viewcustomers.jsp">View Customer</a>
                <a href="totaltests.jsp">Total Tests</a>
            </div>
        </li>
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String date = request.getParameter("date");
String types = request.getParameter("types");


Connection connection = DbConnection.getconnection();


String sql1="SELECT * FROM bookings where date = '"+date+"'";
			Statement st = connection.createStatement();
			ResultSet r =st.executeQuery(sql1);
                        
                        if(r.next()){


                        
			String sql="SELECT * FROM bookings where date = '"+date+"' and types = '"+types+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);

%>
<!-- Login Form -->
<br>
    <h2>Total Tests booked</h2>
    <center>
         
           <table style="width:50%" border="1">
           
  <tr>
    
                <th style="color: white">Customer Name</th>
  <th>Technician</th>
   <th>Location</th>
    <th>Type of Test</th>
    <th>Mobile</th>
    <th>Date</th>
               
                    
     
     </tr>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(6)%></td>
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
   
   
                 
%></table>
    
  <%
    }
                        else{
                            
                            
                            %>
                            <br><br><br><br><br><br><br><br>
                            <h2>No Bookings Available </h2>
                            
                            <%
                        }
  
  %>  
    
    
    
    </center>

<br><br>
<br><br><br><br><br><br>
<br>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="" target="_blank">
            <i class="fa fa-user-circle"></i> Yash Pancholi,Ravi Upadhyay and Ganesh Verma
        </a>
    </p>
</footer>
</body>
</html>