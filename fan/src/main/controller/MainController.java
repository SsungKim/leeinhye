package main.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import admin.service.*;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	AdminService as;

	// index
	@RequestMapping("")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("/main/index.jsp");
		HashMap<String, String> img = as.imgList();
		List<String> imgList = new Vector<>();
		for(int i=1; i<=7; i++){
			if(img.get("img"+i)!=null){
				imgList.add(img.get("img"+i));
			}
		}
		mav.addObject("img", imgList);
		return mav;
	}
	
	// login page
	@RequestMapping("/login")
	public String login(){
		return "/admin/login.jsp";
	}
	
	// main slide upload
	@RequestMapping("/upload")
	public ModelAndView upload(){
		ModelAndView mav = new ModelAndView("/admin/upload.jsp");
		HashMap<String, String> img = as.imgList();
		List<String> imgList = new Vector<>();
		for(int i=1; i<=7; i++){
			if(img.get("img"+i)!=null){
				imgList.add(img.get("img"+i));
			}
		}
		mav.addObject("img", imgList);
		return mav;
	}
}
