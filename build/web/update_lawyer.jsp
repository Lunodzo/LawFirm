<%-- 
    Document   : update_lawyer
    Created on : 26-May-2017, 23:23:39
    Author     : Lunodzo Mwinuka
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title> ABC Law Firm | Attorney Registration</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<%
    if((session.getAttribute("admin")) == null){
        response.sendRedirect("index.jsp");
    }
    
 %> 
<body>
<!--connect to database-->
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%
  Class.forName("com.mysql.jdbc.Driver");
  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");  
  Statement st = con.createStatement();
  String abc = request.getParameter("lawyer_id");
  ResultSet rs = st.executeQuery("select * from lawyer where lawyer_id = '"+abc+"'"); 
  
  
%>
<!--Header-part-->
<%@include file = "header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="admin.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="register_attorney.jsp"><i class="icon icon-plus"></i> <span>Register Attorney</span></a> </li>
    <li class="active"><a href="update_attorney_details.jsp"><i class="icon icon-edit"></i> <span>Update Attorney Details</span></a></li>
    <li><a href="case_registry.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li><a href="assign_case.jsp"><i class="icon icon-share-alt"></i> <span>Assign Case</span></a></li>
    <li><a href="register_client.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">

  <div id="content-header">

    <div id="breadcrumb"> <a href="admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="register_attorney.jsp">Register Attorney</a> </div>
    <div class="container-fluid">
        <%@include file = "action_box.jsp" %>
    </div>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-pencil"></i> </span>
            <h5>Lawyer Registration</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="update_insert.jsp" name="basic_validate" id="form-wizard">
              <%
                  while(rs.next()){
              %>
              <div class="control-group">
                <label class="control-label">TLS Role Number</label>
                <div class="controls">
                    <input type="text" name="lawyer_id" id="required" value="<%=rs.getString("lawyer_id")%>" required="">
                </div>
              </div>
              
                
              <div class="control-group">
                <label class="control-label">First Name</label>
                <div class="controls">
                    <input pattern="[A-Za-z]{1,}" title="Name should not contain numbers" type="text" name="first_name" id="required" value="<%=rs.getString("first_name")%>" required="">
                </div>
              </div>
                
              <div class="control-group">
                <label class="control-label">Last Name</label>
                <div class="controls">
                    <input pattern="[A-Za-z]{1,}" title="Name should not contain numbers" type="text" name="last_name" id="required" value="<%=rs.getString("last_name")%>" required="">
                </div>
              </div>
                
              <div class="control-group">
              <label class="control-label">Gender</label>
              <div class="controls">
                <label>
                  <input type="radio" name="gender" />
                  Male</label>
                <label>
                  <input type="radio" name="gender" />
                  Female</label>
              </div>
            </div>
              <div class="control-group">
                <label class="control-label">Your Email</label>
                <div class="controls">
                  <input type="email" name="email" id="email" value="<%=rs.getString("email")%>">
                </div>
              </div>
                
              <div class="control-group">
                <label for="normal" class="control-label">Mobile number</label>
                <div class="controls">
                  <input type="text" name = "number" id="mask-phone" class="span8 mask text" value="<%=rs.getString("mobile_no")%>" required="">
                  <span class="help-block blue span8">(076) 526-8371</span> 
                </div>
              </div>
                
              <div class="control-group">
                <label class="control-label">Address</label>
                <div class="controls">
                  <input type="text" name="address" id="required" value="<%=rs.getString("address")%>">
                </div>
              </div>
              
              <div class="control-group">
                <label class="control-label">Level of Education</label>
                <div class="controls">
                    <input type="text" name="level_of_education" id="required" value="<%=rs.getString("level_of_education")%>">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Birth Date</label>
                <div class="controls">
                    <input type="date" name="date" id="date" value="">
                </div>
              </div>
                
              <div class="control-group">
                <label class="control-label">System Role</label>
                <div class="controls">
                    <input type="text" name="role" id="required" value="<%=rs.getString("system_level")%>">
                </div>
              </div>
              <div id="form-wizard-1">  
              <div class="control-group">
                  <label class="control-label">Password</label>
                  <div class="controls">
                      <input disabled="" type="password" name="pwd" id="pwd" placeholder="Set default password" value="<%=rs.getString("password")%>"/>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">Confirm password</label>
                  <div class="controls">
                    <input disabled="" type="password" name="pwd2" id="pwd2" value="<%=rs.getString("password2")%>"/>
                  </div>
                </div>
              </div>
              <div class="form-actions">
                <input type="submit" value="Update Details" class="btn btn-success">
                <input type="reset" value="Clear" class="btn btn-warning">
              </div>
                <%
                    }
                %>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
<!--Footer-part-->
<%@include file = "footer.jsp" %>
<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script>   
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script>
<script>
	$('.textarea_editor').wysihtml5();
</script>

</body>
</html>
