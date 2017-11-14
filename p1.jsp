<%-- 
    Document   : p1.jsp
    Created on : Oct 25, 2017, 8:55:56 PM
    Author     : saurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
      
      <% 
          String num =request.getParameter("NUMBER");
          int k = Integer.parseInt(num);
          for(int i=0;i<k;i++)
          {
           for(int j=0;j<=i;j++)
           out.print("*");
           out.print("<br>");
          }
      %>
    </body>
</html>
