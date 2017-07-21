package gallery.service;

import java.util.*;

import org.apache.ibatis.session.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

@Component
public class GalleryService {
	@Autowired
	SqlSessionFactory fac;
	
	// galleryList
	public List<HashMap> galleryList(int num){
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("gallery.galleryList", (num-1)*4);
		ss.close();
		return list;
	}
}
