package admin.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.*;

import admin.service.*;
import career.service.*;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService as;
	@Autowired
	CareerService cs;
	
	// upload
	@RequestMapping("/upload")
	@ResponseBody
	public boolean upload(MultipartHttpServletRequest req, @RequestParam(name="imgAr")String[] imgAr){
		Iterator<String> it = req.getFileNames();
		String[] img = new String[7];
		int num = 0;
		for(int i=0; i<img.length; i++){
			String uuid = "1";
			if(it.hasNext()){
				MultipartFile file = req.getFile(it.next());
				if(file != null){
					uuid = as.imgSave(file);
				}
			}
			img[num] = uuid;
			num++;
		}
		int size = 0;
		for(String s : img){
			if(!s.equals("1")){
				size++;
			}
		}
		String[] img2 = new String[size];
		for(int i=0; i<img2.length; i++){
			img2[i] = img[i];
		}
		return as.uploadImg(imgAr, img2);
	}
	
	// login
	@RequestMapping("/login/{id}/{pw}")
	@ResponseBody
	public boolean login(@PathVariable(name="id")String id, @PathVariable(name="pw")String pw, HttpSession session){
		return as.login(id, pw, session);
	}
	
	// about
	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView mav = new ModelAndView("/admin/about.jsp");
		mav.addObject("menu", "about");
		List<HashMap> list = as.about();
		for(int i=0; i<list.size(); i++){
			String edu = list.get(i).get("education").toString();
			edu = edu.replace("<br>", "\n");
			list.get(i).put("education", edu);
			list.set(i, list.get(i));
		}
		mav.addObject("about", list.get(0));
		List<String> about = new Vector<>();
		about.add(list.get(0).get("img1").toString());
		about.add(list.get(0).get("img2").toString());
		about.add(list.get(0).get("img3").toString());
		mav.addObject("aboutPic", about);
		return mav;
	}
	
	// about upload
	@RequestMapping("/aboutUpload")
	@ResponseBody
	public boolean aboutUpload(MultipartHttpServletRequest req, @RequestParam(name="about_born")String born,
												@RequestParam(name="about_height")String height, @RequestParam(name="about_weight")String weight,
												@RequestParam(name="about_agency")String agency, @RequestParam(name="about_education")String education,
												@RequestParam(name="imgAr")String[] imgAr){
		Iterator<String> it = req.getFileNames();
		String[] img = new String[3];
		int num = 0;
		for(int i=0; i<img.length; i++){
			String uuid = "1";
			if(it.hasNext()){
				MultipartFile file = req.getFile(it.next());
				if(file != null){
					uuid = as.aboutSave(file);
				}
			}
			img[num] = uuid;
			num++;
		}
		int size = 0;
		for(String s : img){
			if(!s.equals("1")){
				size++;
			}
		}
		String[] img2 = new String[size];
		for(int i=0; i<img2.length; i++){
			img2[i] = img[i];
		}
		return as.aboutUpload(imgAr, img2, born, height, weight, agency, education);
	}
	
	// career
	@RequestMapping("/career")
	public ModelAndView career(){
		ModelAndView mav = new ModelAndView("/admin/career.jsp");
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
	
	// career delete
	@RequestMapping("/career/delete/{num}")
	@ResponseBody
	public boolean delete(@PathVariable(name="num")String num){
		return as.careerDelete(num);
	}
	
	// career add
	@RequestMapping("/career/add/{type}/{syear}/{eyear}/{content}")
	@ResponseBody
	public boolean add(@PathVariable(name="type")String type, @PathVariable(name="syear")String syear,
									@PathVariable(name="eyear")String eyear, @PathVariable(name="content")String content){
		return as.careerAdd(type, syear, eyear, content);
	}
	
	// career pic save
	@RequestMapping("/career/pic/{type}")
	@ResponseBody
	public boolean careerPic(MultipartHttpServletRequest req, @PathVariable(name="type")String type,
											@RequestParam(name="imgAr")String[] imgAr){
		Iterator<String> it = req.getFileNames();
		String[] img = new String[20];
		int num = 0;
		for(int i=0; i<img.length; i++){
			String uuid = "1";
			if(it.hasNext()){
				MultipartFile file = req.getFile(it.next());
				if(file != null){
					uuid = as.careerPic(file);
				}
			}
			img[num] = uuid;
			num++;
		}
		int size = 0;
		for(String s : img){
			if(!s.equals("1")){
				size++;
			}
		}
		String[] img2 = new String[size];
		for(int i=0; i<img2.length; i++){
			img2[i] = img[i];
		}
		return as.careerPicUpload(img2, type, imgAr);
	}
	
	// gallery
	@RequestMapping("/gallery")
	public ModelAndView gallery(){
		ModelAndView mav = new ModelAndView("/admin/gallery.jsp");
		mav.addObject("menu", "gallery");
		List<HashMap> list = as.galleryList();
		mav.addObject("galleryList", list);
		return mav;
	}
	
	// gallery upload
	@RequestMapping("/galleryUpload")
	@ResponseBody
	public int galleryUpload(MultipartHttpServletRequest req, @RequestParam(name="imgAr")String[] imgAr){
		Iterator<String> it = req.getFileNames();
		String[] img = new String[1000];
		int num = 0;
		for(int i=0; i<img.length; i++){
			String uuid = "1";
			if(it.hasNext()){
				String s = it.next();
				MultipartFile file = req.getFile(s);
				if(file != null){
					uuid = as.gallerySave(file);
				}
			}
			img[num] = uuid;
			num++;
		}
		int size = 0;
		for(String s : img){
			if(!s.equals("1")){
				size++;
			}
		}
		String[] img2 = new String[size];
		for(int i=0; i<img2.length; i++){
			img2[i] = img[i];
		}
		return as.galleryUpload(imgAr, img2);
	}
	
	// gallery count
	@RequestMapping("/galleryNum")
	@ResponseBody
	public int galleryNum(){
		return as.galleryNum();
	}
}
