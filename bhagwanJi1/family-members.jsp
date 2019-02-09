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
		<h1 id="heading">FAMILY DETAILS</h1>
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
	String family=request.getParameter("id5");
	
	System.out.println("id5 is::::::::"+family);
//	int count=0;
 %>
 
				
<div id="content" style="padding-top:40px; height:500px; overflow: scroll;">
		  <p>Family Id: <%=family %>
</p>   
<font size="+1" >
<p align="right" style="margin-right: 20px;"><a href="add-amount.jsp?family=<%=family %>">Add Amount</a></p>
 </font><br>
  <%@ page import="java.sql.*,p1.DBInfo"%>
  <table border="2px;" style="width: 100%; ">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Gender</th>
     
      <th scope="col">Contact</th>
      <th scope="col">Email</th>
    	
    	<th scope="col">Update</th>
    	<th scope="col">Hide</th>
    </tr>
    	

	<%
		try{
	    Connection con=DBInfo.con;
		String query="select * from family_details where family_id="+family+" && hide_show='show'";
		
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
			
		//	count++;
		
			
			 out.println("<tr>");
            
             out.println("<td>"+s2+"</td>");
			 out.println("<td>"+s3+"</td>");
			 out.println("<td>"+s4+"</td>");
			  out.println("<td>"+s5+"</td>");
          %>
          
          <td><a href="update-member.jsp?family=<%=s1 %>&&name=<%=s2 %> ">update</a></td>    
        
			 
			  <td><a href="hide_member.jsp?family=<%=s1 %>&&name=<%=s2 %>">Hide</a></td>
			 <% System.out.println("next s1"+s1);
             out.println("</tr>");
			
		}
		}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	
	
	
	
	
   
  </table>
  <p>&nbsp; </p>
</div>
</html>
    
  </body>
</html>
