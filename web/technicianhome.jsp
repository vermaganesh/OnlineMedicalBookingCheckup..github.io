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
<!-- Navbar -->
<nav>
    <ul>
        <li>
            <a href="technicianhome.jsp" class="active">Home</a>
        </li>

        <li>
            <a href="customerdetails.jsp">View Customer Details</a>
        </li>
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>
<%
String username = session.getAttribute("username").toString();
%>
<center>
<br><br><br><br><br><br><br><br><br><br><br><h1>Welcome <%=username%></h1>
<br><br><br><br><br><br><br><br><br><br><br></center>
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