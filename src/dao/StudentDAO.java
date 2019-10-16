package dao;

import model.Student;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
    private int noOfRecords;
    public StudentDAO () {}
    public List<Student> viewAllStudents(int offset, int noOfRecords) {
        String query = "select SQL_CALC_FOUND_ROWS * from ClassManagement.Student limit " + offset + ", " + noOfRecords;
        List<Student> students = new ArrayList<Student>();
        Student student = null;
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context)
                    initContext.lookup("java:comp/env");
            DataSource ds = (DataSource)
                    envContext.lookup("jdbc/ClassManagement");
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                students.add(new Student(
                        resultSet.getInt("StudentID"),
                        resultSet.getString("FirstName"),
                        resultSet.getString("LastName"),
                        resultSet.getString("Address"),
                        resultSet.getString("Telephone"),
                        resultSet.getString("Email"),
                        resultSet.getString("Password")
                ));
            }

            resultSet.close();
            resultSet = statement.executeQuery("select found_rows()");
            if (resultSet.next()) {
                this.noOfRecords = resultSet.getInt(1);
            }
        }
        catch (NamingException | SQLException e) {
            e.printStackTrace();
        }

        return students;
    }
    public int getNoOfRecords() {
        return noOfRecords;
    }
}