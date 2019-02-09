<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add-amount.jsp' starting page</title>

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

<body>

	<%
		String family = request.getParameter("family");
		//	int count=Integer.parseInt(request.getParameter("count"));
	%>
	<center>
		<div id="main">
			<div id="header">
				<div id="head-left">
					<img src="images/ganesh.png" height="70px" width="80px" />
				</div>

				<div id="head-mid">
					<h1 id="heading">ADD AMOUNT</h1>
				</div>

				<div id="head-ryt" style="padding-top: 20px;">
					<a href="admin.jsp">Home</a><br> <a href="logout.jsp">Logout</a>
				</div>
			</div>
			<div id="content" style="padding-top:40px;">
				<%
					int last = 0;
				%>

				<%
					try {
						Connection con = DBInfo.con;
						String query1 = "Select hof, address, name from family, family_details where family.family_id=family_details.family_id && family.hide_show='show' && family_details.hide_show='show' && family.family_id="
								+ family + ";";
						String query2 = "Select hof, address, name from family, family_details where family.family_id=family_details.family_id && family.hide_show='show' && family_details.hide_show='show' && family.family_id="
								+ family + ";";
						String s2 = "", s1 = "", s3 = "";
						int count = 1;
						PreparedStatement ps1 = con.prepareStatement(query1);
						PreparedStatement ps2 = con.prepareStatement(query2);
						ResultSet res1 = ps1.executeQuery();
						ResultSet res2 = ps2.executeQuery();
						while (res1.next()) {
							s1 = res1.getString(1);
							s2 = res1.getString(2);
							break;
						}
				%>
				<p>
					Family Id:
					<%=family%><br> Head of the Family:
					<%=s1%><br>Address:
					<%=s2%>
					<%
						session.setAttribute("idfam", family);
					%>
				</p>
				<form action="amount.jsp" method="post" >

					<button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button>
					<input type='number' id='receipt' name='receipt' class='tf' placeholder='Receipt Number' style="height: 30px;" required /> <br />
					<br />
					<button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button>
					<input type='text' onfocus="this.type='date'" onblur="this.type = 'text'" name='datedeposit' id='datedeposit' class='tf' placeholder='Date of Deposit' min="2016-01-01" max="2016-12-31" style="height: 30px;" required /> <br />
					<br />

					<table border=2 width=80%>

						<tr>
							<th>Member</th>
							<th>Amount</th>
						</tr>



						<% count=0;
							while (res2.next()) {
									last = count;
									s3 = res2.getString(3);
						%>
						<tr>
							<%-- <td align="center"><input type='text' id="nm<%=count%>" name='nm<%=count%>' style="width: 250; padding-left: 20px;" value="<%=s3%>" required disabled="disabled" /></td> --%>
							<td align="center"><input type='text' id='nm<%=count%>' name='nm<%=count%>' value="<%=s3 %>" style="padding-left: 20px;" readonly="readonly" /></td>
							<td align="center"><input type='number' id='amount<%=count%>' name='amount<%=count%>' value='20' min=20 style="padding-left: 20px;" required /></td>

							<%
								count++;
									}
								} catch (Exception e) {
									e.printStackTrace();
								}
								session.setAttribute("last", last);
							%>
						
					</table>
					<br>
					<br> <input type="submit" value='Save' style='border:outset;' />
				</form>

			</div>
</body>
</html>
