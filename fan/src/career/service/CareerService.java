package career.service;

import java.util.*;

import org.apache.ibatis.session.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

@Component
public class CareerService {
	@Autowired
	SqlSessionFactory fac;
	
	// careerList
	public List<HashMap> careerList(){
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("career.careerList");
		ss.close();
		return list;
	}

	// career Pic List
	public List<HashMap> careerPic() {
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("career.picList");
		ss.close();
		return list;
	}
}
