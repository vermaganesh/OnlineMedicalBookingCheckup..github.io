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
    
<script>alert('Registration Sucess!')</script>

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

        <li>
            <a href="managerlogin.jsp">Manager</a>
        </li>
        <li>
            <a href="technicianlogin.jsp" class="active">Technician</a>
        </li>
        <li>
            <a href="customerlogin.jsp">Customer</a>
        </li>
    </ul>
</nav>
<!-- Login Form -->
<div class="form-div animated zoomInUp">
    <img src="img/user.png">
    <h2>Technician Login</h2>
    <form action="technicianact.jsp" method="post">
        <input type="text" placeholder="Username" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="">
        <br>
        <br>
        <input type="submit" value="Login">
        <p><a href="technicianreg.jsp" class="reg">New User Register Here...</a></p>
        <br>
    </form>
</div>
<br><br><br>
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