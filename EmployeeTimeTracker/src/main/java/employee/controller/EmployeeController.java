package employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import employee.model.User;
import employee.service.UserService;


@Controller
public class EmployeeController {
	
	static final String ADMIN_USERNAME = "project_lead";
	static final String ADMIN_PASSWORD = "root1234";
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value= {"/"})
	public String home() {
		System.out.println("Hello World");
		return "01_index";
	}
	
	//logins for lead and associate
	@GetMapping("/leadlogin")
	public String leadlogin() {
		System.out.println("Entering the lead login page");
		return "02_leadlogin";
	}
	@GetMapping("/associatelogin")
	public String associatelogin() {
		System.out.println("Entering the associate login page");
		return "03_associatelogin";
	}
	
	//for login to lead homepage
	@RequestMapping(value="/leadview",method=RequestMethod.POST)
	public String checkLeadLogin(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			Model model) {
		System.out.println(username);
		System.out.println(password);
		if(username.equals(ADMIN_USERNAME) && password.equals(ADMIN_PASSWORD)) {
			model.addAttribute("username",username);
			return "04_leadview";
		}
		else {
			model.addAttribute("error","Invalid credentials");
			return "02_leadlogin";
		} 

	} 
	
	//continuing with userservice
	@RequestMapping(path = "/leadview", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute("user") User user, Model model) {
		this.userService.createUser(user);
		return "04_leadview";
	}
	

}
