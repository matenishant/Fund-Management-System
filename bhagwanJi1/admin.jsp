<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Admin</title>
<link href="css/index.css" type="text/css" rel="stylesheet" />

<style>
a:link{
color: black;
}
a:VISITED {
	color: black;
}
</style>
		 
</head>
	<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
<body>
<center>
<div id="main">

	<div id="header">
		<div id="head-left">
		<img src="images/ganesh.png" height="70px" width="80px" />
		</div>
		
		<div id="head-mid">
		<h1 id="heading">ADMIN PANEL</h1>
		</div>
		
		<div id="head-ryt" style="padding-top: 20px;">
		<a href="logout.jsp">Logout</a>
		</div>
	</div>
	<div id="content" style="padding-top:40px;">
	
		<div style="width: 80%;">
			
			<div style="width: 400px; height:20px; background-color:#FF9966; border-radius:10px;">
			
			<a href="reg-family.jsp">Register</a> New Family
			</div>
			<br/>
			<div style="width: 400px; height:20px; background-color:#FF9966; border-radius:10px;">
			
			<a href="dhruv-fun-monthly-family.jsp">Dhruv Fund Rashi Details</a>
			</div>
			<br/>
			<div style="width: 400px; height:20px; background-color:#FF9966; border-radius:10px;">
			
			<a href="view-families.jsp">View & Update Details </a>of Families
			</div>
			
		<br/>
		</div>
	
		</div>
		
	
 </div><!-- main close -->
</center>
</body>
</html>

