<%-- 
    Document   : lawyer_page
    Created on : 07-Jun-2017, 05:18:08
    Author     : Lunodzo Mwinuka
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<%
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0); 
%> 

<head>
<title>ABC Law Firm | Lawyer Page</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<link href="font-awesome/css/font-awesome1.css" rel="stylesheet" />


</head>

<%
    if((session.getAttribute("lawyer")) == null){
        response.sendRedirect("index.jsp");
    }
    
 %> 
<body>

<!--Header-part-->
<%@include file = "header.jsp" %>
<!--`close-header-part-->

<!--sidebar-menu-->
<div id="sidebar"><a href="lawyer_page.jsp" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="lawyer_page.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li><a href="case_registry_lawyer.jsp"><i class="icon icon-folder-open"></i> <span>Case Registry</span></a></li>
    <li><a href="register_client_lawyer.jsp"><i class="icon icon-user"></i> <span>Register Client</span></a></li>
    <li><a href="calendar_lawyer.jsp"><i class="icon icon-calendar"></i> <span>Schedule</span></a></li>
  </ul>
</div>
<li class="active"><a href="lawyer_page.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
<!--sidebar-menu-->

<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>

<%
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        Statement su = con.createStatement();
        Statement sv = con.createStatement();
        Statement sw = con.createStatement();
        Statement sx = con.createStatement();
        Statement sy = con.createStatement();
        ResultSet rs = st.executeQuery("select COUNT(lawyer_id) as count1 from lawyer");
        ResultSet rk = su.executeQuery("select lawyer.first_name, lawyer.last_name, case1.date_submitted, case1.case_name from lawyer, case1 where case1.lawyer_id = lawyer.lawyer_id limit 5");
        ResultSet rt = sv.executeQuery("select COUNT(client_id) as count2 from client");
        ResultSet ru = sw.executeQuery("select COUNT(case_id) as count3 from case1");
        ResultSet rv = sx.executeQuery("select COUNT(court_id) as count4 from court");
        ResultSet rw = sy.executeQuery("select COUNT(case_id) as count5 from case1 where lawyer_id = null");
        %>
        
       
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="lawyer_page.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
  <div class="quick-actions_homepage">
      <ul class="quick-actions">
        
        <li class="bg_lb"> <a href="case_registry_lawyer.jsp"> <i class="icon-folder-open"></i> Case Registry </a> </li>
        
        <li class="bg_lb"> <a href="register_client_lawyer.jsp"> <i class="icon-user"></i> Register Client </a> </li>
        <li class="bg_lb"> <a href="calendar_lawyer.jsp"> <i class="icon-calendar"></i> Schedule</a> </li>
      </ul>
    </div>
<!--End-Action boxes-->
  

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Recent Cases</h5>
        </div>
          <div class="row-fluid">
            <div class="span9">
              <div class="widget-content nopadding collapse in">
            <ul class="recent-posts">
              <%
                  while(rk.next()){
              %>
              <li>
                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av1.jpg"> </div>
                <div class="article-post"> <span class="user-info">  By: <%=rk.getString("first_name")%>  <%=rk.getString("last_name")%> / Date: <%=rk.getString("date_submitted")%>  </span>
                  <p><a href="#"><%=rk.getString("case_name")%></a> </p>
                </div>
              </li>
              <%
                  }
              %>
              <li>
              
                <a class="btn btn-warning btn-mini" href="#">View All</a>
              </li>
            </ul>
          </div>
            </div>
            <div class="span3">
              <ul class="site-stats">
                <li class="bg_lh"><i class="icon-user"></i> <%while(rt.next()){%><strong><%=rt.getString("count2")%></strong> <%}%><small>Total Clients</small></li>
                <li class="bg_lh"><i class="icon-plus"></i><%while(rv.next()){%> <strong><%=rv.getString("count4")%></strong> <%}%><small>Courts Count </small></li>
                <li class="bg_lh"><i class="fa fa-users"></i><%while(rs.next()){%> <strong><%=rs.getString("count1")%></strong><%}%> <small>Total Attorneys</small></li>
                <li class="bg_lh"><i class="fa fa-files-o"></i> <%while(ru.next()){%><strong><%=ru.getString("count3")%></strong> <%}%><small>Total Cases</small></li>
                <li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> <small>Pending Cases</small></li>
                <li class="bg_lh"><i class="icon-question-sign"></i> <%while(rw.next()){%><strong><%=rw.getString("count5")%></strong> <%}%><small>Unassigned Cases</small></li>
              </ul>
            </div>
          </div>
      </div>
    </div>
<!--End-Chart-box--> 
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

<!--end-main-container-part-->

<!--Footer-part-->
<%@include file = "footer.jsp" %>
<!--end-Footer-part-->
<script>var jsessionid = '${pageContext.session.id}';</script>
<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
