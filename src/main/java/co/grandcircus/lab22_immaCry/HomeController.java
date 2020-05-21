package co.grandcircus.lab22_immaCry;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home(Model model) {
		
		List<SpecialtyPizza> specialtyPizzas = new ArrayList<>();
		specialtyPizzas.add(new SpecialtyPizza("anchovy", "Anchovy Lover's", 15));
		specialtyPizzas.add(new SpecialtyPizza("paleo", "Paleo Pizza", 16));
		specialtyPizzas.add(new SpecialtyPizza("dessert", "Dessert Pizza", 17));
		
		model.addAttribute("specPizzas", specialtyPizzas);
		return "index";
	}

}
