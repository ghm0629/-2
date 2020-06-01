package poly.persistance.redis;

import java.util.List;
import java.util.Set;

import poly.dto.chat.ChatDTO;

public interface IChatMapper {

	// ä�� �� ����Ʈ ��������
	public Set<String> getRoomList() throws Exception;
	
	// ä�� ��ȭ �����ϱ�
	public int insertChat(ChatDTO pDTO) throws Exception;
	
	// ä�� ��ȭ ��������
	public List<ChatDTO> getChat(ChatDTO pDTO) throws Exception;
	
	// ������ ���� ��ȿ�ð��� �ð� ������ ����
	public boolean setTimeOutHour(String roomKey, int hours) throws Exception;
	
	// ������ ���� ��ȿ�ð��� ���� ������ ����
	public boolean setTimeOutMinute(String roomKey, int minutes) throws Exception;
	
}
