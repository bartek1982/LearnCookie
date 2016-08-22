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
                String userName = (String)request.getParameter("userName");
                String password = (String)request.getParameter("password");
                
                out.println("User name: " +userName);
                out.println("<br/>");
                out.println("Password: " +password);
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                
                Cookie [] cookies = request.getCookies();
                
                for(int i = 0; i<cookies.length; i++){
                    Cookie cookie = cookies[i];
                    if(cookie.getName().equals("userName")){
                        String userNameFromCookie = cookie.getValue();
                        out.println("Hello: " +userNameFromCookie);
                        break;
                    }
                }
            %>
    </body>
</html>
