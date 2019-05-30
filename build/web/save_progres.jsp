<%-- 
    Document   : save_progres
    Created on : 21-May-2017, 05:55:56
    Author     : Lunodzo Mwinuka
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs;

        
        String case_id = request.getParameter("case_id");
        String client_id = request.getParameter("client_id");
        String process_date = request.getParameter("date");
        String court_id = request.getParameter("court_id");
        String progress = request.getParameter("progress");
        
        
            int i = st.executeUpdate("insert into case_progress (case_id, client_id, process_date, court_id, progress) values ('"+case_id+"', '"+client_id+"', '"+process_date+"','"+court_id+"', '"+progress+"')");
            out.print("Data inserted successful");
            
            if (i!=0){
                response.sendRedirect("case_registry.jsp?msg=One Attorney registered");
            }
        
        
%>

