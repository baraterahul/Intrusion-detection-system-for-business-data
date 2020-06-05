<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alarm</title>
</head>
<body>
<% 
String id=request.getParameter("id");
System.out.println("id");
Connection con=Dataconnection.getConnection();
String query="select * from cloudalarm where id='"+id+"'";
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	/* id, alarmName, date, email, address, work, time	 */
String Aid=rs.getString(1);
String alarmName=rs.getString(2);
String date=rs.getString(3);
String email=rs.getString(4);
String address=rs.getString(5);
String work=rs.getString(6);
String time=rs.getString(7);
System.out.println(Aid);
System.out.println(alarmName);
System.out.println(date);
System.out.println(email);
System.out.println(address);
System.out.println(work);
System.out.println(time);

Connection conn1=Dataconnection.getConnection();
/* id, alarmName, date, email, address, work, time */
/* String qq="update useralarm set id=?,alarmName=?,date=?,email=?,address=?,work=?,time=? where id=?"; */
String qq="update useralarm set id=?,alarmName=?,date=?,email=?, address=?,work=?,time=? where id=?";
PreparedStatement ps2=conn1.prepareStatement(qq);
ps2.setString(1, id);
ps2.setString(2, alarmName);
ps2.setString(3, date);
ps2.setString(4, email);
ps2.setString(5, address);
ps2.setString(6, work);
ps2.setString(7, time);
ps2.setString(8, id);
int i=ps2.executeUpdate();
if(i>0)
{
	Connection c2=Dataconnection.getConnection();
	String q3="DELETE FROM updatealarmalert WHERE Aid='"+id+"';";
	Statement stmt=c2.createStatement();
	int h=stmt.executeUpdate(q3);
	if(h>0)
	{
		System.out.print("Data delete sucessfully");
	}
	
	   out.println("<script type=\"text/javascript\">");
	   out.println("alert('Data Retrived sucessfully..');");
	   out.println("location='cloudServerAddAlarm.jsp';");
	   out.println("</script>");
}
}
%>
</body>
</html>