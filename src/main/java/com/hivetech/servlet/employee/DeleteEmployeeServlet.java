package com.hivetech.servlet.employee;

import com.hivetech.service.EmployeeService;
import com.hivetech.service.implement.EmployeeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/employee/delete")
public class DeleteEmployeeServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(DeleteEmployeeServlet.class.getName());

    private EmployeeService employeeService;

    public void init() {
        employeeService = new EmployeeServiceImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doDelete(request, response);
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int employeeId = Integer.parseInt(request.getParameter("employeeID"));
        boolean isDeleted = employeeService.delete(employeeId);

        response.sendRedirect("/employee/list");

        LOGGER.info("Action: " + request.getServletPath() + " | isDelete: " + isDeleted + " | employeeId: " + employeeId);
    }

}
