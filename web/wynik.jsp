<%@page import="com.example.model.*" %>
<%-- 
    Document   : wynik
    Created on : 2016-07-12, 20:46:18
    Author     : Bart
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP z danymi</title>
    </head>
    <body>
                
        <p>
            <%
//                String userName = (String)request.getParameter("userName");
//                String password = (String)request.getParameter("password");
                User user = (User)request.getAttribute("user");
                out.println("User name: " +user.getUserName());
                out.println("<br/>");
                out.println("Password: " +user.getPassword());
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                
                Cookie [] cookies = request.getCookies();
                String userNameFromCookie = "";
                if(cookies!=null){
                for(int i = 0; i<cookies.length; i++){
                    Cookie cookie = cookies[i];
                    if(cookie.getName().equals("userName")){
                        userNameFromCookie = cookie.getValue();
                        out.println("Hello: " +userNameFromCookie);
                        break;
                    }
                }
                }
                out.println("<br/>");
                out.println("<br/>");
                out.println("Wyswietlen: " +Licznik.getLiczba());
            %>
            
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="*************************************************************************************"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            
            
            User name: <%= user.getUserName()%>
            <%="<BR/>"%>
            Password: <%= user.getPassword()%>
            <%="<BR/>"%>
            <%="Hello: " +userNameFromCookie%>
            <%="<BR/>"%>
            <%="Wyswietlen: " +Licznik.getLiczba()%>
            <%="<BR/>"%>
            <%! int liczba = 0; %>
            Licznik strony wynosi: 
            <%= ++liczba%>
            <%="<BR/>"%>            
            <%! int podwojnaLiczba(){
                liczba=liczba*2;
                return liczba;
            }%>
            Podwokony licznik strony wynosi: 
            <%=podwojnaLiczba()%>
            
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="*************************************************************************************"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            <%="<BR/>"%>
            <jsp:useBean id="userWithiutscriptlet" class="com.example.model.User" scope="page" />
            User name: <jsp:getProperty name="userWithiutscriptlet" property="userName"/><br>            
            Password: <jsp:getProperty name="userWithiutscriptlet" property="password"/>
    </body>
</html>
