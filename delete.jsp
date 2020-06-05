<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="dbconnect.Dataconnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
System.out.println("id"+id);



Connection con5=Dataconnection.getConnection();
String q3="DELETE FROM updateuserfile WHERE id='"+id+"';";
Statement stmt=con5.createStatement();
int h=stmt.executeUpdate(q3);
if(h>0)
{
	
	 out.println("<script type=\"text/javascript\">");
	  out.println("alert('Data Delete sucessfully..');");
	  out.println("location='cloudServerAddAlarm.jsp';");
	  out.println("</script>");
}

%>
</body>
</html>