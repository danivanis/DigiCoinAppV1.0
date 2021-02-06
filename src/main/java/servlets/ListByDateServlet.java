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


@WebServlet(urlPatterns = {"/ListByDate"})

public class ListByDateServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByDatePage doPost");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        java.util.Date entryDate = null;
        try {
            entryDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
            System.out.println(entryDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(entryDate.getTime());
        System.out.println(date.toString());

        List<Record> records = recordDaoImpl.selectByDate(entryDate);
        request.setAttribute("list", records);

        response.sendRedirect("ListByDate.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByDatePage doGet");

        RecordDaoImpl recordDaoImpl = new RecordDaoImpl();
        java.util.Date entryDate = null;
        try {
            entryDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
            System.out.println(entryDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(entryDate.getTime());
        System.out.println(date.toString());

        List<Record> records = recordDaoImpl.selectByDate(entryDate);
        request.setAttribute("list", records);

        request.getRequestDispatcher("/ListByDate.jsp").forward(request, response);

    }
}
