package servlets;

import DAO.RecordDaoImpl;
import entities.Record;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;


@WebServlet(urlPatterns = {"/ListByText"})

public class ListByTextServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByTextPage doPost");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        String details = request.getParameter("details");
        System.out.println(details);

        List<Record> records = recordDaoImpl.selectByText(details);
        request.setAttribute("list", records);

        response.sendRedirect("ListByText.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByTextPage doGet");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        String details = request.getParameter("details");
        System.out.println(details);

        List<Record> records = recordDaoImpl.selectByText(details);
        request.setAttribute("list", records);

        request.getRequestDispatcher("/ListByText.jsp").forward(request, response);

    }
}
