package hms.spm.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by kusala on 10/5/15.
 */


public class StringToDateConverter implements Converter<String, Date> {

    private SimpleDateFormat formatter;

    @Override
    public Date convert(String dateString) {

        formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm");

        try {
            return formatter.parse(dateString);
        } catch (ParseException e) {
            return null;
        }
    }
}
