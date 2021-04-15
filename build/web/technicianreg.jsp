<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>
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
            <a href="index.html" >Home</a>
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
<div class="form-div animated bounceInDown">
    <img src="img/user.png">
    <h2>Register Here</h2>
    <form action="technicianregact.jsp" method="post">
        <input type="text" placeholder="Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Location" name="address" required="" autocomplete="off">
        <br>
         <input type="text" placeholder="Available Timings" name="timings" required="" autocomplete="off">
        <br>
        
        <input type="text" placeholder="Contact No" name="cnumber" required="" autocomplete="off">
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
        <a href="" target="_blank">
            <i class="fa fa-user-circle"></i> Yash Pancholi,Ravi Upadhyay and Ganesh Verma
        </a>
    </p>
</footer>
</body>
</html>