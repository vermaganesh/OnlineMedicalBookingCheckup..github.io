<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Boked Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
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
            <a href="booktechnicians.jsp"  class="active">Book Technicians</a>
        </li>
        <li>
            <a href="viewbill.jsp">View Bill</a>
        </li>
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
  
    </ul>
</nav>
<br>
<h2>Book Technicians</h2>
<center>
    <table style="margin-top: 2cm">
        <tr style="color:black">
                  
            <th>Name</th>
             <th>E-Mail</th>            
              <th>Location</th>            
               <th>Contact</th>
                <th>Book</th>
        </tr>
        <%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>    
            
            <%
                
        String location = session.getAttribute("location").toString();            
        Connection connection = DbConnection.getconnection();
                        
        String sql="SELECT * FROM technician where location = '"+location+"'";
        Statement stmt = connection.createStatement();
        ResultSet rs =stmt.executeQuery(sql);
			   
            
            
            while(rs.next()){
            
            %>
            
        <tr>
            
            <th><%=rs.getString(1)%></th>
             <th><%=rs.getString(3)%></th>            
              <th><%=rs.getString(4)%></th>            
               <th><%=rs.getString(5)%></th>
               <th><a href="book.jsp?tname=<%=rs.getString(1)%>">click</a></th>
                   
            
            
        </tr>
<%
            }
%>
    </table>
</center>
<br><br><br><br><br><br><br><br><br><br>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="#" target="_blank">
             Yash Pancholi,Ravi Upadhyay and Ganesh Verma
        </a>
    </p>
</footer>
</body>
</html>