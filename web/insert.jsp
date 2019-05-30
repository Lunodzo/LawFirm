<%-- 
    Document   : insert
    Created on : 27-Apr-2017, 00:47:29
    Author     : Lunodzo Mwinuka
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs;

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
        String password = request.getParameter("pwd");
        String password2 = request.getParameter("pwd2");

        int i = st.executeUpdate("insert into lawyer values ('"+lawyer_id+"', '"+first_name+"', '"+last_name+"','"+gender+"', '"+email+"', '"+mobile_no+"', '"+address+"', '"+level_of_education+"', '"+dob+"', '"+system_level+"', '"+password+"', '"+password2+"')");
        out.print("Data inserted successful");
        
        if (i!=0){
            response.sendRedirect("register_attorney.jsp?msg=One Attorney registered");
        }
      
%>

