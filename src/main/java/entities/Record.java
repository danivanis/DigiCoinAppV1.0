package entities;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class Record {

    private Integer id;
    private Date entryDate;
    private String description;
    private double amount;

    public Record(){

    }

    public Record(Date entryDate, String description, double amount){
        this.entryDate = entryDate;
        this.description = description;
        this.amount = amount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getEntryDate() {
        return this.entryDate;
    }

    public void setEntryDate(Date entryDate) {
        this.entryDate = entryDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}