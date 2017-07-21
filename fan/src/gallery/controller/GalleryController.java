package gallery.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import gallery.service.*;

@Controller
@RequestMapping("/gallery")
public class GalleryController {
	@Autowired
	GalleryService gs;

	// gallery index
	@RequestMapping("")
	public ModelAndView gallery(){
		ModelAndView mav = new ModelAndView("/gallery/gallery.jsp");
		mav.addObject("menu", "gallery");
		List<HashMap> galleryList = gs.galleryList(1);
		for(int i=0; i<galleryList.size(); i++){
			HashMap m = galleryList.get(i);
			m.put("ran", Math.random());
			galleryList.set(i, m);
		}
		mav.addObject("galleryList", galleryList);
		return mav;
	}
	
	// galler more
	@RequestMapping("/more/{num}")
	@ResponseBody
	public ModelAndView more(@PathVariable(name="num")int num){
		ModelAndView mav = new ModelAndView("/gallery/more.jsp");
		mav.addObject("num", num);
		List<HashMap> galleryList = gs.galleryList(num);
		for(int i=0; i<galleryList.size(); i++){
			HashMap m = galleryList.get(i);
			m.put("ran", Math.random());
			galleryList.set(i, m);
		}
		mav.addObject("galleryList", galleryList);
		return mav;
	}
}
