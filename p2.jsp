<%-- 
    Document   : p2.jsp
    Created on : Oct 25, 2017, 10:17:56 PM
    Author     : saurav
--%>


<html>
    
    <body>
        <%
            String num1=request.getParameter("NUMBER1");
            String num2=request.getParameter("NUMBER2");
            String OP=request.getParameter("OPERATION");
            int n1=Integer.parseInt(num1);
            int n2=Integer.parseInt(num2);
            
            if(OP.equals("ADD"))
            out.print("ADDITION OF "+n1+" AND "+n2+"=  "+(n1+n2));
            else
            if(OP.equals("SUB"))
            out.print("SUBTRACTION OF "+n1+" AND "+n2+"=  "+(n1-n2));
            else
            if(OP.equals("MUL"))
            out.print("MULTIPLICATION OF "+n1+" AND "+n2+"=  "+(n1*n2));
            else
            if(OP.equals("DIV"))
            out.print("DIVISION OF "+n1+" AND "+n2+"=  "+(n1/n2));
            %>
    </body>
</html>
