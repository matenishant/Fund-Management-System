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
		<h1 id="heading">REGISTERED FAMILIES</h1>
		</div>
		
		<div id="head-ryt" style="padding-top: 20px;">
		<a href="admin.jsp">Home</a><br>
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
<%
	String id1=(String)session.getAttribute("id");
	if(id1==null)
	response.sendRedirect("index.jsp");
 %>
 
				
<div id="content" style="padding-top:40px; height:500px; overflow: scroll;">
		

 <br><br>
  <%@ page import="java.sql.*,p1.DBInfo"%>
  <table border="2px;" style="width: 100%; ">
    <tr>
      <th scope="col">Family Id</th>
      <th scope="col">Head of the Family</th>
      <th scope="col">Address</th>
      <th scope="col">Contact</th>
      <th scope="col">Email</th>
      <th scope="col">Add Members</th>
    	<th scope="col">Update</th>
    	<th scope="col">Hide</th>
    </tr>
    	

	<%
	    Connection con=DBInfo.con;
		String query="select * from family where hide_show='show'";
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		    String s1=res.getString(1);
		    System.out.println(s1+"::::::::::"+s1);
		    String s2=res.getString(2);
			String s3=res.getString(3);
			String s4=res.getString(4);
			String s5=res.getString(5);
			
			
		
			
			 out.println("<tr>");
             out.println("<td>"+s1+"</td>");
             out.println("<td><a href=family-members.jsp?id5="+s1+">"+s2+"</a></td>");
			 out.println("<td>"+s3+"</td>");
			 out.println("<td>"+s4+"</td>");
			  out.println("<td>"+s5+"</td>");
              out.println("<td><a href=reg-members.jsp?family="+s1+">Add Members</a></td>");
             %>
             
             
             
             <%
             
             out.println("<td><a href=update-family.jsp?family="+s1+">Update</a></td>");
			 
			  out.println("<td><a href=hide.jsp?family="+s1+">Hide</a></td>");
			  System.out.println("next s1"+s1);
             out.println("</tr>");
			
		}
	
	
	%>
	
	
	
	
	
   
  </table>
  <p>&nbsp; </p>
</div>
</html>
    
  </body>
</html>
