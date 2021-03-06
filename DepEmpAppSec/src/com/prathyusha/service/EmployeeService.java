package com.prathyusha.service;

import java.util.List;

import com.prathyusha.dto.Employee;

public interface EmployeeService {
	
	public void insertEmployee(Employee emp);

	public Employee updateEmployee(Employee emp);

	public void deleteEmployee(int id);

	public Employee getEmployees(int empId);

	public List<Employee> getAllEmployees();
	public List<Employee> getEmployeesByDept(int deptId);


}
