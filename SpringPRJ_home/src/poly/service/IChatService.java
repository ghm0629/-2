package poly.service;

import java.util.List;
import java.util.Set;

import poly.dto.chat.ChatDTO;

public interface IChatService {
	
	// ä�� �� ����Ʈ ��������
	public Set<String> getRoomList() throws Exception;
	
	// ä�� ��ȭ �����ϱ�
	public List<ChatDTO> insertChat(ChatDTO pDTO) throws Exception;
	
	// ä�� ��ȭ ��������
	public List<ChatDTO> getChat(ChatDTO pDTO) throws Exception;

}
