<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

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
            <a href="managerhome.jsp" class="active">Home</a>
        </li>
        <li class="dropdown">
        <a href="#">Add</a>
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
</nav><center>
<br><br><br><br><br><br><br><br><br><br><br><h1>Welcome Manager</h1>
<br><br><br><br><br><br><br><br><br><br><br><br><br></center>
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
<%
String username = session.getAttribute("username").toString();
%>