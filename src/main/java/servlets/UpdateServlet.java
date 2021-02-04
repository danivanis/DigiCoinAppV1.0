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
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = {"/UpdatePage"})

public class UpdateServlet extends HttpServlet {
    private RecordDaoImpl recordDaoImpl;

    public void init(){
        recordDaoImpl = new RecordDaoImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e updatepage doPost");

        Integer entryID = Integer.valueOf(request.getParameter("entryid"));
        String source = request.getParameter("source");
        String category = request.getParameter("category");
        Date entryDate = null;
        try {
            entryDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
            System.out.println(entryDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(entryDate.getTime());
        System.out.println(date.toString());
        String details = request.getParameter("details");
        System.out.println(details);
        Double amount = Double.valueOf(request.getParameter("amount"));
        System.out.println(amount);

        Record record = new Record();
        record.setId(entryID);
        record.setSource(source);
        record.setCategory(category);
        record.setEntryDate(date);
        record.setDescription(details);
        record.setAmount(amount);

        try {
            recordDaoImpl.update(record, entryID);
        } catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("UpdatePage.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e updatepage doGet");

        request.getRequestDispatcher("/UpdatePage.jsp").forward(request, response);

    }
}
