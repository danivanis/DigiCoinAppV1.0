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

    RecordDaoImpl recordDaoImpl = new RecordDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByCategoryPage doPost");

        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByCategoryPage doGet");

        String category = request.getParameter("category");
        List<Record> records = recordDaoImpl.selectByCategory(category);
        request.setAttribute("list", records);

        request.getRequestDispatcher("/ListByCategory.jsp").forward(request, response);

    }

}
