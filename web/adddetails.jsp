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
            <a href="technicianhome.jsp">Home</a>
        </li>

        <li>
            <a href="addcustomerdetails.jsp" class="active">Add Customer Details</a>
        </li>
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>
<%

String tname = session.getAttribute("username").toString();                    
String username = request.getParameter("cname");                      
String types = request.getParameter("types");
String location = request.getParameter("location");
String cnumber = request.getParameter("mobile");
String date = request.getParameter("date");

%>
<!-- Login Form -->
<div class="form-div animated bounceInDown">
    <img src="img/user.png">
    <h2>Add Customer Details</h2>
    <form action="adddetailsact.jsp" method="post">
        <input type="text" placeholder="Name" readonly="" value="<%=username%>" name="cname" required="" autocomplete="off">
        <br>        
        <input type="text" placeholder="Types" value="<%=types%>" name="type" required="" autocomplete="off">
        <br>
       <select  name="stype" required="">
            <option value="" >Select</option>
            <option value="Hair" >Hair</option>
            <option value="Blood" >Blood</option>
            <option value="Urine" >Urine</option>
           
            
        </select>
        <br>
        <input type="text" placeholder="Cost" name="cost" required="" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Add">
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