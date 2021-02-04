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

@WebServlet(urlPatterns = {"/DeletePage"})

public class DeleteServlet extends HttpServlet {
    private RecordDaoImpl recordDaoImpl;

    public void init(){
        recordDaoImpl = new RecordDaoImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e deletepage doPost");

        Integer entryID = Integer.valueOf(request.getParameter("entryid"));

        try {
            recordDaoImpl.delete(entryID);
        } catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("DeletePage.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e deletepage doGet");


        request.getRequestDispatcher("/DeletePage.jsp").forward(request, response);

    }
}
