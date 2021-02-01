package servlets;

import entities.Record;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.labels.PieSectionLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(urlPatterns = {"/PieChart"})
public class PieChartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aici e pieChart doPost");

        response.sendRedirect("PieChart.jsp");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("aici e PieChart doPost");

        response.setContentType("image/png");

        OutputStream outputStream = response.getOutputStream();

        JFreeChart chart = getChart();
        int width = 1280;
        int height = 720;

        ChartUtils.writeChartAsPNG(outputStream, chart, width, height);

        request.getRequestDispatcher("/PieChart.jsp").forward(request, response);
    }

    public JFreeChart getChart() {

        DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("Food", 22);
        dataset.setValue("Clothes", 34);
        dataset.setValue("Utilities", 18);
        dataset.setValue("Entertainment", 5);
        dataset.setValue("Miscellaneous", 21);

        JFreeChart chart = ChartFactory.createPieChart("Monthly Expenses",
                dataset, true, false, false);

        PiePlot piePlot = (PiePlot) chart.getPlot();
//        piePlot.setBackgroundPaint(new Color(0,128,128));
        piePlot.setSectionPaint("Food", new Color (31,255,255));
        piePlot.setSectionPaint("Clothes", new Color(0, 163, 163));
        piePlot.setSectionPaint("Utilities", new Color(0,97,97));
        piePlot.setSectionPaint("Entertainment", new Color(0,66,66));
        piePlot.setSectionPaint("Miscellaneous", new Color(0,36,36));
        piePlot.setLabelBackgroundPaint(new Color(242, 243, 245));

        Image image = Toolkit.getDefaultToolkit().getImage("C:/Users/Dan/IdeaProjects/DigiCoinAppV1.0/DigiCoin - background image.jpg");

        piePlot.setBackgroundImage(image);

        PieSectionLabelGenerator gen = new StandardPieSectionLabelGenerator(
                "{0}: {1} ({2})", NumberFormat.getInstance(), NumberFormat.getPercentInstance());
        piePlot.setLabelGenerator(gen);

        chart.setBackgroundImage(image);

        chart.setBorderVisible(false);

        return chart;
    }

}