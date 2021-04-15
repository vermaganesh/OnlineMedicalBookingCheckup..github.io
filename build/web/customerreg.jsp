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
            <a href="index.html">Home</a>
        </li>
        <li>
            <a href="managerlogin.jsp">Manager</a>
        </li>
        <li>
            <a href="technicianlogin.jsp">Technician</a>
        </li>
        <li>
            <a href="customerlogin.jsp" class="active">Customer</a>
        </li>
    </ul>
</nav>
<div class="form-div animated flip">
    <img src="img/user.png">
    <h2>Register Here</h2>
    <form action="customerregact.jsp" method="post">
        <input type="text" placeholder="Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Enter Valid Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Location" name="address" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Contact No" name="password" pattern="[789][0-9]{9}" title="Indian Number Only(Max 10 Digit)" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Register">
        <br>
        <br>
    </form>
</div>
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