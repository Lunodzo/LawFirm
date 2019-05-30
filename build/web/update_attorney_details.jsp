<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
<title>ABC Law Firm| Update Attorney details</title>
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

<!--Header-part-->
<%@include file = "header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="admin.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="register_attorney.jsp"><i class="icon icon-plus"></i> <span>Register Lawyer</span></a> </li>
    <li class="active"><a href="update_attorney_details.jsp"><i class="icon icon-edit"></i> <span>Update Lawyer Details</span></a></li>
    <li><a href="case_registry.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li><a href="assign_case.jsp"><i class="icon icon-share-alt"></i> <span>Case Assignment</span></a></li>
    <li><a href="register_client.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<!--Database connection-->

<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="update_attorney_details.jsp" class="current">Update Attorney Details</a> </div>
    
    <div class="container-fluid">
        <%@include file = "action_box.jsp" %>
    </div>
  </div>
   <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>List of Lawyers</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>TLS ID Card</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Level of Education</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <%
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select lawyer_id, first_name, last_name, level_of_education from lawyer");
                    while (rs.next()){
                        String z = rs.getString("lawyer_id");
                        
                %>
                
                <tr onclick="window.document.location='update_lawyer.jsp?lawyer_id='+'<%=rs.getString("lawyer_id")%>';">
                  <td><%=z%></td>
                  <td><%=rs.getString("first_name")%></td>
                  <td><%=rs.getString("last_name")%></td>
                  <td><%=rs.getString("level_of_education")%></td>
                  <td>
                        <center>
                          <div class=""> 
                              <a onclick="window.document.location='update_lawyer.jsp?lawyer_id='+'<%=rs.getString("lawyer_id")%>';" class="tip" href="#" title="Edit Lawyer Details"><i class="icon-pencil"></i></a>  
                              <a onclick="window.document.location='update_lawyer.jsp?lawyer_id='+'<%=rs.getString("lawyer_id")%>';" href="#" class="btn btn-success btn-mini">View</a>
                          </div>
                        </center>
                  </td>
                </tr> 
                <%
                    }
                %>
              </tbody>
            </table>
            
            <%
                rs.close();
                st.close();
                con.close();
                }
                catch(Exception e){
                e.printStackTrace();
                }
            %>
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
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>


