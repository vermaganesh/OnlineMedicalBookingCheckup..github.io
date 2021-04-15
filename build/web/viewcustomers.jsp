<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Added Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Added Failed..!')</script>
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
<br><br>
<center>
    <%
    
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from customer");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center>
           <h2>View Customers</h2>
           
           <table style="width:50%" border="1">
           
  <tr>
    
                <th style="color: white">Name</th>
  <th>E_Mail</th>
   <th>location</th>
    <th>Mobile</th>
    
               
                    
     
     </tr>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(3)%></td>
                  <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
      
    
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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