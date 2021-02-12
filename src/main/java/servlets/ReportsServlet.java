package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = {"/ReportsPage"})

public class ReportsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ReportsPage doPost");

        String category = "";
        request.setAttribute("category", category);
        System.out.println(category);
        String details = "";
        request.setAttribute("details",details);
        System.out.println(details);
        java.util.Date entryDate = null;
        request.setAttribute("date", entryDate);
        java.sql.Date date = new java.sql.Date(entryDate.getTime());
        System.out.println(date.toString());

        if (date != null){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/ListByDate");
            requestDispatcher.forward(request, response);
        } else if (details != null){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/ListByText");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/ListByCategory");
            requestDispatcher.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ReportsPage doGet");

        request.getRequestDispatcher("/ReportsPage.jsp").forward(request, response);

    }
}
