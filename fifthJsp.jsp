<html>
    <head>
        <title>Odd-Even Game</title>
    </head>

    <body>
        <h1> Practical 5</h1> 
        <form action="fifthJsp.jsp" method="post">
            Enter String: <input type="text" name="string"><Br>
            Odd: <input type="radio" name="oe" value="odd"><Br>
            Even: <input type="radio" name="oe" value="even"><Br>
            <input type="submit" value="Start">
        </form>
    </body>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="str" value="${param['string']}"/>
<c:set var="check" value="${param['oe']}"/>
<c:choose>
    <c:when test="${check=='even'}">
        <c:forEach var="i" begin="0" end="${fn:length(str)}">
            <c:choose>
                <c:when test="${i%2==0}">
                    <c:if test="${(fn:substring(str,i,i+1)!='a') && 
                                  (fn:substring(str,i,i+1)!='e') && 
                                  (fn:substring(str,i,i+1)!='i') && 
                                  (fn:substring(str,i,i+1)!='o') && 
                                  (fn:substring(str,i,i+1)!='u') }">
                        <c:set var="flag" value="0"/>
                    </c:if>
                </c:when>
            </c:choose>
            
        </c:forEach>
    </c:when>
    <c:when test="${check=='odd'}">
        <c:forEach var="i" begin="1" end="${fn:length(str)}">
            <c:choose>
                <c:when test="${i%2==1}">
                    <c:if test="${(fn:substring(str,i,i+1)!='a') && 
                                  (fn:substring(str,i,i+1)!='e') && 
                                  (fn:substring(str,i,i+1)!='i') && 
                                  (fn:substring(str,i,i+1)!='o') && 
                                  (fn:substring(str,i,i+1)!='u')  }">
                        <c:set var="flag" value="0"/>
                    </c:if>
                </c:when>
            </c:choose>
            
        </c:forEach>
    </c:when>
</c:choose>
<c:if test="${str!=null}">
        <c:choose>
            <c:when test="${flag==0 }">
                 You Loose
             </c:when>
             <c:otherwise>
                 You Won
             </c:otherwise>
        </c:choose>
</c:if>
                    
