package servlets;

import app.ServletExecutor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AgeCalcServlet", urlPatterns = "/myAge")
public class ServletConnectionManager extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        //get printwriter
        PrintWriter out = response.getWriter();
        //generate html
        out.println("<html><body>");
        out.println("<title>Age Calculator</title>");
        out.println("Danut Ivanis was born " + ServletExecutor.Calculator() + " days ago!");
        out.println("</body><html>");

        out.println("<html>\n" +
                "<head>\n" +
                "<style>\n" +
                "table {\n" +
                "  font-family: arial, sans-serif;\n" +
                "  border-collapse: collapse;\n" +
                "  width: 100%;\n" +
                "}\n" +
                "\n" +
                "td, th {\n" +
                "  border: 1px solid #dddddd;\n" +
                "  text-align: left;\n" +
                "  padding: 8px;\n" +
                "}\n" +
                "\n" +
                "tr:nth-child(even) {\n" +
                "  background-color: #dddddd;\n" +
                "}\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                "\n" +
                "<h2>HTML Table</h2>\n" +
                "\n" +
                "<table>\n" +
                "  <tr>\n" +
                "    <th>Company</th>\n" +
                "    <th>Contact</th>\n" +
                "    <th>Country</th>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Alfreds Futterkiste</td>\n" +
                "    <td>Maria Anders</td>\n" +
                "    <td>Germany</td>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Centro comercial Moctezuma</td>\n" +
                "    <td>Francisco Chang</td>\n" +
                "    <td>Mexico</td>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Ernst Handel</td>\n" +
                "    <td>Roland Mendel</td>\n" +
                "    <td>Austria</td>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Island Trading</td>\n" +
                "    <td>Helen Bennett</td>\n" +
                "    <td>UK</td>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Laughing Bacchus Winecellars</td>\n" +
                "    <td>Yoshi Tannamuri</td>\n" +
                "    <td>Canada</td>\n" +
                "  </tr>\n" +
                "  <tr>\n" +
                "    <td>Magazzini Alimentari Riuniti</td>\n" +
                "    <td>Giovanni Rovelli</td>\n" +
                "    <td>Italy</td>\n" +
                "  </tr>\n" +
                "</table>\n" +
                "\n" +
                "</body>\n" +
                "</html>");

    }
}