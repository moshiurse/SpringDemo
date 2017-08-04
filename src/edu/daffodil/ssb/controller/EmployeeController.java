package edu.daffodil.ssb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.daffodil.ssb.dao.Employee;
import edu.daffodil.ssb.services.EmployeeService;



@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;	
	
	
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	@RequestMapping(value="/employee")
	public String showPage(){
		return "employee";
	}
	
	@RequestMapping(value="/saveEmployee",method=RequestMethod.POST)
	public @ResponseBody String saveEmployee(@RequestBody Employee employee){		
		
		employeeService.saveEmployee(employee);
			
		return "!! Record Saved Successfully";
	}
	
	@RequestMapping(value="/showEmployeeList",method=RequestMethod.POST)
	public @ResponseBody List<Employee> showEmployee(){		
		
		return employeeService.showEmployee();
			
	}
	
	
	@RequestMapping(value="/showEmployeeById",method=RequestMethod.POST)
	public @ResponseBody Employee showEmployeeById(@RequestParam("empId") int empId){		
		
		return employeeService.showEmployeeById(empId);
			
	}
}
