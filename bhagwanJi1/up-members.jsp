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
		String family=request.getParameter("family-id");
	   String name=request.getParameter("name");
	   String name1=request.getParameter("name1");
	   String gender=request.getParameter("gender");
	   String contact=request.getParameter("contact");
	   String email=request.getParameter("email");
	try
  	{
  	   
	    Connection con=DBInfo.con;
	    String qry="update family set family_id='"+family+"', hof='"+name+"', hof_contact='"+contact+"', hof_email='"+email+"' where family_id='"+family+"' && hof='"+name1+"';";
	    String query="update family_details set family_id='"+family+"', name='"+name+"', gender='"+gender+"', contact='"+contact+"', email='"+email+"' where family_id='"+family+"' && name='"+name1+"';";
	    PreparedStatement ps=con.prepareStatement(qry);
	    System.out.println("query is::::::;"+query);
	    System.out.println("qry is::::::;"+qry);
	    PreparedStatement ps1=con.prepareStatement(query);
	    
	    int flagup=ps.executeUpdate();
	    int flagup1=ps1.executeUpdate();
	   	System.out.println("flag::::::;"+flagup+"::::::::flag1::::"+flagup1);
	    if(flagup1!=0)
	    response.sendRedirect("family-members.jsp?id5="+family);
	    else
	    response.sendRedirect("update-member.jsp?family-id"+family);
		
		System.out.println("values"+flagup);
	    
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
%>
	
	
  </body>
</html>
