<%@ page contentType="text/html;"  language="java"  errorPage="error_Page.jsp" %>
<%
	session.removeAttribute("id");
	session.removeAttribute("name");
	session.invalidate();
%>

<html>
<head>
<title>Logout - Terminating Your Session</title>
<meta http-equiv="refresh"  content="3 ; url=login.jsp">
</head>
<body>

<p><strong><font size="5" color="#808080" face="Courier New, Courier, mono">You 
are logout Successfully!</font><font face="Courier New, Courier, mono" color="#999999">
<a href="login.jsp">Re-login</a></font></strong></p>
<p><strong><font color="#999999" face="Courier New, Courier, mono">Redirecting 
  you to Login Page automatically after 3 seconds. </font></strong> &nbsp;</p>
<p align="center">
<img border="0" src="images/redirect.JPG" width="200" height="250"></p>

</body>
</html>
