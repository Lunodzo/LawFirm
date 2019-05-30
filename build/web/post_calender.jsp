<%-- 
    Document   : post_calender
    Created on : 21-May-2017, 08:16:10
    Author     : Lunodzo Mwinuka
--%>

<%@page import="java.sql.*"%>
<% 
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_law_firm","root","0001994tu");
        Statement st = con.createStatement();
        ResultSet rs;

        
        String schedule_name = request.getParameter("name1");
        String location = request.getParameter("location");
        String date_schedule = request.getParameter("date");
        String requirement = request.getParameter("requirements");
        
        
        
            int i = st.executeUpdate("insert into schedule (schedule_name, location, date_schedule, requirement) values ('"+schedule_name+"', '"+location+"', '"+date_schedule+"','"+requirement+"')");
            out.print("Data inserted successful");
            
            if (i!=0){
                response.sendRedirect("calendar.jsp?msg=Event Added succesfully");
            }
        
        
%>