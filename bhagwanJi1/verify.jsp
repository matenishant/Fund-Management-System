<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'verify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
/* 	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp"); */
 %>
  
  <body>
		   
		<% 	 	
  
   String uname=request.getParameter("uname");
   String pass=request.getParameter("pass");

  session.setAttribute("id", uname);
  
  
    Connection con=DBInfo.con;
    String query="select * from login where username=? and password=?";
    
   
		int flag=0;
		try
		{
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				
				flag=1;
				break;
			}
				
					
		
		
		if(flag==1)			
		   {
				System.out.println("-----------------Login Action.java Admin section called---------------------");
			  	response.sendRedirect("admin.jsp");
			}					
		else
		{
			  System.out.println("error.jsp");
			  response.sendRedirect("error.jsp");
		}
	
	}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
	
	%>
		

  </body>
</html>
