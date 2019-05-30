<%-- 
    Document   : logout
    Created on : 07-Jun-2017, 01:45:51
    Author     : Lunodzo Mwinuka
--%>
<META http-equiv="refresh" content="3;URL=index.jsp"> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String email = (String)session.getAttribute("");
    if(session.getAttribute("admin")!=null || session.getAttribute("lawyer") != null){
       
        response.sendRedirect("nyingine.jsp");
        session.removeAttribute("lawyer");
        session.removeAttribute("admin");
    }else{
        out.println("You are not logged in");
    }
%>
