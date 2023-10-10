package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dateofbirth;
    private String hearAbout;
    private String announcement;
    private String contact;
    public User() {
        firstName = "";
        lastName = "";
        email = "";
    }

    public User(String firstName, String lastName, String email,String dateofbirth,
                String hearAbout,String announcement,String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.announcement=announcement;
        this.dateofbirth=dateofbirth;
        this.contact=contact;
        this.hearAbout=hearAbout;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = firstName;
    }

    public String getHearAbout(){return hearAbout;}
    public void setHearAbout(String hearAbout){this.hearAbout=hearAbout;}
    public String getAnnouncement(){return announcement;}
    public void setAnnouncement(String announcement){this.announcement=announcement;}
    public String getContact(){return contact;}
    public void setContact(String contact){this.contact=contact;}

}
