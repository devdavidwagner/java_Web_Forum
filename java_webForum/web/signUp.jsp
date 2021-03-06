<%-- 
    Document   : SignUp
    Created on : Feb 6, 2017, 4:25:02 PM
    Author     : dwagner6506
--%>
<jsp:include page="/includes/forumBanner.jsp" />
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<section id="signUpSec">
    
    <h1> Sign-Up</h1>
    
        <c:if test="${message != null}">
            <p id = "error" >
                <font size="4" color="red" width = "400px">
                ${message}
                </font>
            </p>
        </c:if>
        
    <form action="signUp" method="post" onsubmit="return checkPass()">
        <label for="Username">Username</label><br>
        <input type="text" name="Username" value="${user.username}" required="true"><br>
        <label for="Password">Password</label><br>
        <input type="password" name="Password" id="pass" value="${user.password}" password required="true"><br>
        <label for="PasswordConf">Confirm Password</label><br>
        <input  type="password" name="PasswordConf" id="passComf" password required="true"><br>
    
        <input type="Submit" name="Submit" value="Join the Jabber!">
    </form>
    
</section>



<jsp:include page="/includes/forumFooter.jsp" />

