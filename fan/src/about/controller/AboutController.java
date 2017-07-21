package about.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import admin.service.*;

@Controller
@RequestMapping("/about")
public class AboutController {
	@Autowired
	AdminService as;

	// about index
	@RequestMapping("")
	public ModelAndView about(){
		ModelAndView mav = new ModelAndView("/about/about.jsp");
		mav.addObject("menu", "about");
		List<HashMap> list = as.about();
		mav.addObject("about", list.get(0));
		List<String> about = new Vector<>();
		about.add(list.get(0).get("img1").toString());
		about.add(list.get(0).get("img2").toString());
		about.add(list.get(0).get("img3").toString());
		mav.addObject("aboutPic", about);
		return mav;
	}
}
