<%-- 
    Document   : nyingine
    Created on : 07-Jun-2017, 02:17:36
    Author     : Lunodzo Mwinuka
--%>
<META http-equiv="refresh" content="3;URL=index.jsp"> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : error_login
    Created on : 07-Jun-2017, 00:36:05
    Author     : Lunodzo Mwinuka
--%>

<html lang="en">
  
    
<head>
        <title>Law Firm | Logg Off</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="check_login.jsp">
                <div class="control-group normal_text"> <img src="img/logo.png">
                <div class="widget-content">
                    <div class="error_ex">
                        
                      <h3>You are logged out</h3>
                      <p>See you next time</p>
                        
                    </div>
                    <div class="form-actions">
                        <span class="pull-center"><a href="index.jsp" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    </div>
                </div>
                </div>
           </form>
           
            <%
                request.getSession().invalidate();
            %>
        <script src="js/jquery.min.js"></script> 
        <script src="js/jquery.ui.custom.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/maruti.js"></script>
        <script src="js/jquery.min.js"></script>  
        <script src="js/matrix.login.js"></script> 
    </body>

</html>

