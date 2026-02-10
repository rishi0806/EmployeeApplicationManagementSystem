package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.demo.model.Employee;
import com.demo.service.EmployeeService;

@Controller //this class will acts as a controller class 
public class EmployeeController {

	private EmployeeService empService;//injection field
	
	@Autowired  //construction injection with wiring
	public EmployeeController(EmployeeService empService) {
		this.empService=empService;
	}
	
	//handler mapper mapped to this method to display list of employees
	@GetMapping("/employees")
	public String listEmployees(Model model)
	{
		model.addAttribute("employees", empService.getAllemployees());
		
		return "employees";  //jsp page
	}
	
	
	//create a new employee form 
	@GetMapping("/employees/new")
	public String createForm(Model model)
	{
		Employee employee= new Employee();
		model.addAttribute("employee", employee);
		
		return "create_employee"; //jsp page
	}
	
	//save employee data 
	@PostMapping("/employees")
	public String saveEmployee(@ModelAttribute("employee") Employee employee)
	{
		empService.saveEmployee(employee);
		
		return "redirect:/employees";
	}
	
	//edit form details
	@GetMapping("/employees/edit/{id}") //id
	public String editForm(@PathVariable Long id,Model model)
	{
		model.addAttribute("employee", empService.getEmployeeById(id));
		
		return "edit_employee"; //jsp file 
	}
	
	//updating employee 
	@PostMapping("/employees/{id}")
	public String updateEmployee(@ModelAttribute("employee") Employee employee,
			  @PathVariable Long id,Model model) {
		
		Employee existEmp=empService.getEmployeeById(id);
		existEmp.setId(id);
		existEmp.setFirstName(employee.getFirstName());
		existEmp.setLastName(employee.getLastName());
		existEmp.setEmail(employee.getEmail());
		existEmp.setDepartment(employee.getDepartment());
		
		empService.updateEmployee(existEmp);
		return "redirect:/employees";
	}
	
	@GetMapping("/employees/delete/{id}")
	public String deleteEmploye(@PathVariable Long id)
	{
		empService.deleteEmployeeById(id);
		return "redirect:/employees";
	}
	
}
