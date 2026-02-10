package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.EmmployeeDao;
import com.demo.model.Employee;
@Service //@Component
public  class EmployeeServiceImpl implements EmployeeService{

	//dao layer injecting (constructor injection)
	private EmmployeeDao dao;		//employee dao field created
	
	@Autowired
	public EmployeeServiceImpl(EmmployeeDao dao) {
		this.dao=dao;		//constructor injection
	}
	
	@Override
	public Employee saveEmployee(Employee emp) {
		
		return dao.save(emp);
	}

	@Override
	public Employee updateEmployee(Employee emp) {
		
		return dao.save(emp);
	}



	@Override
	public void deleteEmployeeById(Long id) {
		dao.deleteById(id);
		
	}

	@Override
	public List<Employee> getAllemployees() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Employee getEmployeeById(Long id) {
		// TODO Auto0-generated method stub
		return dao.findById(id).get();
			}

}
