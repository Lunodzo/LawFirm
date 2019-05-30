<%-- 
    Document   : delete_lawyer
    Created on : 04-Jun-2017, 03:45:30
    Author     : Lunodzo Mwinuka
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
            Statement st = con.createStatement();
            String ab = request.getParameter("lawyer_id");
            st.executeUpdate("delete from lawyer where lawyer_id = '"+ab+"'");
            response.sendRedirect("update_attorney_details.jsp?msg=One Attorney Updated");
        }catch(Exception e){
            System.out.print(e.getMessage());
        }
%>
