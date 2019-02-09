<%@page import="p1.DBInfo"%>
<%@page import="java.sql.PreparedStatement"%>
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
		System.out.print("amount called");
		String family = (String) (session.getAttribute("idfam"));
		int last = (Integer) (session.getAttribute("last"));
		String receipt = request.getParameter("receipt");
		String datedeposit = request.getParameter("datedeposit");
		int amount[] = new int[50];
		String name[] = new String[10];
		for (int i = 0; i <= last; i++) {
			amount[i] = Integer
					.parseInt(request.getParameter("amount" + i));
			name[i] =request.getParameter("nm" + i);
			System.out.println("-------------" + name[i]);
			System.out.println("Name and Amount" + name[i] + amount[i]);

			try {

				Connection con = DBInfo.con;
				String query = "insert into amount values('" + receipt
						+ "','" + name[i] + "','" + family + "','"
						+ amount[i] + "','" + datedeposit + "');";
				PreparedStatement ps = con.prepareStatement(query);

				int flag = ps.executeUpdate();
				System.out.println("flag fund::::::;" + query);

				response.sendRedirect("dhruv-fun-monthly-family.jsp");

				System.out.println("values" + flag
						+ ":::::::::::::inserted");

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		//System.out.println("family::::::;"+family);
	%>


</body>
</html>
