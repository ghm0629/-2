package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.IChatService;

/*
 * Controller �����ؾ߸� Spring �����ӿ�ũ���� Controller���� �ν� ����
 * �ڹ� ���� ���� ����
 */
@Controller
public class ChatController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	/*
	 * ����Ͻ� ����(�߿� ������ �����ϱ� ���� ���Ǵ� ���񽺸� �޸𸮿� ����(�̱��� ���� �����)
	 */
	@Resource(name = "ChatService")
	private IChatService chatService;
	
	/**
	 * ä�ù� �ʱ�ȭ��
	 */
	@RequestMapping(value="chat/index")
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info(this.getClass().getName() + ".index start!");
		
		log.info(this.getClass().getName() + ".index End!");
		
		return "/chat/index";
	}

}
