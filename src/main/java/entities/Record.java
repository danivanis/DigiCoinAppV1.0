package entities;

import java.sql.Date;

public class Record {

    private Integer id;
    private Date entryDate;
    private String description;
    private String category;
    private double amount;
    private String source;

    public Record() {
    }

    public Record(String source, String category, Date entryDate, String description, double amount) {
        this.source = source;
        this.entryDate = entryDate;
        this.description = description;
        this.amount = amount;
        this.category = category;
    }

    public Record(String category, double amount) {
        this.category = category;
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

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
