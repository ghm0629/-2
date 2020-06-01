package poly.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.chat.ChatDTO;
import poly.persistance.redis.IChatMapper;
import poly.service.IChatService;
import poly.util.CmmUtil;

@Service("ChatService")
public class ChatService implements IChatService{

	@Resource(name="ChatMapper")
	private IChatMapper chatMapper;
	
	// �α� ���� ���� �� �α� ����� ���� log4j �����ӿ�ũ�� �ڹ� ��ü
	private Logger log = Logger.getLogger(this.getClass());

	@Override
	public Set<String> getRoomList() throws Exception {
		log.info(this.getClass().getName() + "getRoomList Start!");
		
		return chatMapper.getRoomList();
	}

	@Override
	public List<ChatDTO> insertChat(ChatDTO pDTO) throws Exception {
		log.info(this.getClass().getName() + "insertChat Start!");
		
		// ä�� ���� ����
		if (chatMapper.insertChat(pDTO) == 1) {
			log.info("chatMapper.insertChat Success!");
			
			// ������ ����ð� ����(ä�� ���� 5�б����� ������ ����)
			chatMapper.setTimeOutMinute(CmmUtil.nvl(pDTO.getRoomKey()), 5);
		} else {
			log.info("chatMapper.insertChat Fail!");
		}
		
		// ä�� ���� ��������
		return getChat(pDTO);
	}

	@Override
	public List<ChatDTO> getChat(ChatDTO pDTO) throws Exception {
		log.info(this.getClass().getName() + "getChat Start!");
		return chatMapper.getChat(pDTO);
	}
	
	
}
