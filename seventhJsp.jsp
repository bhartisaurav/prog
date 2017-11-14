<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sub-string</title>
    </head>
    <body>
        <h1> Practical 7</h1> 
        <form action="seventhJsp.jsp" method="post">
            Enter String: <input type="text" name="string"><Br>
            Start: <input type="text" name="start" ><Br>
            End: <input type="text" name="end" ><Br>
            <input type="submit" value="Substring">
        </form>
        <%@taglib uri="myTags.tld" prefix="sub" %>
        Substring is: 
        <sub:subString  input="${param['string']}" 
                        start="${param['start']}" 
                        end="${param['end']}"/>
    </body>
</html>
