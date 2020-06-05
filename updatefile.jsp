<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alarm</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/style.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="#">User Update File</a>
         <a class="navbar-brand" href="UserLogout">Logout</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
               
                
            </ul>

        </div>
    </div>
</nav>

<% String id=request.getParameter("id");
System.out.print("User id"+id);

Connection con=Dataconnection.getConnection();
String qqq="select * from userfile where id='"+id+"'";
PreparedStatement ps=con.prepareStatement(qqq);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Update Alarm</div>
                    <div class="card-body">
                        <form  action="updatecontroleer" method="post" enctype="multipart/form-data">
                       
                            
                            <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                           
                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Upload file</label>
                                <div class="col-md-6">
                                    <input type="file"  class="form-control" name="file">
                                </div>
                            </div>
                           

                            

                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Update File Details
                                </button>
                                  <%} %>
                            </div>
                            </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
   

</main>

</body>
</html>