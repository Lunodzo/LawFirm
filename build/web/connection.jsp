<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : connection
    Created on : 25-Apr-2017, 21:59:47
    Author     : Lunodzo Mwinuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% 
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","");
        Statement st = conn.createStatement();
    }
    catch(Exception e){
        out.println(e);
    }
%>

