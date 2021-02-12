package servlets;

import DAO.RecordDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/QuickDeletePage"})

public class QuickDeleteServlet extends HttpServlet {
    private RecordDaoImpl recordDaoImpl;

    public void init(){
        recordDaoImpl = new RecordDaoImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e QuickDeletePage doPost");

        response.sendRedirect("/OverviewPage");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e QuickDeletePage doGet");

        Integer entryID = Integer.valueOf(request.getParameter("entryid"));

        try {
            recordDaoImpl.delete(entryID);
        } catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("/QuickDeletePage.jsp");

    }
}
