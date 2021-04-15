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




Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM tests";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);

%>
<!-- Login Form -->
<div class="form-div animated flip">
    <img src="img/user.png">
    <h2>Total Tests booked</h2>
    <form action="totaltestsact.jsp" method="post">
        <input type="date"  name="date" required="" autocomplete="off">
        <br>
     <select  name="types" required="">
            <option style="color: white">Select</option>
            <%
            while(rs.next()){
            
            
            
            %>
             <option><%=rs.getString("name")%></option>
           <%
            }
           %>
            
        </select>
           <br>
        <br>
        <input type="submit" value="Submit">
        <br>
        <br>
    </form>
</div>
<br><br>
<br><br><br>
<br>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="" target="_blank">
            <i class="fa fa-user-circle"></i>Yash Pancholi,Ravi Upadhyay and Ganesh Verma
        </a>
    </p>
</footer>
</body>
</html>