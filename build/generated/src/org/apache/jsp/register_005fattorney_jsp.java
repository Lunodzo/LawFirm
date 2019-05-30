package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class register_005fattorney_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/connection.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/sidebar.jsp");
    _jspx_dependants.add("/action_box.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatDate_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title> ABC | Attorney Registration</title>\r\n");
      out.write("<meta charset=\"UTF-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap-responsive.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/uniform.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/select2.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-style.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-media.css\" />\r\n");
      out.write("<link href=\"font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--connect to database-->\r\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","");
        Statement st = conn.createStatement();
    }
    catch(Exception e){
        out.println(e);
    }

      out.write('\n');
      out.write('\n');
      out.write("\r\n");
      out.write("<!--Header-part-->\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("  <h1><a href=\"admin.jsp\">ABC | Admin</a></h1>\r\n");
      out.write("</div>\r\n");
      out.write("<!--close-Header-part--> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--top-Header-menu-->\r\n");
      out.write("<div id=\"user-nav\" class=\"navbar navbar-inverse\">\r\n");
      out.write("  <ul class=\"nav\">\r\n");
      out.write("    <li  class=\"dropdown\" id=\"profile-messages\" ><a title=\"\" href=\"#\" data-toggle=\"dropdown\" data-target=\"#profile-messages\" class=\"dropdown-toggle\"><i class=\"icon icon-user\"></i>  <span class=\"text\">Welcome User</span><b class=\"caret\"></b></a>\r\n");
      out.write("      <ul class=\"dropdown-menu\">\r\n");
      out.write("        <li><a href=\"#\"><i class=\"icon-user\"></i> My Profile</a></li>\r\n");
      out.write("        <li class=\"divider\"></li>\r\n");
      out.write("        <li><a href=\"#\"><i class=\"icon-check\"></i> My Tasks</a></li>\r\n");
      out.write("        <li class=\"divider\"></li>\r\n");
      out.write("        <li><a href=\"index.jsp\"><i class=\"icon-key\"></i> Log Out</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li class=\"dropdown\" id=\"menu-messages\"><a href=\"#\" data-toggle=\"dropdown\" data-target=\"#menu-messages\" class=\"dropdown-toggle\"><i class=\"icon icon-envelope\"></i> <span class=\"text\">Messages</span> <b class=\"caret\"></b></a>\r\n");
      out.write("      <ul class=\"dropdown-menu\">\r\n");
      out.write("        <li><a class=\"sAdd\" title=\"\" href=\"#\"><i class=\"icon-plus\"></i> new message</a></li>\r\n");
      out.write("        <li class=\"divider\"></li>\r\n");
      out.write("        <li><a class=\"sInbox\" title=\"\" href=\"#\"><i class=\"icon-envelope\"></i> inbox</a></li>\r\n");
      out.write("        <li class=\"divider\"></li>\r\n");
      out.write("        <li><a class=\"sOutbox\" title=\"\" href=\"#\"><i class=\"icon-arrow-up\"></i> outbox</a></li>\r\n");
      out.write("        <li class=\"divider\"></li>\r\n");
      out.write("        <li><a class=\"sTrash\" title=\"\" href=\"#\"><i class=\"icon-trash\"></i> trash</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li class=\"\"><a title=\"\" href=\"#\"><i class=\"icon icon-cog\"></i> <span class=\"text\">Settings</span></a></li>\r\n");
      out.write("    <li class=\"\"><a title=\"\" href=\"index.jsp\"><i class=\"icon icon-share-alt\"></i> <span class=\"text\">Logout</span></a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</div>\r\n");
      out.write("<!--close-top-Header-menu-->\r\n");
      out.write("<!--start-top-serch-->\r\n");
      out.write("<div id=\"search\">\r\n");
      out.write("  <input type=\"text\" placeholder=\"Search here...\"/>\r\n");
      out.write("  <button type=\"submit\" class=\"tip-bottom\" title=\"Search\"><i class=\"icon-search icon-white\"></i></button>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("<!--`close-header-part-->\r\n");
      out.write("\r\n");
      out.write("<!--sidebar-menu-->\r\n");
      out.write("<div id=\"sidebar\"><a href=\"#\" class=\"visible-phone\"><i class=\"icon icon-home\"></i> Dashboard</a>\r\n");
      out.write("  <ul>\r\n");
      out.write("    <li class=\"active\"><a href=\"admin.jsp\"><i class=\"icon icon-home\"></i> <span>Dashboard</span></a> </li>\r\n");
      out.write("    <li> <a href=\"register_attorney.jsp\"><i class=\"icon icon-inbox\"></i> <span>Register Attorney</span></a> </li>\r\n");
      out.write("    <li><a href=\"update_attorney_details.jsp\"><i class=\"icon icon-th\"></i> <span>Update Attorney Details</span></a></li>\r\n");
      out.write("    <li><a href=\"case_registry.jsp\"><i class=\"icon icon-fullscreen\"></i> <span>Case Registry</span></a></li>\r\n");
      out.write("    <li><a href=\"assign_case.jsp\"><i class=\"icon icon-th-list\"></i> <span>Assign Case</span></a></li>\r\n");
      out.write("    <li><a href=\"register_client.jsp\"><i class=\"icon icon-th\"></i> <span>Register Client</span></a></li>\r\n");
      out.write("    <li><a href=\"calendar.jsp\"><i class=\"icon icon-pencil\"></i> <span>Schedule</span></a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"content\">\r\n");
      out.write("\r\n");
      out.write("  <div id=\"content-header\">\r\n");
      out.write("\r\n");
      out.write("    <div id=\"breadcrumb\"> <a href=\"index.jsp\" title=\"Go to Home\" class=\"tip-bottom\"><i class=\"icon-home\"></i> Home</a> <a href=\"#\">Form elements</a> <a href=\"#\" class=\"current\">Validation</a> </div>\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("    <div class=\"quick-actions_homepage\">\r\n");
      out.write("      <ul class=\"quick-actions\">\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"register_attorney.jsp\"> <i class=\"icon-plus\"></i> Register Attorney </a> </li>\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"update_attorney_details.jsp\"> <i class=\"icon-edit\"></i> Update Attorney Details</a> </li>\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"case_registry.jsp\"> <i class=\"icon-folder-open\"></i> Case Registry </a> </li>\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"assign_case.jsp\"> <i class=\"icon-share-alt\"></i> Assign Case </a> </li>\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"register_client.jsp\"> <i class=\"icon-user\"></i> Register Client </a> </li>\r\n");
      out.write("        <li class=\"bg_lb\"> <a href=\"calendar.jsp\"> <i class=\"icon-calendar\"></i> Schedule</a> </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"container-fluid\"><hr>\r\n");
      out.write("    <div class=\"row-fluid\">\r\n");
      out.write("      <div class=\"span12\">\r\n");
      out.write("        <div class=\"widget-box\">\r\n");
      out.write("          <div class=\"widget-title\"> <span class=\"icon\"> <i class=\"icon-info-sign\"></i> </span>\r\n");
      out.write("            <h5>Attorney Registration</h5>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"widget-content nopadding\">\r\n");
      out.write("            <form class=\"form-horizontal\" method=\"post\" action=\"insert.jsp\" name=\"basic_validate\" id=\"basic_validate\" novalidate=\"novalidate\">\r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Attorney Number</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"lawyer_id\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">First Name</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"first_name\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Last Name</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"last_name\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("              <label class=\"control-label\">Gender</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <select name=\"gender\">\r\n");
      out.write("                      <option >Male</option>\r\n");
      out.write("                    <option>Female</option>\r\n");
      out.write("                  <select>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Your Email</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"email\" id=\"email\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Mobile number</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"number\" id=\"number\" />\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Address</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"address\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Level of Education</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"level_of_education\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">Birth Date</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"date\" name=\"date\" id=\"date\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                <label class=\"control-label\">System Role</label>\r\n");
      out.write("                <div class=\"controls\">\r\n");
      out.write("                  <input type=\"text\" name=\"role\" id=\"required\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("                \r\n");
      out.write("              <div class=\"control-group\">\r\n");
      out.write("                  <label class=\"control-label\">Password</label>\r\n");
      out.write("                  <div class=\"controls\">\r\n");
      out.write("                      <input type=\"password\" name=\"pwd\" id=\"pwd\" placeholder=\"Set default password\" />\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"control-group\">\r\n");
      out.write("                  <label class=\"control-label\">Confirm password</label>\r\n");
      out.write("                  <div class=\"controls\">\r\n");
      out.write("                    <input type=\"password\" name=\"pwd2\" id=\"pwd2\" />\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"form-actions\">\r\n");
      out.write("                <input type=\"submit\" value=\"Register\" class=\"btn btn-success\">\r\n");
      out.write("                <input type=\"reset\" value=\"Clear\" class=\"btn btn-warning\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write(" </div>\r\n");
      out.write("<!--Footer-part-->\r\n");
      out.write("<div class=\"row-fluid\">\r\n");
      out.write("  <div id=\"footer\" class=\"span12\"> \r\n");
      out.write("      <p>Copyright &copy;  ");
      java.util.Date date = null;
      synchronized (_jspx_page_context) {
        date = (java.util.Date) _jspx_page_context.getAttribute("date", PageContext.PAGE_SCOPE);
        if (date == null){
          date = new java.util.Date();
          _jspx_page_context.setAttribute("date", date, PageContext.PAGE_SCOPE);
        }
      }
      out.write(' ');
      if (_jspx_meth_fmt_formatDate_0(_jspx_page_context))
        return;
      out.write(" | Lunodzo Mwinuka</p>\r\n");
      out.write("   </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("<!--end-Footer-part-->\r\n");
      out.write("<script src=\"js/jquery.min.js\"></script> \r\n");
      out.write("<script src=\"js/jquery.ui.custom.js\"></script> \r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script> \r\n");
      out.write("<script src=\"js/jquery.uniform.js\"></script> \r\n");
      out.write("<script src=\"js/select2.min.js\"></script> \r\n");
      out.write("<script src=\"js/jquery.validate.js\"></script> \r\n");
      out.write("<script src=\"js/matrix.js\"></script> \r\n");
      out.write("<script src=\"js/matrix.form_validation.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_fmt_formatDate_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_formatDate_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _jspx_tagPool_fmt_formatDate_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    _jspx_th_fmt_formatDate_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatDate_0.setParent(null);
    _jspx_th_fmt_formatDate_0.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${date}", java.util.Date.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatDate_0.setPattern("yyyy");
    int _jspx_eval_fmt_formatDate_0 = _jspx_th_fmt_formatDate_0.doStartTag();
    if (_jspx_th_fmt_formatDate_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
      return true;
    }
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
    return false;
  }
}
