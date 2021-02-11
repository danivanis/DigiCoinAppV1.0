package servlets;

import DAO.RecordDaoImpl;
import entities.Record;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;


@WebServlet(urlPatterns = {"/ListByDate"})

public class ListByDateServlet extends HttpServlet {

    RecordDaoImpl recordDaoImpl = new RecordDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println("aici e ListByDatePage doPost");*/
/*
        response.sendRedirect("ListByDate.jsp");*/

        this.doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e ListByDatePage doGet");

        java.util.Date entryDate = null;
        try {
            entryDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
            System.out.println(entryDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(entryDate.getTime());
        System.out.println(date.toString());

        List<Record> records = recordDaoImpl.selectByDate(date);
        request.setAttribute("list", records);


        request.getRequestDispatcher("/ListByDate.jsp").forward(request, response);

    }
}
