<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Equipments Added Sucess!')</script>

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
            <a href="#" class="active">Add</a>
            <div class="dropdown_list">
                <a href="addequipments.jsp">Add Equipments</a>
                <a href="addtests.jsp">Add Tests</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#">View</a>
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
   
    <br><br><br>
        <table Style="width: 40%" >
            <form action="addequipmentsact.jsp" method="post" id="" enctype="text" >
            <h2>Add Equipments here</h2>
            
            <tr>
                <th>Equipment Name :</th>
                <th><input type="text" name="name" required=""></th>
            </tr>
            
            <tr><th>Select Image</th>
                <th><input type="file" name="image"></th>
            </tr>
            
             </table>
              <input type="submit" value="Add">
         
                    
                   
                    
            
        
          
      </form>
       
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="#" target="_blank">
            <i class="fa fa-user-circle"></i> Yash Pancholi,Ravi Upadhyay and Ganesh Verma
        </a>
    </p>
</footer>
</body>
</html>