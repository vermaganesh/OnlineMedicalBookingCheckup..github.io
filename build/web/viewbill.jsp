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
            <a href="customerhome.jsp">Home</a>
        </li>

        <li>
            <a href="booktechnicians.jsp">Book Technicians</a>
        </li>
        <li>
            <a href="viewbill.jsp" class="active">View Bill</a>
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

    <%
    String cname = session.getAttribute("username").toString();
            
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from cdetails where cname = '"+cname+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center>
           <h2>View Bills</h2>
           
           <table style="width:50%" border="1">
           
  <tr>
    
       <th style="color: white">Name</th>
       <th>Type of Test</th>
       <th>Sample Type</th>
       <th>Bill</th>
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