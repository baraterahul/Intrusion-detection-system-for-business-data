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
  <h2>Cloud Server View Original Alarm Details</h2>
  <p></p>  
 
   
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
  
 <a href="cloudServerAddAlarm.jsp" class="previous">&laquo; Back</a>

  <a href="CloudServerLogout" class="previous">&laquo; Logout</a>
  
  <%

  String AID=request.getParameter("id");
  System.out.println(AID);
  
						String qry = "select * from cloudalarm where id='"+AID+"'";
									
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
        <th>Retrieve Data</th>
      
       
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
									<td><a href="Retrievedata.jsp?id=<%=rset.getString(1)%>">Retrieve</a></td>
									
									
									<%}%>
								  </tr>
    </tbody>
  </table>
  
  
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