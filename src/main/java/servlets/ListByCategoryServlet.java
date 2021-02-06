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


@WebServlet(urlPatterns = {"/ListByCategory"})

public class ListByCategoryServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByCategoryPage doPost");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        String category = request.getParameter("category");
        System.out.println(category);

        List<Record> records = recordDaoImpl.selectByText(category);
        request.setAttribute("list", records);

        response.sendRedirect("ListByCategory.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByCategoryPage doGet");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        String category = request.getParameter("category");
        System.out.println(category);

        List<Record> records = recordDaoImpl.selectByText(category);
        request.setAttribute("list", records);

        request.getRequestDispatcher("/ListByCategory.jsp").forward(request, response);

    }
}
