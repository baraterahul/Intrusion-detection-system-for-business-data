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
System.out.println(id);
try {
	Connection con2=Dataconnection.getConnection();
	String qqq="select * from updateuserfile where id='"+id+"'";
	PreparedStatement ps=con2.prepareStatement(qqq);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
		
	{
		String fid=rs.getString(4);
		System.out.println(fid);
		String hash=rs.getString(3);
		System.out.println(hash);
		
		Connection con=Dataconnection.getConnection();
		String query="select * from cloudfile where id='"+fid+"'";
		PreparedStatement pst=con.prepareStatement(query);
		ResultSet rse = pst.executeQuery(query);
		System.out.println("hii");
		while(rse.next())
		{
			String fileName1=rse.getString(4);
			System.out.println("file name"+fileName1);
			String hash1=rse.getString(7);
			System.out.println(hash1);

/*Connection con5=Dataconnection.getConnection();
String q3="select  FROM updatealarmalert WHERE id='"+fid+"';";
Statement stmt=con5.createStatement();
int h=stmt.executeUpdate(q3);
if(h>0)
{
	PrintWriter out=response.getWriter();
	 out.println("<script type=\"text/javascript\">");
	  out.println("alert('Login sucessfully..');");
	  out.println("location='cloudServerAddAlarm.jsp';");
	  out.println("</script>");
}*/
		if(hash.equals(hash1))	
			
		{
			
			 out.println("<script type=\"text/javascript\">");
			  out.println("alert('Data is not tempered..');");
			  out.println("location='retrievefiledata.jsp';");
			  out.println("</script>");
		}
		else
		{
			
			 out.println("<script type=\"text/javascript\">");
			  out.println("alert('Data is tempered please retrieve it ..');");
			  out.println("location='retrievefiledata.jsp';");
			  out.println("</script>");
		}
			

		}
	}
} catch (Exception e) {
	e.printStackTrace();
}


 %>
</body>
</html>