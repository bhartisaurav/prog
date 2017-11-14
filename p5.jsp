<%-- 
    Document   : p5
    Created on : Oct 31, 2017, 8:42:19 PM
    Author     : saurav
--%>



<!DOCTYPE html>
<html>
    
    <body>
        <%!Integer l;  %>
        <%!Integer k;  %>
        <%!Integer flag=0;  %>
        <%!Integer i;  %>
        <%!Character ch; %>
        <%
            String str=request.getParameter("NUMBER1");
            
            l=str.length();
            if(str=="ODD")
            {
                
            for(k=0;k<l;k=k+2)
            {
                
               ch=str.charAt(k);
               if(ch=='A'||ch=='a'||ch=='E'||ch=='e'||ch=='I'||ch=='i'||ch=='O'||ch=='o'||ch=='U'||ch=='u')
               {
                   out.print("you win");
                   flag=1;
                   break;
               }
                    
            }
            if(flag==0)
            {
                out.print("you lose");
            }
            }
            else
            {
            for(i=1;i<l;i=i+2)
            {
                
                        
               ch=str.charAt(i);
               
               if((ch=='A')||(ch=='a')||ch=='E'||ch=='e'||ch=='I'||ch=='i'||ch=='O'||ch=='o'||ch=='U'||ch=='u')
               {
                   out.print("you win");
                   flag=1;
                   break;
               }
                      
            }
            if(flag==0)
            {
                out.print("you lose");
            }
            }
            %>
    </body>
</html>
