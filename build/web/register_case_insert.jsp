<%-- 
    Document   : register_case_insert
    Created on : 14-May-2017, 11:43:39
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

        String case_id = request.getParameter("case_no");
        String case_name = request.getParameter("title");
        String client_id = request.getParameter("client_id");
        String course_of_action = request.getParameter("course");
        String court_to_appeal = request.getParameter("court_name");
        String date_risen = request.getParameter("date");
        String date_submitted = request.getParameter("date1");
        String client_instruction = request.getParameter("instructions");
        String type = request.getParameter("type");
        String lawyer_id = request.getParameter("lawyer_id");
        
        int i = st.executeUpdate("insert into case1 values ('"+case_id+"', '"+case_name+"', '"+client_id+"','"+course_of_action+"', '"+court_to_appeal+"', '"+date_risen+"', '"+date_submitted+"','"+client_instruction+"', '"+type+"', '"+lawyer_id+"')");
        
        
        if (i!=0){
            response.sendRedirect("register_client.jsp?msg=One Client registered");
            out.print("Data inserted successful");
        }
      
%>
