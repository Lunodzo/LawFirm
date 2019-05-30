<%-- 
    Document   : register_client_lawyer
    Created on : 08-Jun-2017, 02:21:06
    Author     : Lunodzo Mwinuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>ABC Law Firm | Client Registration</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/datepicker.css" />
<link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<%@include file = "header.jsp" %>
    <%
        try{
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
           java.sql.Statement st = con.createStatement();
           java.sql.Statement sk = con.createStatement();
           java.sql.Statement so = con.createStatement();
           ResultSet rs;
           ResultSet rk;
           ResultSet rt;
           rs = st.executeQuery("select * from lawyer");
           rk = so.executeQuery("select * from client");
           rt = sk.executeQuery("select * from court");
      %>  
<!--Header-part-->

<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="lawyer_page.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li><a href="case_registry_lawyer.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
   
    <li class="active"><a href="register_client_lawyer.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar_lawyer.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="register_client.jsp">Register Client</a></div>
    <div class="container-fluid">
      <div class="quick-actions_homepage">
      <ul class="quick-actions">
        
        <li class="bg_lb"> <a href="case_registry_lawyer.jsp"> <i class="icon-folder-open"></i> Case Registry </a> </li>
        
        <li class="bg_lb"> <a href="register_client_lawyer.jsp"> <i class="icon-user"></i> Register Client </a> </li>
        <li class="bg_lb"> <a href="calendar_lawyer.jsp"> <i class="icon-calendar"></i> Schedule</a> </li>
      </ul>
    </div>
    </div>
  </div>
  <div class="container-fluid"><hr>
  <div class ="container-fluid"> 
      <h4>Instructions</h4>
      <p>Case Registration should go parallel with respective Client who is either Registered or New Client</p>
  </div>
    <div class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Client Registration</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="register_client_insert.jsp" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Client ID Number :</label>
              <div class="controls">
                <input type="text" name="client_id" class="span11" placeholder="Client Number" required=""/>
                <div><span class="help-block blue span8">Example: CL10</span></div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">First Name :</label>
              <div class="controls">
                <input pattern="[A-Za-z]{1,}" title="Name should not contain numbers" type="text" name = "first_name" class="span11" placeholder="First name" required=""/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Last Name :</label>
              <div class="controls">
                <input pattern="[A-Za-z]{1,}" title="Name should not contain numbers" type="text" name = "last_name" class="span11" placeholder="Last name" required=""/>
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
                <label class="control-label">Email Address</label>
                <div class="controls">
                    <input type="email" name="email" id="email" placeholder="Email Address" required="">
                </div>
            </div>
            <div class="control-group">
              <label for="normal" class="control-label">Phone Number</label>
              <div class="controls">
                  <input type="text" name = "mobile_no" id="mask-phone" class="span8 mask text" value="">
                <span class="help-block blue span8">(076) 526-8371</span> </div>
            </div>
            <div class="control-group">
              <label class="control-label">Address :</label>
              <div class="controls">
                <input type="text" name = "address" class="span11" placeholder="Address" required="" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Next of Kin :</label>
              <div class="controls">
                <input pattern="[A-Z a-z]{1,}" title="Name should not contain numbers" type="text" name = "next_of_kin" class="span11" placeholder="Ndugu wa karibu" required="" />
              </div>
            </div>
            <div class="control-group">
                <label class="control-label">Birth Date</label>
                <div class="controls">
                  <input type="date" name="date" id="date">
                </div>
              </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Register Client</button>
            </div>
          </form>
        </div>
      </div>
        <hr>
    </div>
    
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Case Registration</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="register_case_insert.jsp" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Case Number :</label>
              <div class="controls">
                <input type="text" name="case_no" class="span11" placeholder="Case Number" required=""/>
                <div><span class="help-block blue span8">Example: CSE10</span></div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Case Title :</label>
              <div class="controls">
                <input type="text" name = "title" class="span11" placeholder="Case name" required=""/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Client Name :</label>
              <div class="controls">
                <select class="form-control" name = "client_id">
                       <%  while(rk.next()){ %>
                       <option value="<%= rk.getString(1)%>"><%= rk.getString(2)%> <%= rk.getString(3)%></option>
                         <% } %>	
		</select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Course of Action</label>
              <div class="controls">
                  <textarea class="span11" placeholder = "Source" name = "course" required=""></textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Court to Appeal :</label>
              <div class="controls">
                <select class="form-control" name = "court_name">
                       <%  while(rt.next()){ %>
                       <option value="<%= rt.getString(2)%>"><%= rt.getString(2)%></option>
                         <% } %>	
		</select>
              </div>
            </div>
            <div class="control-group">
                <label class="control-label">Date Risen</label>
                <div class="controls">
                  <input type="date" name="date" id="date">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Date Submitted</label>
                <div class="controls">
                  <input type="date" name="date1" id="date">
                </div>
              </div>
            <div class="control-group">
              <label class="control-label">Client Instructions</label>
              <div class="controls">
                  <textarea required="" class="span11" placeholder="What are the Client's obligations" name = "instructions"></textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Type of a Case</label>
              <div class="controls">
                <select >
                  <option name = "type">Civil</option>
                  <option name = "type">Criminal</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Attorney Number :</label>
              <div class="controls">
                <select class="form-control" name = "lawyer_id">
                       <%  while(rs.next()){ %>
                       <option value="<%= rs.getString(1)%>"><%= rs.getString(2)%> <%= rs.getString(3)%></option>
                         <% } %>	
		</select>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Register Case</button>
            </div>
          </form>
          <%
                }
                catch(Exception e)
                {
                     out.println("wrong entry"+e);
                }
        %>
        </div>
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
