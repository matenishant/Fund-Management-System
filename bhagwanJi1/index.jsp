<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/index.css" type="text/css" rel="stylesheet" />


		 
</head>

<body>
<center>
<div id="main">

	<div id="header">
		<div id="head-left">
		<img src="images/ganesh.png" height="70px" width="80px" />
		</div>
		
		<div id="head-mid">
		<h1 id="heading">LOGIN</h1>
		</div>
		
		<div id="head-ryt">
		</div>
	</div>
	<div id="content" style="padding-top:40px;">
	
	
		
		 <center> 
		
				<form action="verify.jsp" method="post" >

		
				 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
				 <input type='text' name='uname' class='tf' placeholder='Username' style="height: 22px;" required/>			<br /><br /> 
				
						
				 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
				 <input type='password' name='pass' class='tf' placeholder='Password' style="height: 22px;" required/>			<br /><br /> 
				
		
		 					<br /><br /> 
		
				<input type="submit" style="border:outset; background-color:#FF6633; height:30px; width:70px;"/>	
				<input type='button' name='cancel' value='Cancel' style='border:outset; background-color:#FF6633; height:30px; width:70px;' /> 
					<br /><br />
		 		</form>
		</center>		
		
	
	
	
	
	
	</div>
	
	
</div>

</center>

</body>
</html>
