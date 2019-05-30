
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<title>ABC Law Firm | Case Registry</title>
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
<%
    if((session.getAttribute("admin")) == null){
        response.sendRedirect("index.jsp");
    }
    
 %> 
<body>
    
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
    <li> <a href="register_attorney.jsp"><i class="icon icon-plus"></i> <span>Register Lawyer</span></a> </li>
    <li><a href="update_attorney_details.jsp"><i class="icon icon-edit"></i> <span>Update Lawyer Details</span></a></li>
    <li class="active"><a href="case_registry.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li><a href="assign_case.jsp"><i class="icon icon-share-alt"></i> <span>Case Assignment</span></a></li>
    <li><a href="register_client.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="case_registry.jsp" class="current">Case Registry</a> </div>
    <div class="container-fluid">
        <%@include file = "action_box.jsp" %>
    </div>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Case Progress</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  
                  <th>Case Name</th>
                  <th>Client Name</th>
                  <th>Proceeding Date</th>
                  <th>Court Name</th>
                  <th>Proceedings</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <%
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select case_progress.case_id, case1.case_name, client.first_name, client.last_name, case_progress.process_date, court.court_name, case_progress.progress from case1, client, court, case_progress where case1.case_id = case_progress.case_id and client.client_id = case_progress.client_id and court.court_id = case_progress.court_id");
                    while (rs.next()){
                %>
                <tr class="odd gradeX">
                  
                  <td><%=rs.getString("case_name")%></td>
                  <td><%=rs.getString("first_name")%>  <%=rs.getString("last_name")%></td>
                  <td><%=rs.getString("process_date")%></td>
                  <td><%=rs.getString("court_name")%></td>
                  <td><%=rs.getString("progress")%></td>
                  <td><div class="fr"> 
                          <a onclick="window.document.location='print_case_progress.jsp?case_id='+'<%=rs.getString("case_id")%>';" href="#" class="btn btn-success btn-mini">Print Case</a> 
                      </div>
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
  
          
    <div class="row-fluid">
        <div class="row-fluid">
          <div class="span12">
              <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                  <h5>Case Progress</h5>
                </div>
                <div class="widget-content nopadding">
                  <form action="save_progres.jsp" method="post" class="form-horizontal">
                      <%
                        try{
                           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                           Statement st = con.createStatement();
                           ResultSet rs;
                           rs = st.executeQuery("select * from case1");
                      %>
                    <div class="control-group">
                      <label class="control-label">Case Name :</label>
                          <div class="controls">
                            <select class="form-control" name = "case_id">
                                   <%  while(rs.next()){ %>
                                   <option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
                                     <% } %>	
                            </select>
                            <%
                                rs.close();
                                st.close();
                                
                             }

                                catch(Exception e)
                                {
                                     out.println("wrong entry"+e);
                                }
                            %>
                          </div>
                    </div>

                    <div class="control-group">
                      <label class="control-label">Client Name :</label>
                      <div class="controls">
                          <%
                                try{
                                Class.forName("com.mysql.jdbc.Driver");
                                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from client");
                            %>
                        <select class="form-control" name = "client_id">
                               <%  while(rs.next()){ %>
                               <option value="<%= rs.getString(1)%>"><%= rs.getString(2)%> <%= rs.getString(3)%></option>
                                 <% } %>
                        </select>
                      </div>
                    </div>
                    <%
                            rs.close();
                            st.close();
                            con.close();
                            }
                            catch(Exception e)
                            {
                                 out.println("wrong entry"+e);
                            }
                    %>

                    <div class="control-group">
                        <label class="control-label">Progress Date</label>
                        <div class="controls">
                          <input type="date" name="date" id="date">
                        </div>
                    </div>
                    
                    <div class="control-group">
                      <label class="control-label">Court Name :</label>
                      <div class="controls">
                          <%
                                try{
                                Class.forName("com.mysql.jdbc.Driver");
                                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from court");
                            %>
                        <select class="form-control" name = "court_id">
                               <%  while(rs.next()){ %>
                               <option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
                                 <% } %>
                        </select>
                      </div>
                        <%
                            rs.close();
                            st.close();
                            con.close();
                            }
                            catch(Exception e)
                            {
                                 out.println("wrong entry"+e);
                            }
                        %>
                    </div>

                    <div class="control-group">
                      <label class="control-label">Progress</label>
                      <div class="controls">
                          <textarea class="span11" placeholder="What are the Case's Proceedings" name = "progress"></textarea>
                      </div>
                    </div>
                    <div class="form-actions">
                      <button type="submit" class="btn btn-success">Save Progress</button>
                    </div>
                  </form>

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
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>
<script src="js/matrix.form_common.js"> </script>
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/matrix.wizard.js"></script>
<script>
	$('.textarea_editor').wysihtml5();
</script>
</body>
</html>
