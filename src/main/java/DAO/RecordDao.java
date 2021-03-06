package DAO;

import entities.Record;

import java.util.Date;
import java.util.List;

public interface RecordDao {

    void createRecordsTable();

    void insert(Record record);

    Record selectRecord(int id);

    List<Record> selectByText(String details);

    List<Record> selectByDate(Date date);

    List<Record> selectByCategory(String category);

    List<Record> selectAll();

    double sumAll();

    void delete(int id);

    void update(Record record, int id);
}
