package admin.service;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.ibatis.session.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.multipart.*;

@Component
public class AdminService {
	@Autowired
	SqlSessionFactory fac;
	@Autowired
	ServletContext application;
	
	// 이미지 저장
	public String imgSave(MultipartFile file) {
		if(file.isEmpty()){
			return null;
		}
		try{
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File f = new File(application.getRealPath("/file/main"), uuid+extension);
			file.transferTo(f);
			return uuid+extension;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	// 이미지 등록
	public boolean uploadImg(String[] imgAr, String[] img) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		int mapNum = 1;
		if(imgAr.length > 0){
			for(int i=0; i<imgAr.length; i++){
				if(imgAr[i].equals("aa")){
					continue;
				}
				map.put("img"+(mapNum), imgAr[i]);
				mapNum++;
			}
		}
		int tmp = 0;
		if(img.length > 0){
			for(int i=imgAr.length; i<imgAr.length+img.length; i++){
				map.put("img"+(mapNum), img[tmp]);
				tmp++;
				mapNum++;
			}
		}
		int n = ss.update("admin.uploadImg", map);
		if(n>0){
			ss.commit();
			ss.close();
			return true;
		} else {
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// imgList
	public HashMap<String, String> imgList() {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = ss.selectOne("admin.imgList");
		ss.close();
		return map;
	}

	// login
	public boolean login(String id, String pw, HttpSession session) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", pw);
		List<HashMap> list = ss.selectList("admin.login", map);
		ss.close();
		if(list.size() > 0){
			session.setAttribute("login", list.get(0));
			return true;
		} else {
			return false;
		}
	}

	// about
	public List<HashMap> about() {
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("admin.about");
		for(int i=0; i<list.size(); i++){
			String edu = list.get(i).get("education").toString();
			edu = edu.replace("\n", "<br>");
			list.get(i).put("education", edu);
			list.set(i, list.get(i));
		}
		ss.close();
		return list;
	}

	// about img save
	public String aboutSave(MultipartFile file) {
		if(file.isEmpty()){
			return null;
		}
		try{
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File f = new File(application.getRealPath("/file/about"), uuid+extension);
			file.transferTo(f);
			return uuid+extension;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	// about db upload
	public boolean aboutUpload(String[] imgAr, String[] img, String born, String height, String weight, String agency, String education) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("born", born);
		map.put("height", height);
		map.put("weight", weight);
		map.put("agency", agency);
		map.put("education", education);
		int mapNum = 1;
		if(imgAr.length > 0){
			for(int i=0; i<imgAr.length; i++){
				if(imgAr[i].equals("aa")){
					continue;
				}
				map.put("img"+(mapNum), imgAr[i]);
				mapNum++;
			}
		}
		int tmp = 0;
		if(img.length > 0){
			for(int i=imgAr.length; i<imgAr.length+img.length; i++){
				map.put("img"+(mapNum), img[tmp]);
				tmp++;
				mapNum++;
			}
		}
		try{
			ss.insert("admin.aboutUpload", map);
			ss.commit();
			ss.close();
			return true;
		} catch(Exception e){
			e.printStackTrace();
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// career delete
	public boolean careerDelete(String num) {
		SqlSession ss = fac.openSession();
		int n = ss.delete("admin.careerDelete", num);
		if(n>0){
			ss.commit();
			ss.close();
			return true;
		} else {
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// career add
	public boolean careerAdd(String type, String syear, String eyear, String content) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("type", type);
		map.put("syear", syear);
		map.put("eyear", eyear);
		map.put("content", content);
		try{
			ss.insert("admin.careerAdd", map);
			ss.commit();
			ss.close();
			return true;
		} catch(Exception e){
			e.printStackTrace();
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// career pic file save
	public String careerPic(MultipartFile file) {
		if(file.isEmpty()){
			return null;
		}
		try{
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File f = new File(application.getRealPath("/file/career"), uuid+extension);
			file.transferTo(f);
			return uuid+extension;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	// career pic db upload
	public boolean careerPicUpload(String[] img, String type, String[] imgAr) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("type", type);
		int mapNum = 1;
		if(imgAr.length > 0){
			for(int i=0; i<imgAr.length; i++){
				if(imgAr[i].equals("aa")){
					continue;
				}
				map.put("img"+(mapNum), imgAr[i]);
				mapNum++;
			}
		}
		int tmp = 0;
		if(img.length > 0){
			for(int i=imgAr.length; i<imgAr.length+img.length; i++){
				map.put("img"+(mapNum), img[tmp]);
				tmp++;
				mapNum++;
			}
		}
		int n = ss.update("admin.careerPicUpdate", map);
		if(n > 0){
			ss.commit();
			ss.close();
			return true;
		} else {
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// gallery List
	public List<HashMap> galleryList() {
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("admin.galleryList");
		ss.close();
		return list;
	}
	
	// gallery img save
	public String gallerySave(MultipartFile file) {
		if(file.isEmpty()){
			return null;
		}
		try{
			String uuid = UUID.randomUUID().toString().substring(0, 8);
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File f = new File(application.getRealPath("/file/gallery"), uuid+extension);
			file.transferTo(f);
			return uuid+extension;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	// gallery db upload
	public int galleryUpload(String[] imgAr, String[] img) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		ss.delete("admin.galleryDelete");
		int mapNum = 0;
		if(imgAr.length > 0){
			a:for(int i=0; i<imgAr.length; i++){
				if(imgAr[i].equals("aa")){
					continue;
				}
				map.put("img"+(mapNum+1), imgAr[i]);
				mapNum++;
			}
		}
		int tmp = 0;
		if(img.length > 0){
			for(int i=imgAr.length; i<imgAr.length+img.length; i++){
				map.put("img"+(mapNum+1), img[tmp]);
				mapNum++;
				tmp++;
			}
		}
		int dbNum = 0;
		for(int i=0; i<mapNum; i++){
			try{
				ss.insert("admin.galleryUpload", map.get("img"+(i+1)));
				dbNum++;
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		if(dbNum == mapNum){
			ss.commit();
			ss.close();
			return 0;
		} else {
			ss.rollback();
			ss.close();
			return 1;
		}
	}

	// gallery count
	public int galleryNum() {
		SqlSession ss = fac.openSession();
		int n = ss.selectOne("admin.galleryNum");
		ss.close();
		return n;
	}
}
