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
                    "source varchar(15), category varchar(15), entry_date DATE NOT NULL DEFAULT CURRENT_DATE, entry_amount DOUBLE PRECISION, entry_description varchar(55))");
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
            preparedStatement = connection.prepareStatement("INSERT INTO record (source, category, entry_date, entry_amount, entry_description) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setString(1, record.getSource());
            preparedStatement.setString(2, record.getCategory());
            preparedStatement.setDate(3, new java.sql.Date(record.getEntryDate().getTime()) );
            preparedStatement.setDouble(4, record.getAmount());
            preparedStatement.setString(5, record.getDescription());
            preparedStatement.executeUpdate();
            System.out.println("INSERT INTO record (source, category, entry_date, entry_amount, entry_description) VALUES (?, ?, ?, ?, ?)");
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
                record.setSource(resultSet.getString("source"));
                record.setCategory(resultSet.getString("category"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setAmount(resultSet.getDouble("entry_amount"));
                record.setDescription(resultSet.getString("entry_description"));
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
    public Record selectByCategory(String category) {
        Record record = new Record();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            connection = DatabaseConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM record WHERE category = ?");
            preparedStatement.setString(1, category);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                record.setId(resultSet.getInt("id"));
                record.setSource(resultSet.getString("source"));
                record.setCategory(resultSet.getString("category"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setAmount(resultSet.getDouble("entry_amount"));
                record.setDescription(resultSet.getString("entry_description"));
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
                record.setSource(resultSet.getString("source"));
                record.setCategory(resultSet.getString("category"));
                record.setEntryDate(resultSet.getDate("entry_date"));
                record.setAmount(resultSet.getDouble("entry_amount"));
                record.setDescription(resultSet.getString("entry_description"));
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
            resultSet = statement.executeQuery("SELECT * FROM record ORDER BY id ASC");
            while (resultSet.next()){
                Record record = new Record();
                record.setId(resultSet.getInt("id"));
                record.setSource(resultSet.getString("source"));
                record.setCategory(resultSet.getString("category"));
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
            preparedStatement = connection.prepareStatement("UPDATE record SET source = ?, category = ?, entry_date = ?, entry_amount = ?, entry_description = ? WHERE id = ?");
            preparedStatement.setString(1, record.getSource());
            preparedStatement.setString(2, record.getCategory());
            preparedStatement.setDate(3, new java.sql.Date(record.getEntryDate().getTime()) );
            preparedStatement.setDouble(4, record.getAmount());
            preparedStatement.setString(5, record.getDescription());
            preparedStatement.setInt(6, id);
            preparedStatement.executeUpdate();
            System.out.println("UPDATE record SET source = ?, category = ?, entry_date = ?, entry_amount = ?, entry_description = ?, id = ?");
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
