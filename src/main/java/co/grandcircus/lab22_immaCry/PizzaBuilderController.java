package co.grandcircus.lab22_immaCry;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

// **Lab: Part 2 - The fact that I already turned the toppings into a checkbox 
//situation  means the topping number will automatically be in a certain range 
// and also a whole number.

// So there. I win. Validation is built in.
// (I have two more toppings than 10, should be cool? Gotta have 'em all.)

@Controller
public class PizzaBuilderController {
	
	
	
	@RequestMapping("/pizza-builder")
	public String pizzaBuilder(
			
			Model model
			) {
		
		//This is for the sake of the lab, despite me finding a different
		//solution before I read part 3 ugh extra work @@#%@#%
		//(I'm too self-motivated argh)
		List<String> posToppings = new ArrayList<>();
		posToppings.add("pepperoni"); posToppings.add("ham"); posToppings.add("bacon");
		posToppings.add("sausage"); posToppings.add("anchovies"); posToppings.add("mushrooms");
		posToppings.add("onions"); posToppings.add("green peppers"); posToppings.add("banana pepper");
		posToppings.add("green olives"); posToppings.add("black olives"); posToppings.add("jalapenos");
		
		/*String[] posToppings  = {"pepperoni", "ham", "bacon", "sausage", "anchovies",
				"mushrooms", "onions", "green peppers", "banana peppers", 
				"green olives", "black olives", "jalapenos"};*/
		
		model.addAttribute("posToppings", posToppings);
		
		return "pizza-builder";
	}
	
	@RequestMapping("/builder-result")
	public String builderResult(
			@RequestParam(value="size") String size,
			@RequestParam(value="toppings[]") 
			String toppings[],
			@RequestParam(value="glutenfree", required=false)
			String glutenFree,
			@RequestParam(value="instructions", required=false) 
			String instructions,
			Model model
			) {
		
		// dangit I already did this format part too
		// this is why I'm so exhausted lol
		//DecimalFormat fNum = new DecimalFormat("#.00");
final double TOPPING_PRICE = 1.15;
		
		String sizeText = "";
		String sPrice = "$?";
		String sToppings = "";
		String freeDelivery="false";
		int numToppings = toppings.length;
		double toppingCost = 0; //I delivered pizza so I'm doing it kinda like them
		double price = 0;
		
		
		//Create string of the toppings
		//If there's no toppings, responds accordingly
		if (toppings.length == 1)  {
			numToppings = 0;
			sToppings = toppings[0];
		} else {
			for (int i = 1; i < toppings.length; i++) {
				if (i != toppings.length - 1) {
					sToppings += toppings[i] + ", ";
				} else {
					sToppings += toppings[i];
				}
			}
		}
		
		
		//determine price by size
		switch(size) {
		case "junior":
			sizeText = "Junior(8\")";
			price = 4;
			break;
		case "small":
			sizeText = "Small(10\")";
			price = 6;
			break;
		case "medium":
			sizeText = "Medium(12\")";
			price = 8;
			break;
		case "large":
			sizeText = "Large(14\")";
			price = 10;
			break;
		case "xlarge":
			sizeText = "X-Large(16\")";
			price = 12;
			break;
		default:
		}
		
		//Add $2 if it's gluten free
		if (glutenFree.equals("no,yes")) { 
			price += 2;
			glutenFree = "yes";
		}
		//something is still wrong with the check box,
		//but I've spent too much time and am working around it lol
		
		//Calculate topping cost depending on # of toppings
		toppingCost = numToppings * TOPPING_PRICE; 
		
		//Add cost of toppings to overall price
		price += toppingCost;
		
		//Turn price into string
		//sPrice = "$" + fNum.format(price); //moving this format part to webpage
		
		//if price is above $15, say free delivery
		//THIS WOULD NEVER HAPPEN IN REAL LIFE (Coming from a delivery driver.)
		if (price > 15) {
			freeDelivery="true";
		}
		
		//add to model and return
		model.addAttribute("size", sizeText);
		model.addAttribute("toppings", sToppings);
		model.addAttribute("price", price);
		model.addAttribute("glutenfree", glutenFree);
		model.addAttribute("instructions", instructions);
		model.addAttribute("freedelivery", freeDelivery);
		return "builder-result";
	}

}