package com.majon.my_protein_care.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@GetMapping("/overall_view")
	public String mainView() {
		
		return "/main/mainView";
	}
}
