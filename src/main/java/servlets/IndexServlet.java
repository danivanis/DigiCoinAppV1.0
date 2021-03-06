package servlets;

import DAO.RecordDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = {"/index"})

public class IndexServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e index doPost");
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e index doGet");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();

        recordDaoImpl.createRecordsTable();

        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }
}
