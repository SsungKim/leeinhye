package career.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import career.service.*;

@Controller
@RequestMapping("/career")
public class CareerController {
	@Autowired
	CareerService cs;

	// career index
	@RequestMapping("")
	public ModelAndView career(){
		ModelAndView mav = new ModelAndView("/career/career.jsp");
		mav.addObject("menu", "career");
		List<HashMap> careerList = cs.careerList();
		mav.addObject("careerList", careerList);
		List<HashMap> careerPic = cs.careerPic();
		mav.addObject("careerPic", careerPic);
		HashMap<String, String> drama = new HashMap<>();
		HashMap<String, String> movie = new HashMap<>();
		HashMap<String, String> cf = new HashMap<>();
		HashMap<String, String> mv = new HashMap<>();
		for(HashMap m : careerPic){
			String type = m.get("type").toString();
			switch(type){
			case "drama":
				drama = m;
				break;
			case "movie":
				movie = m;
				break;
			case "cf":
				cf = m;
				break;
			case "mv":
				mv = m;
				break;
			}
		}
		mav.addObject("drama", drama);
		mav.addObject("movie", movie);
		mav.addObject("cf", cf);
		mav.addObject("mv", mv);
		List<String> dramaList = new Vector<>();
		for(int i=1; i<=20; i++){
			if(drama.get("img"+i)!=null){
				dramaList.add(drama.get("img"+i));
			}
		}
		List<String> movieList = new Vector<>();
		for(int i=1; i<=20; i++){
			if(movie.get("img"+i)!=null){
				movieList.add(movie.get("img"+i));
			}
		}
		List<String> cfList = new Vector<>();
		for(int i=1; i<=20; i++){
			if(cf.get("img"+i)!=null){
				cfList.add(cf.get("img"+i));
			}
		}
		List<String> mvList = new Vector<>();
		for(int i=1; i<=20; i++){
			if(mv.get("img"+i)!=null){
				mvList.add(mv.get("img"+i));
			}
		}
		mav.addObject("dramaList", dramaList);
		mav.addObject("movieList", movieList);
		mav.addObject("cfList", cfList);
		mav.addObject("mvList", mvList);
		return mav;
	}
}
