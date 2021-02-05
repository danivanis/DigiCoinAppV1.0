package app;

import DAO.RecordDaoImpl;
import entities.Record;
import jdbc.DatabaseConnectionManager;
import org.jfree.data.general.DefaultPieDataset;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

public class JDBCExecutor {

    public static void main(String[] args) {

        RecordDaoImpl pdi = new RecordDaoImpl();
//        pdi.createRecordsTable();


//        String inputDate = "2020-10-11";
//        Date date = null;
//        try {
//            date = new SimpleDateFormat("yyyy-MM-dd").parse(inputDate);
//            System.out.println(date);
//            System.out.println(date1);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//
//        java.sql.Date date1 = new java.sql.Date(date.getTime());
//        System.out.println(date1);

//        Record record1 = new Record("Credit card", date1, "test", -123);
//        pdi.insert(record1);
//
//        Record record = pdi.selectById(1);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        record = pdi.selectById(2);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        record = pdi.selectById(3);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        pdi.delete(2);

//        record = pdi.selectById(1);
//        record.setDescription("Revelion 2021");
//        pdi.update(record,1);
//        record = pdi.selectById(2);
//        record.setEntryDate(Date.valueOf("2020-01-01"));
//        pdi.update(record,2);


//        List<Record> records = pdi.selectAll();
//        for (Record recordList : records){
//            System.out.println(recordList.getId() + ", " + recordList.getEntryDate() + ", " + recordList.getDescription() + ", " + recordList.getAmount());
//        }

    }
}
