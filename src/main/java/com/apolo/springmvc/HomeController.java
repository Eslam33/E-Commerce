package com.apolo.springmvc;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.apolo.springmvc.entities.Student;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	@RequestMapping("/register")
	public String showRegisterationForm(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "register-form";
	}

	@RequestMapping(value = "/processForm", method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		System.out.println(student.getFirstName() + "// " + student.getLastName());
		if (result.hasErrors()) {
			System.out.println("errorrrrrrrrrrrrrrrrrrrrrrrrrr");
			return "register-form";
		} else {
			System.out.println("fineeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
			return "home";
		}
	}

}
