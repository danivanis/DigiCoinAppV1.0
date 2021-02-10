package servlets;

import DAO.RecordDaoImpl;
import entities.Record;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/ListByText"})

public class ListByTextServlet extends HttpServlet {

    RecordDaoImpl recordDaoImpl = new RecordDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println("aici e ListByTextPage doPost");

        response.sendRedirect("ListByText.jsp");*/
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByTextPage doGet");

        String details = request.getParameter("details");
        List<Record> records = recordDaoImpl.selectByText(details);
        request.setAttribute("list", records);

        request.getRequestDispatcher("/ListByText.jsp").forward(request, response);

    }
}
