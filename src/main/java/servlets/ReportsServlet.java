package servlets;

import DAO.RecordDaoImpl;
import entities.Record;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;


@WebServlet(urlPatterns = {"/ReportsPage"})



public class ReportsServlet extends HttpServlet {

    RecordDaoImpl recordDaoImpl = new RecordDaoImpl();



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



//        response.sendRedirect("ReportsPage.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ReportsPage doGet");

        request.getRequestDispatcher("/ReportsPage.jsp").forward(request, response);

    }
}
