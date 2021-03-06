<%-- 
    Document   : calendar_lawyer
    Created on : 08-Jun-2017, 02:23:09
    Author     : Lunodzo Mwinuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ABC Law Firm | Calendar</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<%@include file = "header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="lawyer_page.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li><a href="case_registry_lawyer.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    
    <li><a href="register_client_lawyer.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li class="active"><a href="calendar_lawyer.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Calendar</a> </div>
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
  <%
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from schedule");
  %>
    
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box widget-calendar">
          <div class="widget-title"> <span class="icon"><i class="icon-calendar"></i></span>
            <h5>Calendar</h5>
            <div class="buttons"> <a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-inverse btn-mini"><i class="icon-plus icon-white"></i> Add new schedule</a>
                <form action="post_calender.jsp" method="POST" class="form-horizontal">
                   <div class="modal hide" id="modal-add-event">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal"></button>
                      <h3>Add a new schedule</h3>
                    </div>
                    <div class="modal-body">
                      <p>Event name:</p>
                      <p>
                        <input id="event-name1" type="text" name="name1" />
                      </p>
                    </div>
                    <div class="modal-body">
                      <p>Location:</p>
                      <p>
                        <input id="event-name2" type="text" name="location"/>
                      </p>
                    </div>
                    <div class="modal-body">
                      <p>Date:</p>
                      <p>
                        <input id="event-name3" type="text" name="date" />
                      </p>
                    </div>
                    <div class="modal-body">
                      <p>Requirements:</p>
                      <p>
                        <input id="event-name4" type="text" name="requirements" />
                      </p>
                    </div>
                       <div class="modal-footer"> <a href="#" class="btn" data-dismiss="modal">Cancel</a> <button type="submit" id="add-event-submit" class="btn btn-primary">Add event</button> </div>
                  </div>
                </form>
            </div>
          </div>
          <div class="widget-content">
            <div class="panel-left">
              <div id="fullcalendar"></div>
            </div>
            <div id="external-events" class="panel-right">
              <div class="panel-title">
                <h5>Drag Schedules to the calendar</h5>
              </div>
                
              <div class="panel-content">
                <%
                    while(rs.next()){
                %>
                <div class="external-event ui-draggable label label-inverse"><%=rs.getString("schedule_name")%></div>
                <%
                  }
                %>
              </div>
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
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.calendar.js"></script>
</body>
</html>

