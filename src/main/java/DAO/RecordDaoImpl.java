package DAO;

import entities.Record;
import jdbc.DatabaseConnectionManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecordDaoImpl implements RecordDao {
    @Override
    public void createRecordsTable() {
        Connection connection = null;
        Statement statement = null;

        try {
            connection = DatabaseConnectionManager.getConnection();
            statement = connection.createStatement();
            statement.execute("CREATE TABLE IF NOT EXISTS record (id serial primary key," +
                    "entry_date DATE NOT NULL DEFAULT CURRENT_DATE, entry_description varchar(55), entry_amount DOUBLE PRECISION)");
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            if (statement != null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public void insert(Record record) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO record (entry_date, entry_description, entry_amount) VALUES (?, ?, ?)");
            preparedStatement.setDate(1, record.getEntryDate());
            preparedStatement.setString(2, record.getDescription());
            preparedStatement.setDouble(3, record.getAmount());
            preparedStatement.executeUpdate();
            System.out.println("INSERT INTO record (entry_date, entry_description, entry_amount) VALUES (?, ?, ?)");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public Record selectById(int id) {
        Record record = new Record();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM record WHERE id = ?");
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                record.setId(resultSet.getInt("id"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setDescription(resultSet.getString("entry_description"));
                record.setAmount(resultSet.getDouble("entry_amount"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (resultSet != null){
                try {
                    resultSet.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return record;
    }

    @Override
    public Record selectByDate(java.util.Date date) {
        Record record = new Record();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM record WHERE entry_date = ?");
            preparedStatement.setDate(1, Date.valueOf("entryDate"));
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                record.setId(resultSet.getInt("id"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setDescription(resultSet.getString("entry_description"));
                record.setAmount(resultSet.getDouble("entry_amount"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (resultSet != null){
                try {
                    resultSet.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return record;
    }

    @Override
    public List<Record> selectAll() {
        List<Record> records = new ArrayList<Record>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM record");
            while (resultSet.next()){
                Record record = new Record();
                record.setId(resultSet.getInt("id"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setDescription(resultSet.getString("entry_description"));
                record.setAmount(resultSet.getDouble("entry_amount"));
                records.add(record);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (resultSet != null){
                try {
                    resultSet.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (statement != null){
                try {
                    statement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return records;
    }

    @Override
    public void delete(int id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("DELETE FROM record WHERE id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
            System.out.println("DELETE FROM record WHERE id = ?");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public void update(Record record, int id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("UPDATE record SET entry_date = ?, entry_description = ?, entry_amount = ? WHERE id = ?");
            preparedStatement.setDate(1, (Date) record.getEntryDate());
            preparedStatement.setString(2, record.getDescription());
            preparedStatement.setDouble(3, record.getAmount());
            preparedStatement.setInt(4, id);
            preparedStatement.executeUpdate();
            System.out.println("UPDATE record SET entry_date = ?, entry_description = ?, entry_amount = ?, id = ?");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
