<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Reg-family.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/index.css" rel="stylesheet" type="text/css" />

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
		<h1 id="heading">REGISTER FAMILY</h1>
		</div>
		
		<div id="head-ryt" style="padding-top: 20px;">
			<a href="admin.jsp">Home</a><br>
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
<div id="content" style="padding-top:40px;">

<%
	String family="";
	for(int i=0; i<5;i++)
	{
		family+=(int)(Math.random()*9)+1;
	}

 %>

	<form action="register-family.jsp" method="post">
     	<button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='family-id' name='family-id' class='tf' value="<%=family %>" style="height: 30px;" readonly="readonly" required/>			<br /><br /> 
         
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='hof' name='hof' class='tf' placeholder='Head Person' style="height: 30px;" required/>			<br /><br /> 
         
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='address' name='address' class='tf' placeholder='Address' style="height: 30px;" required/>			<br /><br /> 
         
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<select id='gender' name='gender' class='tf' placeholder='Gender' style="height: 30px;" required>
		<option value="male">Male</option>
		<option value="female">Female</option>		
		</select>
		<br /><br /> 
		<button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='contact' name='contact' class='tf' placeholder='Contact' style="height: 30px;" required/>			
		<br /><br /> 
         
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		
		<input type="email" id='email' name='email' class='tf' placeholder='Email' style="height: 30px;" />			
		<br /><br /> 
        <br>
      	<input type="submit" value='Save' style='border:outset;'/>
		<button type='reset' name='Reset' style='border:outset; margin-left: 20px; width: 50px;'>Reset</button>
	
		<br><br>
	</form>

    
	         </div>    
         </div> 
         </center>
  </body>
</html>
