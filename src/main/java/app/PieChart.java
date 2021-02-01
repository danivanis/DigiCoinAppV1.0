//package app;
//
//import java.awt.*;
//import java.io.*;
//import java.text.NumberFormat;
//
//import org.jfree.chart.ChartUtils;
//import org.jfree.chart.ChartFactory;
//import org.jfree.chart.JFreeChart;
//import org.jfree.chart.labels.PieSectionLabelGenerator;
//import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
//import org.jfree.chart.plot.PiePlot;
//import org.jfree.chart.title.TextTitle;
//import org.jfree.data.general.DefaultPieDataset;
//
//public class PieChart {
//
//    public static void main( String[ ] args ) throws Exception {
//        DefaultPieDataset dataset = new DefaultPieDataset();
//        dataset.setValue("Food", 22);
//        dataset.setValue("Clothes", 34);
//        dataset.setValue("Utilities", 18);
//        dataset.setValue("Entertainment", 5);
//        dataset.setValue("Miscellaneous", 21);
//
//        JFreeChart chart = ChartFactory.createPieChart("Monthly Expenses",
//                dataset, true, true, false);
//
//        Image image = Toolkit.getDefaultToolkit().getImage("C:/Users/Dan/IdeaProjects/DigiCoinAppV1.0/DigiCoin - background image.jpg");
//
//        PiePlot piePlot = (PiePlot) chart.getPlot();
////        piePlot.setBackgroundPaint(new Color(242, 243, 245));
//        piePlot.setSectionPaint("Food", new Color (31,255,255));
//        piePlot.setSectionPaint("Clothes", new Color(0, 163, 163));
//        piePlot.setSectionPaint("Utilities", new Color(0,97,97));
//        piePlot.setSectionPaint("Entertainment", new Color(0,66,66));
//        piePlot.setSectionPaint("Miscellaneous", new Color(0,36,36));
//        piePlot.setLabelBackgroundPaint(new Color(242, 243, 245));
//        chart.setBackgroundImage(image);
//
//        piePlot.setBackgroundImage(image);
//
//        TextTitle textTitle = new TextTitle();
//        textTitle.setBackgroundPaint(new Color(242, 243, 245));
//
//        chart.setBorderVisible(false);
//
//        PieSectionLabelGenerator gen = new StandardPieSectionLabelGenerator(
//                "{0}: {1} ({2})", NumberFormat.getInstance(), NumberFormat.getPercentInstance());
//        piePlot.setLabelGenerator(gen);
//
//        int width = 1280;   /* Width of the image */
//        int height = 720;  /* Height of the image */
//        File pieChart = new File( "PieChart.jpeg" );
//        ChartUtils.saveChartAsJPEG( pieChart , chart , width , height );
//    }
//}