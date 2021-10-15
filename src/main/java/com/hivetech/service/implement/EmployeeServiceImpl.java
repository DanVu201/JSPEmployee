package com.hivetech.service.implement;

import com.hivetech.jdbc.Database;
import com.hivetech.jdbc.JDBC_Helper;
import com.hivetech.model.Employee;
import com.hivetech.service.EmployeeService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EmployeeServiceImpl implements EmployeeService {

    private static final Logger LOGGER = Logger.getLogger(EmployeeServiceImpl.class.getName());
    private static Connection connection = Database.getConnection();

    private static String SELECT_EMPLOYEES = "SELECT * FROM employees LIMIT 10;";
    private static String DELETE_EMPLOYEE_BY_TD = "DELETE FROM employees WHERE Id = ?;";
    private static String GET_EMPLOYEE_BY_ID = "SELECT * FROM employees WHERE Id = ?;";
    private static String UPDATE_EMPLOYEE = "UPDATE employees SET Age = ?, Name = ?, City = ? WHERE Id = ?;";
    private static String INSERT_EMPLOYEE = "INSERT INTO employees(Id, Age, Name, City) VALUES(?, ?, ?, ?);";

    @Override
    public List<Employee> employees() {
        List<Employee> list = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            statement = connection.prepareStatement(SELECT_EMPLOYEES);
            rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("Id");
                int age = rs.getInt("Age");
                String name = rs.getString("Name");
                String city = rs.getString("City");
                Employee tempEmployee = new Employee(id, age, name, city);
                list.add(tempEmployee);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, e.getMessage());
        } finally {
            JDBC_Helper.closeResultSet(rs);
            JDBC_Helper.closeStatement(statement);
        }
        return list;
    }



    @Override
    public Employee getEmployeeById(int employeeId) {
        Employee result = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            statement = connection.prepareStatement(GET_EMPLOYEE_BY_ID);
            statement.setInt(1, employeeId);

            rs = statement.executeQuery();
            if(rs.next()) {
                result = new Employee(
                        rs.getInt("Id"),
                        rs.getInt("Age"),
                        rs.getString("Name"),
                        rs.getString("City"));
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, e.getMessage());
        } finally {
            JDBC_Helper.closeResultSet(rs);
            JDBC_Helper.closeStatement(statement);
        }
        return result;
    }

    @Override
    public boolean add(Employee employee) {
        boolean isInserted = false;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(INSERT_EMPLOYEE);
            statement.setInt(1, employee.getEmployeeId());
            statement.setInt(2, employee.getEmployeeAge());
            statement.setString(3, employee.getEmployeeName());
            statement.setString(4, employee.getEmployeeCity());
            isInserted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, e.getMessage());
            return false;
        } finally {
            JDBC_Helper.closeStatement(statement);
        }
        return isInserted;
    }

    @Override
    public boolean update(Employee employee) {
        return false;
    }

    @Override
    public boolean delete(int employeeId) {
        boolean isDeleted = false;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(DELETE_EMPLOYEE_BY_TD);
            statement.setInt(1, employeeId);
            isDeleted = statement.executeUpdate() > 1;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, e.getMessage());
            return false;
        } finally {
            JDBC_Helper.closeStatement(statement);
        }
        return isDeleted;
    }
}
