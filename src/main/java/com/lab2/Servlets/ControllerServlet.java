package com.lab2.Servlets;

import javax.servlet.ServletContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ServletContext servletContext = request.getServletContext();
        PrintWriter out = response.getWriter();

        request.setCharacterEncoding("UTF-8");
        boolean dataIsCorrect = true;
        String xString = request.getParameter("X");
        log(xString);
        if (xString == null) {
            out.println("X is not assigned");
        } else {
            try {
                Float.parseFloat(xString);
            } catch (NumberFormatException e) {
                out.println("X can not be parsed");
                dataIsCorrect = false;
            }
        }

        String yString = request.getParameter("Y");
        log(yString);
        if (yString == null) {
            out.println("Y is not assigned");
            dataIsCorrect = false;
        } else {
            float y;
            try {
                y = Float.parseFloat(yString);
                if (y < -5 || y > 5) {
                    out.println("R is not valid");
                    dataIsCorrect = false;
                }
            } catch (NumberFormatException e) {
                out.println("Y can not be parsed");
                dataIsCorrect = false;
            }
        }

        String rString = request.getParameter("R");
        log(rString);
        if (rString == null) {
            out.println("R is not assigned");
            dataIsCorrect = false;
        } else {
            float r;
            try {
                r = Float.parseFloat(rString);
                if (r < 1 || r > 5) {
                    out.println("R is not valid");
                    dataIsCorrect = false;
                }
            } catch (NumberFormatException e) {
                out.println("R can not be parsed");
                dataIsCorrect = false;
            }
        }
        if (dataIsCorrect) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("./check");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
        dispatcher.forward(request, response);
    }
}