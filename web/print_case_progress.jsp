<%-- 
    Document   : print_case_progress
    Created on : 24-May-2017, 23:58:07
    Author     : Lunodzo Mwinuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title> ABC Law Firm | Print Case Progress</title>
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
<body>
<!--connect to database-->
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>

<!--Header-part-->
<%@include file = "header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="admin.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="register_attorney.jsp"><i class="icon icon-plus"></i> <span>Register Attorney</span></a> </li>
    <li><a href="update_attorney_details.jsp"><i class="icon icon-edit"></i> <span>Update Attorney Details</span></a></li>
    <li class="active"><a href="case_registry.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li><a href="assign_case.jsp"><i class="icon icon-share-alt"></i> <span>Assign Case</span></a></li>
    <li><a href="register_client.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">

  <div id="content-header">

    <div id="breadcrumb"> <a href="admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="register_attorney.jsp">Print Progress</a> </div>
    <div class="container-fluid">
        <%@include file = "action_box.jsp" %>
    </div>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-briefcase"></i> </span>
            <h5>ABC Law Firm</h5>
          </div>
          <div class="widget-content">
            <div class="row-fluid">
              <div class="span6">
                <table class="">
                  <tbody>
                    <tr>
                      <td><h4>ABC Law Firm</h4></td>
                    </tr>
                    <tr>
                      <td>Mzumbe</td>
                    </tr>
                    <tr>
                      <td>Morogoro</td>
                    </tr>
                    <tr>
                      <td>Mobile Phone: +255765268371</td>
                    </tr>
                    <tr>
                      <td >lunomwinuka@gmail.com</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="span6">
                <table class="table table-bordered table-invoice">
                  <tbody>
                      <%
                          Class.forName("com.mysql.jdbc.Driver");
                          java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");  
                          Statement st = con.createStatement();
                          Statement sm = con.createStatement();
                          Statement sn = con.createStatement();
                          Statement name = con.createStatement();
                          Statement dat = con.createStatement();
                          Statement address = con.createStatement();
                          Statement mob = con.createStatement();
                          Statement email = con.createStatement();
                          
                          String abc = request.getParameter("case_id");
                          ResultSet rs = st.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rk = sm.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rm = sn.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rn = name.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet ro = dat.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rp = address.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rq = mob.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
                          ResultSet rr = email.executeQuery("select * from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id and case_progress.case_id = '"+abc+"'");
        
                      %>
                    <tr>
                    <tr>
                      <td class="width30">Client Name:</td><%rn.next();%>
                      <td class="width70"><strong><%=rn.getString("client.first_name")%> <%=rn.getString("client.last_name")%></strong></td><%rn.close();%>
                    </tr>
                    <tr>
                      <td>Birth Date:</td><%ro.next();%>
                      <td><strong><%=ro.getString("case_progress.process_date")%></strong></td><%ro.close();%>
                    </tr>
                    <tr>
                      <td>Case Name:</td> <%rk.next();%>
                      <td><strong><%=rk.getString("case1.case_name")%></strong></td><%rk.close();%>
                    </tr>
                    <tr>
                      <td>Court Name:</td>
                      <td>
                         <%rm.next();%>
                          <strong><%=rm.getString("court.court_name")%></strong><%rm.close();%>
                          
                      </td>
                    </tr>
                  <td class="width30">Client Address:</td>
                    <td class="width70"><strong>Cliente Company name.</strong> <%rp.next();%><br>
                        <%=rp.getString("client.address")%> <br><%rq.next();%>
                      Contact No: <%=rq.getString("client.mobile_no")%> <br><%rr.next();%>
                      Email: <%=rr.getString("client.email")%> </td>
                  </tr>
                    </tbody>
                  
                </table>
              </div>
            </div>
            <div class="row-fluid">
              <div class="span12">
                <table class="table table-bordered table-invoice-full">
                  <thead>
                    <tr>
                      <th class="head0">Progress Date</th>
                      <th class="head1">Progress Details</th>
                    </tr>
                  </thead>
                  <tbody>
                      <%
                        while(rs.next()){
                      %>
                    <tr>
                      <td><%=rs.getString("case_progress.process_date")%></td>
                      <td><%=rs.getString("case_progress.progress")%></td>
                      
                    </tr>
                     <%
                        }
                     %>
                  </tbody>
                </table>
                <table class="table table-bordered table-invoice-full">
                  <tbody>
                    <tr>
                      <td class="msg-invoice" width="85%"><h4>Payment method: </h4>
                        <a href="#" class="tip-bottom" title="Wire Transfer">Wire transfer</a> |  <a href="#" class="tip-bottom" title="Bank account">Bank account #</a> |  <a href="#" class="tip-bottom" title="SWIFT code">SWIFT code </a>|  <a href="#" class="tip-bottom" title="IBAN Billing address">IBAN Billing address </a></td>
                      <td class="right"><strong>Subtotal</strong> <br>
                        <strong>Tax (5%)</strong> <br>
                        <strong>Discount</strong></td>
                      <td class="right"><strong>No Details<br>
                        No Details <br>
                        No Details</strong></td>
                    </tr>
                  </tbody>
                </table>
                <div class="pull-right">
                  <h4><span>Amount Due:</span> No Details</h4>
                  <br>
                  <a class="btn btn-primary btn-large pull-right" href="">Download</a> </div>
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
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>

</body>
</html>

