/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.web;

import com.example.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bart
 */
@WebServlet(name = "UserDataServlet", urlPatterns = {"/UserDataServlet"})
public class UserDataServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        
        User user = new User(userName, password);
        request.setAttribute("user", user);
               
//        request.setAttribute("userName", userName);
//        request.setAttribute("password", password);
        
        Cookie cookie = new Cookie("userName", userName);
        
        response.addCookie(cookie);
        
        RequestDispatcher view = request.getRequestDispatcher("wynik.jsp");
        view.forward(request, response);
    }
}
