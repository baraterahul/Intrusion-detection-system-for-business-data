<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Alarm</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: #4CAF50;
  color: white;
}

.round {
  border-radius: 50%;
}
</style>
</head>
<body>
<div class="container">
  <h2>Cloud Server Retrieve Data</h2>
  <p></p>  
 
   
 
  
 <a href="cloudServerAddAlarm.jsp" class="previous">&laquo; Back</a>

  <a href="CloudServerLogout" class="previous">&laquo; Logout</a><br></br>
  
   <a href="#" class="previous">&laquo; View Changed Data</a>
  
  <%

  ArrayList<String>fuzzyLogic=new ArrayList<String>();
  
						String qry = "select * from updatealarmalert";
									
												Class.forName("com.mysql.jdbc.Driver");
													Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/alarm","root","root");
													PreparedStatement pst=c.prepareStatement(qry);
												
													%>
													
													<%
													ResultSet rset = pst.executeQuery(); 
													%>
													
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
      <th>Id</th>
        <th>Reminder</th>
        <th>Date</th>
         <th>Time</th>
        <th>Email</th>
        <th>Address</th>
        <th>Work</th>
        
        
         <th>Retrieved Data</th>
      
       
      </tr>
    </thead>
   
    <tbody id="myTable">
      <% 
								 
							
								  while(rset.next())
									  
									
								 
								 {%>
								 <tr>
								   <th scope="row"><%=rset.getString(1)%></th>
									<th><%=rset.getString(2)%></th>
									<th><%=rset.getString(3)%></th>
									<th><%=rset.getString(7)%></th>
									<th><%=rset.getString(4)%></th>
								
									<th><%=rset.getString(5)%></th>
									<th><%=rset.getString(6)%></th>
									<td><a href="CloudServerretrieveData.jsp?id=<%=rset.getString(8)%>">Retrieve Data</a></td>
								
									
									<% 
									
								 fuzzyLogic.add(rset.getString(1));
									fuzzyLogic.add(rset.getString(2));
									fuzzyLogic.add(rset.getString(3));
									fuzzyLogic.add(rset.getString(7));
									fuzzyLogic.add(rset.getString(4));
									fuzzyLogic.add(rset.getString(5));
									fuzzyLogic.add(rset.getString(6));
								 }%>
								  </tr>
    </tbody>
 </table>
      <% 
                    ArrayList<String>list=new ArrayList<String>();
					Connection con1=Dataconnection.getConnection();
      String query1="select * from cloudalarm";
      PreparedStatement ps1=con1.prepareStatement(query1);
      ResultSet rs2=ps1.executeQuery();
      
							
								  while(rs2.next())
									  
									
								 
								 {%>
								
									
									
								
									
									<%
							     	list.add(rs2.getString(1));	
									list.add(rs2.getString(2));	
									list.add(rs2.getString(3));	
									list.add(rs2.getString(7));	
									list.add(rs2.getString(4));	
									list.add(rs2.getString(5));	
									list.add(rs2.getString(6));	
								 }%>
								 
								 
								<% 
								if(fuzzyLogic.equals(list))
								{
									 System.out.print("Data is changed by the Some one Please check");
								}
								
								
								%>
		
  
</div>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>