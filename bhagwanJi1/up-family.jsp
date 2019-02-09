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
 <%String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
	 %> 
  <body>
    <%
	int family=Integer.parseInt(request.getParameter("family-id"));
	   String hof=request.getParameter("hof");
	   String address=request.getParameter("address");
	   String contact=request.getParameter("contact");
	   String email=request.getParameter("email");
	   String name=request.getParameter("hof-name");
	try
  	{
  	   
	    Connection con=DBInfo.con;
	    String query="update family set family_id='"+family+"', hof='"+hof+"', address='"+address+"', hof_contact='"+contact+"', hof_email='"+email+"' where family_id='"+family+"';";
	  	String qry="update family_details set family_id='"+family+"', name='"+hof+"', contact='"+contact+"', email='"+email+"' where family_id='"+family+"' && name='"+name+"';";
	    PreparedStatement ps=con.prepareStatement(query);
	    PreparedStatement ps1=con.prepareStatement(qry);
	    System.out.println(query+qry);
	    int flag=ps.executeUpdate();
	    int flag1=ps1.executeUpdate();
	    
	    if(flag!=0 && flag1!=0)
	    response.sendRedirect("view-families.jsp");
	    else
	    response.sendRedirect("update-family.jsp");
		
		System.out.println("values"+flag);
	    
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
%>
	
	
  </body>
</html>
