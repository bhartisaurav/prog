<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reverse of String</title>
    </head>
    <body>
        <h1> Practical 8</h1> 
        <form action="eigthJsp.jsp" method="post">
            Enter String: <input type="text" name="string"><Br>
            <input type="submit" value="Reverse">
        </form>
        <%@taglib uri="myTags.tld" prefix="rev" %>
        Reverse is: 
        <rev:reverse input="${param['string']}" />
    </body>
</html>
