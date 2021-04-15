<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
    <link href="style1.css" rel="stylesheet" type="text/css" />

</head>
<body>
        <style>
        
        th{
           font-size: 12px;
            color: black;
        }
        <!--
.style2 {
	color: #FF3399;
	font-size: 18px;
}
.style4 {color: #FFFF00}
.style5 {color: #FF0000}
.style10 {font-size: 40px}
.style11 {
	font-weight: bold;
	color: #FF00FF;
}
.style13 {font-weight: bold}
.style15 {font-weight: bold}
.style17 {font-weight: bold}
.style18 {font-weight: bold}
.style19 {font-weight: bold}
.style22 {
	font-size: 24px;
	color: #3366FF;
}
.style23 {
	font-size: 28px;
	color: #3366FF;
}
.style24 {font-family: Arial, Helvetica, sans-serif}
.style27 {color: #6666FF}
.style28 {color: #FF3366}
.style29 {
	font-size: 16px;
	color: #FF0000;
	font-style: italic;
}
-->
</style>

<style>
  
        
        .image{
            border: 2px solid black;
            width: 300px;
            float: left;
            text-align: center;
            margin: 5px;
            padding: 7px;
            border-radius: 10px;
           margin-left: 2cm;
        }
        .image:hover{
            box-shadow: 0 0 15px black;
            cursor: pointer;
        }
        .image img{
            width: 100%;
            height: 200px;
            border-radius: 10px;
        }
        .desc{
            padding: 10px;
            color:white;
        }
    </style>
    
    
<!-- Main Header -->
<header class="main-header">
    <img src="img/logo.png" alt="">
    <h1>Health Care Logistics</h1>
</header>
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="managerhome.jsp" >Home</a>
        </li>
        <li class="dropdown">
            <a href="addequipments.jsp">Add</a>
            <div class="dropdown_list">
                <a href="addequipments.jsp">Add Equipments</a>
                <a href="addtests.jsp">Add Tests</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#" class="active">View</a>
            <div class="dropdown_list">
                <a href="viewequipments.jsp">View Equipments</a>
                <a href="viewtests.jsp">View Tests</a>
                <a href="viewtechnicians.jsp">View Technician</a>
                <a href="viewcustomers.jsp">View Customer</a>
                <a href="totaltests.jsp">Total Tests</a>
            </div>
        </li>
        <li>
            <a href="managerlogin.jsp">Logout</a>
        </li>
    </ul>
</nav>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

 <%
    

    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from equipments");    
        
	ResultSet rs=pst.executeQuery();
        %>
<h2>View Equipments</h2>

    <%
    while(rs.next()){
    %>
   	
                                     
          <div class="image">
            <img src="img/<%=rs.getString("image")%>" width="600" height="400">
            <div class="desc"><%=rs.getString("name")%></div>
        </div>                           
                                     
                   
      
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 
                                 <%}%>



</body>
</html>