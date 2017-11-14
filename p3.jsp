<%-- 
    Document   : p3.jsp
    Created on : Oct 25, 2017, 11:15:37 PM
    Author     : saurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
    <%
           if((request.getParameter("username").test("/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/"));
           String email=request.getParameter("mail");
           String d=request.getParameter("dob");
           String lucky_num=request.getParameter("lucky");
           
           var validemail ="/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/";
           
           
            %>
    </body>
</html>
