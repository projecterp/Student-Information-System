<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="errorPage.jsp" %>
<%
	session.removeAttribute("id");
	session.removeAttribute("name");
	session.invalidate();
%>

<html>

<head>
<title>SIS-Login Zone --- Student Information System</title>
</head>

<body background="images/background.gif">

<p align="center"><b><font size="6" face="Arial" color="#336699">Student 
Information System</font></b></p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-style: solid; border-width: 1" bordercolor="#336699" width="52%" id="AutoNumber1" height="152">
    <tr>
      <td colspan="3" align="center" bgcolor="#336699" height="25">
      <font face="Arial" color="#FFFFFF"><b>Login</b></font></td>
    </tr>
    <tr>
      <td width="15%" height="127">&nbsp;</td>
      <td width="69%" height="127">
      <form method="POST" action="db">
        <font size="1"><strong>
		<font face="Verdana, Arial, Helvetica, sans-serif" color="#ff0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		* Please Check Userid OR Password *</font></strong></font><font face="Arial"><font color="#336699"><br>
		User ID</font> </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name="lid" size="20" tabindex="0"><p>
        <font face="Arial" color="#336699">Password&nbsp;&nbsp;&nbsp; </font>
        <input type="password" name="pwd" size="20" tabindex="0"></p>
		<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <input type="submit" value="Submit" name="B1" style="border: 1px solid #336699" tabindex="1">
        <input type="reset" value="Reset" name="B2" style="border: 1px solid #336699" tabindex="1"></p>
		</p>
      </form>
      </td>
      <td width="16%" height="127">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>

<p align="center"><font face="Arial" size="1" color="#336699">All Rights ® 
Reserved</font></p>

</body>

</html>