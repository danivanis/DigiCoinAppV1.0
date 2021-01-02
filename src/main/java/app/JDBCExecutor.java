package app;

import DAO.RecordDaoImpl;
import entities.Record;
import jdbc.DatabaseConnectionManager;

import java.sql.*;
import java.time.LocalDate;
import java.util.List;

public class JDBCExecutor {

    public static void main(String[] args) {

        Connection connection = null;

        try {
            connection = DatabaseConnectionManager.getConnection();
            if (connection != null) {
                System.out.println("Connection established!");
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM RECORD");
                while (resultSet.next()) {
                    System.out.println(resultSet.getInt(1));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        RecordDaoImpl pdi = new RecordDaoImpl();
//        pdi.createRecordsTable();
//
//        Record record1 = new Record(Date.valueOf("2021-01-01"), "Cheltuieli Revelion", 120.00);
//        pdi.insert(record1);

        Record record1 = new Record(Date.valueOf(LocalDate.of(2021,1,1)), "Cheltuieli Revelion", 120.00);
        pdi.insert(record1);
//
//        Record record2 = new Record(Date.valueOf("2021-01-02"), "Diverse", 11.15);
//        pdi.insert(record2);
//
//        Record record3 = new Record(Date.valueOf("2021-01-02"), "Altele", 23.88);
//        pdi.insert(record3);
//
        Record record = pdi.selectById(1);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        record = pdi.selectById(2);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        record = pdi.selectById(3);
//        System.out.println(record.getId() + ", " + record.getEntryDate() + ", " + record.getDescription() + ", " + record.getAmount());
//
//        pdi.delete(3);

        record = pdi.selectById(1);
        record.setDescription("Revelion 2021");
        pdi.update(record,1);
        record = pdi.selectById(2);
        record.setEntryDate(Date.valueOf("2020-01-01"));
        pdi.update(record,2);


        List<Record> records = pdi.selectAll();
        for (Record recordList : records){
            System.out.println(recordList.getId() + ", " + recordList.getEntryDate() + ", " + recordList.getDescription() + ", " + recordList.getAmount());
        }

    }
}
