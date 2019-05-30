<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ABC Law Firm | Case Assignment</title>
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

<!--Header-part-->
<%@include file="header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="admin.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="register_attorney.jsp"><i class="icon icon-plus"></i> <span>Register Lawyer</span></a> </li>
    <li><a href="update_attorney_details.jsp"><i class="icon icon-edit"></i> <span>Update Lawyer Details</span></a></li>
    <li><a href="case_registry.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li class="active"><a href="assign_case.jsp"><i class="icon icon-share-alt"></i> <span>Case Assignment</span></a></li>
    <li><a href="register_client.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Case Assignment</a> </div>
    <div class="container-fluid">
        <%@include file="action_box.jsp" %>
    </div>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>All Cases</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Case Name</th>
                  <th>Client Name</th>
                  <th>Type</th>
                  <th>Lawyer Name</th>
                  <th>Date Risen</th>
                </tr>
              </thead>
              <tbody>
                  <%
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select case1.case_name, client.first_name, client.last_name, case1.type, "
                            + "lawyer.first_name, lawyer.last_name, date_risen from case1, lawyer, client "
                            + "where case1.lawyer_id = lawyer.lawyer_id and case1.client_id = client.client_id");
                    while (rs.next()){
                  %>
                <tr class="odd gradeX">
                  <td><%=rs.getString("case_name")%></td>
                  <td><%=rs.getString("client.first_name")%> <%=rs.getString("client.last_name")%></td>
                  <td><%=rs.getString("type")%></td>
                  <td><%=rs.getString("lawyer.first_name")%>  <%=rs.getString("lawyer.last_name")%></td>
                  <td><%=rs.getString("date_risen")%></td>
                </tr>
                <%
                    }
                %>
              </tbody>
              <%
                    rs.close();
                    st.close();
                    con.close();
                    }
                    catch(Exception e){
                    e.printStackTrace();
                    }
              %>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--Footer-part-->
<%@include file="footer.jsp" %>
<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
</body>
</html>