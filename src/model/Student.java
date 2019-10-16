package model;

public class Student {
    private int StudentID;
    private String FirstName;
    private String LastName;
    private String Address;
    private String Telephone;
    private String Email;
    private String Password;

    public Student () {}

    public Student(int StudentID, String FirstName, String LastName, String Address, String Telephone, String Email, String Password) {
        this.StudentID = StudentID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Telephone = Telephone;
        this.Email = Email;
        this.Password = Password;
    }

    public int getStudentID() {
        return StudentID;
    }

    public void setStudentID(int StudentID) {
        this.StudentID = StudentID;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String StudentID) {
        this.FirstName = StudentID;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhoneNumber() {
        return Telephone;
    }

    public void setPhoneNumber(String Telephone) {
        this.Telephone = Telephone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
}
