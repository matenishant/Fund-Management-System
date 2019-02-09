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
    
    <title>My JSP 'hide.jsp' starting page</title>
    
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
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
	String family=request.getParameter("family");
	String name=request.getParameter("name");
	System.out.println("Family id is::::::::::"+family+"name is:::::"+name);
 %>
 <%
	  try{  Connection con=DBInfo.con;
		String query="update family_details set hide_show='hide' where family_id='"+family+"' && name='"+name+"';";
		
		PreparedStatement ps=con.prepareStatement(query);
		System.out.println("query"+query);
       int flag=ps.executeUpdate();
	   System.out.println("hidden:::::::"+flag);
	   response.sendRedirect("family-members.jsp?id5="+family);
	   }
	   catch(Exception e)
	   {
	   e.printStackTrace();
	   }
		%>
  </body>
</html>
