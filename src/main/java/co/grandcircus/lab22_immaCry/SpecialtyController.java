package co.grandcircus.lab22_immaCry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpecialtyController {

	//Specialty Pizza page
	@RequestMapping("/specialty")
	public String specialtyPage(
			@RequestParam String name,
			@RequestParam double price,
			Model model) {
		
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "specialty";
	}
	
}