<%@page import="p1.DBInfo"%>
<%@page import="java.sql.PreparedStatement"%>
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
    
    <title>My JSP 'register-family.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
	   String family=(String)session.getAttribute("family");
	   
	   String name=request.getParameter("name");
	   String gender=request.getParameter("gender");
	   String contact=request.getParameter("contact");
	   String email=request.getParameter("email");
	 	session.setAttribute("id8", family);
	try
  	{
  	   
	    Connection con=DBInfo.con;
	    String query="insert into family_details values('"+family+"','"+name+"','"+gender+"','"+contact+"','"+email+"','show');";
	    PreparedStatement ps=con.prepareStatement(query);
	    
	    
	    int flag=ps.executeUpdate();
	    
	    if(flag!=0)
	    response.sendRedirect("family-members.jsp?id5="+family);
	    else
	    response.sendRedirect("reg-members.jsp");
		
		System.out.println("values"+flag);
	    
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
%>
	
	
  </body>
</html>
