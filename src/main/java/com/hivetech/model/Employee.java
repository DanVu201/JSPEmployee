package com.hivetech.model;

public class Employee {
    private int employeeId;
    private int employeeAge;
    private String employeeName;
    private String employeeCity;

    public Employee() {

    }

    public Employee(int employeeId, int employeeAge, String employeeName, String employeeCity) {
        this.employeeId = employeeId;
        this.employeeAge = employeeAge;
        this.employeeName = employeeName;
        this.employeeCity = employeeCity;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public int getEmployeeAge() {
        return employeeAge;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public String getEmployeeCity() {
        return employeeCity;
    }
}
