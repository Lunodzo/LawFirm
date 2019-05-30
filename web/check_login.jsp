<%-- 
    Document   : check_login
    Created on : 06-Jun-2017, 22:37:49
    Author     : Lunodzo Mwinuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>

<!DOCTYPE html>

<%
    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    
     
    try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select lawyer_id, system_level from lawyer where email = '"+email+"' and password = '"+password+"'");
       
        if (rs.next()){
                
              
               String lawyer_id = rs.getString("lawyer_id");
               String system_level = rs.getString("system_level");
 
               if(system_level.equals("Manager")){
                   session.setAttribute("admin", lawyer_id);
                   response.sendRedirect("admin.jsp");
               }
               else if(system_level.equals("Lawyer")){
                   session.setAttribute("lawyer", lawyer_id);
                   response.sendRedirect("lawyer_page.jsp");
               }
        }
        else{
            response.sendRedirect("error_login.jsp");
          }
        }
        catch(Exception e){
          e.printStackTrace();
        }
%>
