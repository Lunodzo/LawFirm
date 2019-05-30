<%-- 
    Document   : update_insert
    Created on : 28-May-2017, 01:54:02
    Author     : Lunodzo Mwinuka
--%>

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs;
        String abc = request.getParameter("lawyer_id");

        String lawyer_id = request.getParameter("lawyer_id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String mobile_no = request.getParameter("number");
        String address = request.getParameter("address");
        String level_of_education = request.getParameter("level_of_education");
        String dob = request.getParameter("date");
        String system_level = request.getParameter("role");

        int i = st.executeUpdate("update lawyer set first_name = '"+first_name+"', last_name = '"+last_name+"', gender = '"+gender+"', email = '"+email+"', mobile_no = '"+mobile_no+"', address = '"+address+"', level_of_education = '"+level_of_education+"', dob = '"+dob+"', system_level = '"+system_level+"' where lawyer_id = '"+abc+"'");
        out.print("Data Updated successful");
        
        if (i!=0){
            response.sendRedirect("update_attorney_details.jsp?msg=One Attorney Updated");
        }
      
%>

