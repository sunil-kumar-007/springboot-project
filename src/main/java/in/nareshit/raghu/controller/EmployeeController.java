package in.nareshit.raghu.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import in.nareshit.raghu.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@GetMapping("/show")
	public String showData(Model model) {
		//System.out.println(model.getClass().getName());
		/*model.addAttribute("eid", 200);
		model.addAttribute("ename", "AA");
		model.addAttribute("esal", 500.0);*/

		/*Employee emp = new Employee(101, "AA", "DEV");
		model.addAttribute("ob", emp);*/

		List<Employee> list =
				Arrays.asList(
						new Employee(101, "AA", "DEV"),
						new Employee(102, "AC", "QA"),
						new Employee(103, "BA", "DEV"),
						new Employee(104, "AT", "QA")
						);
		model.addAttribute("list", list);

		return "EmpHome";
	}
}
