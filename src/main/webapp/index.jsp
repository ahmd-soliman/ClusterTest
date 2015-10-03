<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
      <!--@author ByteSnapper  -->
<html>
<head>
<title>ByteSnapper Cluster Test</title>
</head>
<body>
	<form>
		<h3>Please enter your name :</h3>
		<input name="name" type="text" width="250" maxlength="250" />
		<br /> <br />
		<button type="submit"><h3>Submit</h3></button>

		<%
			String name = request.getParameter("name");

			if (name != null) {
				session.setAttribute("username", name);
			}

			if (session.getAttribute("username") != null) {
		%>
		<h3><label id="output"><%=session.getAttribute("username").toString()%></label></h3>

		<%
			}
		%>
		
	</form>	
	<br/>
	
	<button onclick="window.location.href='/ClusterTest/'"><h3>Refresh Without Submit</h3></button>
	<br />
	<br />
	<button onclick="window.location.href='/ClusterTest/SessionID.jsp'"><h3>View Session ID</h3></button>




</body>
</html>
