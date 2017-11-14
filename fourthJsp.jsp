
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greetings</title>
    </head>
    <include 
    <body>
         <h1> Practical 4</h1> 
        <form action="fourthJsp.jsp" method="post">
            Enter Name: <input type="text" name="name">
            <input type="submit" value="Give Greetings">
        </form>
         <%@ page language="java" import="java.util.*,java.text.*"%>
         <%
             if(request.getParameter("name")!=null)
            {
            String name=request.getParameter("name");
            DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
            Date dateobj = new Date();
            String temp=df.format(dateobj).toString();
            int time=Integer.parseInt(""+temp.charAt(9)+temp.charAt(10));
            
            if(time<=12)
                out.print("Good Morning "+name);
            else if(time>12 && time<17)
                out.print("Good Afternoon "+name);
            else 
                out.print("Good Evening "+name);
            }
            %>
            
    </body>
</html>
