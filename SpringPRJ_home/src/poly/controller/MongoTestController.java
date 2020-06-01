package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.service.IMongoTestService;

/*
 * Controller �����ؾ߸� Spring �����ӿ�ũ���� Controller���� �ν� ����
 * �ڹ� ���� ���� ����
 */
@Controller
public class MongoTestController {
	private Logger log = Logger.getLogger(this.getClass());
	
	/*
	 * ����Ͻ� ����(�߿� ������ �����ϱ� ���� ���Ǵ� ���񽺸� �޸𸮿� ����(�̱������� �����)
	 */
	@Resource(name="MongoTestService")
	private IMongoTestService mongoTestService;
	
	/**
	 * �÷��� ���� �׽�Ʈ
	 */
	@RequestMapping(value="mongo/test")
	@ResponseBody
	public String test(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info(this.getClass().getName() + ".test Start!!");
		
		mongoTestService.createCollection();
		
		log.info(this.getClass().getName() + ".test End");
		
		return "success";
		
	}
}
