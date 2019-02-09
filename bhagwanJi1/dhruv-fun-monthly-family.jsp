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
		<h1 id="heading">DHRUV FUND RASHI-2016</h1>
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
<table border="2px;" style="width: 100%;">
 
  <%@ page import="java.sql.*,p1.DBInfo"%>
  
    <tr>
      <th scope="col">Receipt Number</th>
      <th scope="col">Name</th>
      <th scope="col">Family Id</th>
      <th scope="col">Amount</th>
      <th scope="col">Date of Deposit</th>
    </tr>
    	<tr>
    	<td colspan=5 align="center"><strong>January</strong></td>
    	</tr>

	<%
	    Connection con=DBInfo.con;
		String query="select receipt_id, name, family_id, amount, datedeposit, month(datedeposit) from amount order by receipt_id";
		//String qry="select sum(amount), month(datedeposit) from amount group by month(datedeposit)";
		//PreparedStatement ps1=con.prepareStatement(qry);
		PreparedStatement ps=con.prepareStatement(query);
		int total=0,month2;
		//ResultSet rs=ps1.executeQuery();
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==1)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of January</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>February</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==2)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of February</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
		
   <tr>
    	<td colspan=5 align="center"><strong>March</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==3)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of March</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	
	<tr>
    	<td colspan=5 align="center"><strong>April</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==4)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of April</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>May</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==5)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of May</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>June</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==6)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of June</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>July</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==7)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of July</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>August</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==8)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of August</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>September</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==9)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of September</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>October</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==10)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of October</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>November</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==11)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of November</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
	
	<tr>
    	<td colspan=5 align="center"><strong>December</strong></td>
    	</tr>

	<%
	    total=0;
		
		//ResultSet rs=ps1.executeQuery();
         res=ps.executeQuery();
	    while(res.next())
		{
		    String rcpt=res.getString(1);
		    System.out.println(rcpt+"::::::::::"+rcpt);
		    String name=res.getString(2);
			String family=res.getString(3);
			int amount=res.getInt(4);
			String datedeposit=res.getString(5);
			int month=res.getInt(6);
			if(month==12)
			{
			 out.println("<tr>");
             out.println("<td>"+rcpt+"</td>");
             out.println("<td>"+name+"</td>");
			 out.println("<td>"+family+"</td>");
			 out.println("<td>"+amount+"</td>");
			 out.println("<td>"+datedeposit+"</td>");
             out.println("</tr>");	
             total+=amount;
             }		
		}
	
	/* while(rs.next())
	{
		total=rs.getInt(1);
		month2=rs.getInt(2);
	} */
	
	%>
	<tr>
		<td colspan=3><strong>Total of December</strong></td>
		<td colspan=2><strong><%=total %></strong></td>
	
	</tr>
  </table>
  <p>&nbsp; </p>
</div>
</html>
    
  </body>
</html>
