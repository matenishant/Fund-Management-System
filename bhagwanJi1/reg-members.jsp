<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
   <% 	 
  	 
	String family=request.getParameter("family");
	session.setAttribute("family", family);
	String hof="", address="";
	
	  Connection con=DBInfo.con;
		String query="select hof, address from family where family_id="+family;
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
	    {
	    	 hof=res.getString("hof");
	    	 address=res.getString("address");
	    }
   %>
  <body>
  <center>
  <div id="main">
  <div id="header">
		<div id="head-left">
		<img src="images/ganesh.png" height="70px" width="80px" />
		</div>
		
		<div id="head-mid">
		<h1 id="heading">MEMBERS REGISTRATION</h1>
		</div>
		
		<div id="head-ryt" style="padding-top: 20px;">
			<a href="admin.jsp">Home</a><br>
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
  <div id="content" style="padding-top:40px; overflow: scroll;">
 

   <p>Family Id: <%=family %><br>Head of the Family: <%=hof %><br>Address: <%=address %>
</p>   
   

   <form action="register-members.jsp" method="post">
   
   	<button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='name' name='name' class='tf' placeholder='Name' style="height: 30px;" required/>			<br /><br /> 
        
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<select id='gender' name='gender' class='tf' placeholder='Gender' style="height: 30px;" required>
		<option value="male">Male</option>
		<option value="female">Female</option>		
		</select>
		<br /><br /> 
        
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='contact' name='contact' class='tf' placeholder='Contact' style="height: 30px;" />			<br /><br /> 
       
        <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type="email" id='email' name='email' class='tf' placeholder='Email' style="height: 30px;" />			<br /><br /> 
       
    
 <br/><br/>      
        <input type="submit" value='Save' style='border:outset;'/>
		<button type='reset' name='Reset' style='border:outset; margin-left: 20px; width: 50px;'>Reset</button>
	
 </form>
    
	         </div>    
         </div> 
         </center>
  </body>
</html>
