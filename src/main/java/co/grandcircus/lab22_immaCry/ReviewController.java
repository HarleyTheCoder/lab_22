package co.grandcircus.lab22_immaCry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {

	//Review form
	@RequestMapping("/review-form") //this will render form on page
	public String formPage() {
		return "review-form"; //.jsp, we already created it
	}
	
	//Review confirmation Page
	@RequestMapping("/confirm-review")
	public String confirmReview(
			@RequestParam String name,
			@RequestParam String comment,
			@RequestParam String rating,
			Model model) {
		
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		
		return "confirm-review"; //.jsp, we already created it
	}
	
}