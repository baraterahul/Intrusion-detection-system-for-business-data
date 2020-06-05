<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserHome</title>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.bg-img {
  /* The image used */
  background-image: url("bagground.png");

  min-height: 300px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  /* Needed to position the navbar */
  position: relative;
}

/* Position the navbar container inside the image */
.container {
  position: absolute;
  margin: 20px;
  width: auto;
}

/* The navbar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Navbar links */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}
</style>
</head>
</head>
<body>

<div class="bg-img">
  <div class="container">
    <div class="topnav">
      <a href="#home">Home</a>
   
      <a href="#news">Add Alarm</a>
      <a href="#contact">Update Alarm</a>
      <a href="CloudServerRetriveData.jsp">Retrieve Data</a>
      <a href="addData.jsp">Add Data</a>
         <a href=" CloudServerViewAlarm2.jsp">View Alarm</a>
           <a href="retrievefiledata.jsp">Retrieve File Data</a>
      <a href="CloudServerLogout">Logout</a>
    </div>
  </div>
</div>
<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Alarm</div>
                    <div class="card-body">
                        <form  action="CloudServerAddAlarm" method="post">
                        <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">Alarm Name</label>
                                <div class="col-md-6">
                                    <input type="text" id="email_address" class="form-control"  name="alarmName" required autofocus>
                                </div>
                            </div>
                            <!-- id, alarmName, date, email, address, work -->
                            <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">Date</label>
                                <div class="col-md-6">
                                    <input type="date" id="email_address" class="form-control" name="date" required autofocus>
                                </div>
                            </div>
                            
                             <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">Time</label>
                                <div class="col-md-6">
                                    <input type="time" id="email_address" class="form-control" name="time" required autofocus>
                                </div>
                            </div>
                            <div class="form-group row">
                               
                                <div class="col-md-6">
                                    <input type="hidden" id="email_address" class="form-control" name="email" required autofocus>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">Address</label>
                                <div class="col-md-6">
                                    <input type="text" id="email_address" class="form-control" name="address" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Work</label>
                                <div class="col-md-6">
                                    <input type="text" id="password" class="form-control" name="work" required>
                                </div>
                            </div>
                            
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary" onclick="return Validate()">
                                    Submit
                                </button>
                                
                            </div>
                            </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    </div>

</main>
</body>
</html>