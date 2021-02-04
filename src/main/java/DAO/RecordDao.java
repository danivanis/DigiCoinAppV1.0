package DAO;

import entities.Record;

import java.util.Date;
import java.util.List;

public interface RecordDao {

    void createRecordsTable();

    void insert(Record record);

    Record selectById(int id);

    Record selectByDate(Date date);

    Record selectByCategory(String category);

    List<Record> selectAll();

    void delete(int id);

    void update(Record record, int id);
}
