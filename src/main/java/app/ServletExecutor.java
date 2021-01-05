package app;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;


public class ServletExecutor {

    public static void main(String[] args) {
        System.out.println("Number of Days between dates: " + Calculator());
    }

    public static int Calculator() {
        int year = 1987;
        int month = 11;
        int day = 16;
        float daysBetween = 0L;
        SimpleDateFormat myFormat = new SimpleDateFormat("dd MM yyyy");
        String dateBeforeString = day + " " + month + " " + year;
        Date today = Date.from(Instant.now());

        try {
            Date dateBefore = myFormat.parse(dateBeforeString);
            long difference = today.getTime() - dateBefore.getTime();
            daysBetween = (difference / (1000 * 60 * 60 * 24));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (int) daysBetween;
    }

}
