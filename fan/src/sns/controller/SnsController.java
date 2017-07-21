package sns.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/sns")
public class SnsController {

	// sns index
	@RequestMapping("")
	public ModelAndView sns(){
		ModelAndView mav = new ModelAndView("/sns/sns.jsp");
		mav.addObject("menu", "sns");
		return mav;
	}
}
