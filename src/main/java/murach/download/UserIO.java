package murach.download;
import java.io.*;
import murach.business.User;
import java.util.List;
import java.util.ArrayList;
public class UserIO {
    // Method to add a user to a file
    public static void add(User user, String filePath) {
        try (FileWriter writer = new FileWriter(filePath, true)) {
            writer.write(user.getEmail() + "," + user.getFirstName() + "," + user.getLastName() + "\n");
        } catch (IOException e) {
            e.printStackTrace();
            // Handle the exception appropriately (e.g., log it)
        }
    }
    public static List<User> readAll(String filePath) {
        List<User> users = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length == 3) {
                    String email = parts[0];
                    String firstName = parts[1];
                    String lastName = parts[2];
                    User user = new User();
                    user.setEmail(email);
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    users.add(user);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            // Handle the exception appropriately (e.g., log it)
        }
        return users;
    }
    public static User getUser(String emailAddress, String filePath) {
        List<User> users = readAll(filePath);
        for (User user : users) {
            if (user.getEmail().equals(emailAddress)) {
                return user;
            }
        }
        return null; // Return null if the user with the specified email address is not found
    }
}