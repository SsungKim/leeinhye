package contact.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/contact")
public class ContactController {

	// contact index
	@RequestMapping("")
	public ModelAndView contact(){
		ModelAndView mav = new ModelAndView("/contact/contact.jsp");
		mav.addObject("menu", "contact");
		return mav;
	}
}
