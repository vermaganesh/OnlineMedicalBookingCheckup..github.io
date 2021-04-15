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

<script>alert('Registration Failed..!')</script>
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
            <a href="booktechnicians.jsp" class="active">Book Technicians</a>
        </li>
        <li>
            <a href="viewbill.jsp">View Bill</a>
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

String tname = request.getParameter("tname");
String location = session.getAttribute("location").toString();

Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM tests";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);

%>
<div class="form-div animated flip">
    <img src="img/user.png">
    <h2>Book Technician</h2>
    <form action="bookact.jsp" method="post">
        <input type="text" placeholder="Name" readonly="" value="<%=tname%>" name="tname" required="" autocomplete="off">
        <br>
        
        <input type="text" placeholder="Location" readonly="" value="<%=location%>" name="location" required="" autocomplete="off">
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
           <input type="date" placeholder="Date" name="date" required="" autocomplete="off">
           <br>
        <input type="text" placeholder="Contact No" name="mobile" pattern="[789][0-9]{9}" title="Indian Number Only(Max 10 Digit)" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Book">
        <br>
        <br>
    </form>
</div>
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