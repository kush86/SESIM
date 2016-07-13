package ucsc.mis.util;

import hms.spm.core.service.UserManagementException;
import hms.spm.core.service.UserService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ucsc.mis.orm.model.User;

import java.io.*;

/**
 * Created by kusala on 7/11/16.
 */
@Component
public class UserLIstCsvParser {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserLIstCsvParser.class);
    @Autowired
    private UserService userService;

    public void run(String filePath) {
        String csvFile = filePath;
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        int errorCount = 0;
        int successCount = 0;

        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {

                try {
                    // use comma as separator
                    String[] userDetails = line.split(cvsSplitBy);

                    logger.info("user info {} {} {}", userDetails);

                    User user = new User(userDetails[0], userDetails[0], userDetails[1], userDetails[2]);

                    userService.createUser(user);

                    successCount++;
                } catch (UserManagementException ume) {
                    logger.error("Error while creating user", ume);
                    errorCount++;
                }

            }

        } catch (FileNotFoundException e) {
            logger.error("Error while parsing csv file", e);

        } catch (IOException e) {
            logger.error("Error while parsing csv file", e);

        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        logger.info("Finished processing user csv, Errors = {}, Success = {}", errorCount, successCount);
    }

    public void run(File file) {
       // String csvFile = filePath;
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        int errorCount = 0;
        int successCount = 0;

        try {

            br = new BufferedReader(new FileReader(file));
            while ((line = br.readLine()) != null) {

                try {

                    if(line.trim().isEmpty()){
                        continue;
                    }
                    // use comma as separator
                    line = line.replaceAll("\\s+","");
                    line = line.replace("\u0000", "");
                    String[] userDetails = line.split(cvsSplitBy);

                    logger.info("user info {} {} {}", userDetails);

                    User user = new User(userDetails[0], userDetails[0], userDetails[1], userDetails[2]);

                    userService.createUser(user);

                    successCount++;
                } catch (UserManagementException ume) {
                    logger.error("Error while creating user", ume);
                    errorCount++;
                }

            }

        } catch (FileNotFoundException e) {
            logger.error("Error while parsing csv file", e);

        } catch (IOException e) {
            logger.error("Error while parsing csv file", e);

        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        logger.info("Finished processing user csv, Errors = {}, Success = {}", errorCount, successCount);
    }

}
