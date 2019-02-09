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
	    Connection con=DBInfo.con;
	    String family=request.getParameter("family");
	    String name1=request.getParameter("name");
	    System.out.println("name:::::::::::"+name1);
		String query="select * from family_details where family_id="+family+" && name='"+name1+"';";
		String gender="",contact="",email="";
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
        
	    while(res.next())
		{
			gender=res.getString(3);
			contact=res.getString(4);
			email=res.getString(5);		
			break;
		}
		System.out.println("family id::::"+family+"name:::"+name1+"gender::::::::"+gender+"email::::::"+email);
		%>
  <body>
  <center>
  <div id="main">
  <div id="header">
		<div id="head-left">
		<img src="images/ganesh.png" height="70px" width="80px" />
		</div>
		
		<div id="head-mid">
		<h1 id="heading">UPDATE MEMBERS</h1>
		</div>
		
		<div id="head-ryt" style="padding-top: 20px;">
			<a href="admin.jsp">Home</a><br>
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
  <div id="content" style="padding-top:40px; overflow: scroll;">
 

 

   <form action="up-members.jsp" method="post">
   <input type="hidden" value="<%=name1 %>" name="name1">
   
      <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='family-id' name='family-id' class='tf' value='<%=family %>' style="height: 30px;" readonly="readonly" required/>			
		<br /><br /> 
   
      <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='name' name='name' class='tf' value="<%=name1 %>" style="height: 30px;" required/>			
		<br /><br />       
		
		 <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button>
		 <select class='tf' id="gender" name="gender" style="height:30px;" required>
		 <option value="male" <% if(gender.equalsIgnoreCase("male")){%>selected<%} %>>Male</option>
		 <option value="female" <% if(gender.equalsIgnoreCase("female")){%>selected<%} %>>Female</option>
		 </select>
		
		<br><br>
      <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type='text' id='contact' name='contact' class='tf' value='<%=contact %>' style="height: 30px;" />			
		<br /><br /> 
      <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button> 
		<input type="email" id='email' name='email' class='tf' value='<%=email %>' style="height: 30px;" />			
		<br /><br /> 
 <br/><br/>      
       <input type="submit" value='Update' style='border:outset;'/>
		<button type='reset' name='Reset' style='border:outset; margin-left: 20px; width: 50px;'>Reset</button>
	
 </form>
    
	         </div>    
         </div> 
         </center>
  </body>
</html>
