package com.demo.service;

import java.util.List;

import com.demo.model.Employee;

public interface EmployeeService {
		
	public abstract Employee saveEmployee(Employee emp);
	public abstract Employee updateEmployee(Employee emp);
	public abstract Employee getEmployeeById(Long id);
	public abstract void deleteEmployeeById(Long id);
	public abstract List<Employee> getAllemployees();

}
