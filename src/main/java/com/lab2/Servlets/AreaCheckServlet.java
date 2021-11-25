package com.lab2.Servlets;

import javax.servlet.ServletContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedList;

public class AreaCheckServlet extends HttpServlet {
    LinkedList<String> answer = new LinkedList<>();
    String message;
    Float x, y;
    Integer r;
    String time;
    Double executionTime;
    Boolean success;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();

        if ((req.getParameter("X") != null) && (req.getParameter("Y") != null) && (req.getParameter("R") != null)) {
            x = Float.parseFloat(req.getParameter("X"));
            y = Float.parseFloat(req.getParameter("Y"));
            r = Integer.parseInt(req.getParameter("R"));


            log("checknull true");
            String currentTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"));
            double startTime = System.nanoTime();

            message = "miss";
            if (checkArea(x,y,r)) {
                message = "hit";
            }
            double timeResponse = (System.nanoTime() - startTime) * Math.pow(10, -6);
            answer.addFirst("<tr><td>" + x + "</td>" +
                    "<td>" + y + "</td>" +
                    "<td>" + r + "</td>" +
                    "<td>" + currentTime + "</td>" +
                    "<td>" + timeResponse + " ms" + "</td>" +
                    "<td>" + message + "</td></tr>");

            servletContext.setAttribute("answer", answer);
            servletContext.setAttribute("x",x);
            servletContext.setAttribute("y",y);
            servletContext.setAttribute("r",r);
            servletContext.setAttribute("message",message);

            RequestDispatcher dispatcher = req.getRequestDispatcher("./index.jsp");
            dispatcher.forward(req, resp);
        }
        else {
            resp.setStatus(422);
        }


    }

    private boolean checkArea(float x, float y, int r) {
        float rtemp = r;
        if (x > 0) {
            if (y < 0) return false;
            else  return 4 * x * x + 4 * y * y <= r*r;
        } else {
            if (y > 0) return y - x <= rtemp/2;
            else return ( (x >= -r) && (y >= -rtemp/2) );
        }
    }

}