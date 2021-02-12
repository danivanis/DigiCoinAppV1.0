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

@WebServlet(urlPatterns = {"/OverviewPage"})

public class OverviewServlet extends HttpServlet {
    private RecordDaoImpl recordDaoImpl;

    public void init(){
        recordDaoImpl = new RecordDaoImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e overviewpage doPost");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        List<Record> records = recordDaoImpl.selectAll();

        request.setAttribute("list", records);

        request.setAttribute("sum",recordDaoImpl.sumAll());

        request.getRequestDispatcher("/OverviewPage.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e overviewpage doGet");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        List<Record> records = recordDaoImpl.selectAll();

        request.setAttribute("list", records);

        request.setAttribute("sum",recordDaoImpl.sumAll());

        request.getRequestDispatcher("/OverviewPage.jsp").forward(request, response);

    }
}
