package com.majon.my_protein_care.protein;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/protein")
public class ProteinController {

	@GetMapping("/calculator_view")
	public String proteinCaclulator(HttpServletRequest request) {
		
			return "/protein/proteinCalculator";

	}
}
