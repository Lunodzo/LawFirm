<%-- 
    Document   : register_client_insert
    Created on : 14-May-2017, 10:51:51
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

        String client_id = request.getParameter("client_id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String mobile_no = request.getParameter("mobile_no");
        String address = request.getParameter("address");
        String next_of_kin = request.getParameter("next_of_kin");
        String dob = request.getParameter("date");
        
        int i = st.executeUpdate("insert into client values ('"+client_id+"', '"+first_name+"', '"+last_name+"','"+gender+"', '"+email+"', '"+mobile_no+"', '"+address+"', '"+next_of_kin+"', '"+dob+"')");
        
        
        if (i!=0){
            response.sendRedirect("register_client.jsp?msg=One Client registered");
            out.print("Data inserted successful");
        }
      
%>


