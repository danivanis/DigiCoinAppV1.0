package servlets;

import jdbc.DatabaseConnectionManager;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.labels.PieSectionLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.jdbc.JDBCPieDataset;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.NumberFormat;

@WebServlet(urlPatterns = {"/PieChartDate"})
public class PieChartDateServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e pieChart doPost");

        response.sendRedirect("PieChartDate.jsp");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("aici e PieChart doPost");

        Connection connection = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }

        JDBCPieDataset dataset = new JDBCPieDataset(connection);

        try {
            dataset.executeQuery("SELECT entry_date, SUM(entry_amount) FROM record GROUP BY entry_date ORDER BY entry_date ASC");
            JFreeChart chart = ChartFactory.createPieChart("Expenses Overview - Split by date",
                    dataset, true, true, false);

            PiePlot piePlot = (PiePlot) chart.getPlot();
            piePlot.setLabelBackgroundPaint(new Color(242, 243, 245));

            Image image = Toolkit.getDefaultToolkit().getImage("C:/Users/Dan/IdeaProjects/DigiCoinAppV1.0/DigiCoin - background image.jpg");

            piePlot.setBackgroundImage(image);

            PieSectionLabelGenerator gen = new StandardPieSectionLabelGenerator(
                    "{0}: {1} ({2})", NumberFormat.getInstance(), NumberFormat.getPercentInstance());
            piePlot.setLabelGenerator(gen);

            Font font = new Font("Dialog", Font.PLAIN, 22);

            piePlot.setLabelFont(font);

            chart.setBackgroundImage(image);

            chart.setBorderVisible(false);

            if (chart != null) {
                response.setContentType("image/png");
                OutputStream outputStream = response.getOutputStream();
                int width = 1280;
                int height = 720;
                ChartUtils.writeChartAsPNG(outputStream, chart, width, height);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try{
            if (connection != null){
                connection.close();
            }
        } catch (SQLException e){
            e.printStackTrace();
        }

        request.getRequestDispatcher("/PieChartDate.jsp").forward(request, response);
    }

}