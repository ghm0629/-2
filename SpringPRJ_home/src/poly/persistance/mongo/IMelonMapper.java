package poly.persistance.mongo;

import java.util.List;

import poly.dto.MelonDTO;

public interface IMelonMapper {

	/**
	 * MongoDB �÷��� �����ϱ�
	 * 
	 * @param colNm �����ϴ� �÷��� �̸�
	 */
	public boolean createCollection(String colNm) throws Exception;
	
	/**
	 * MongoDB ������ �����ϱ�
	 * 
	 * @param pDTO ����� ����
	 */
	public int insertRank(List<MelonDTO> pList, String colNm) throws Exception;

	/**
	 * MongoDB ��� ������ ��������
	 * 
	 * @param colNm
	 */
	List<MelonDTO> getRank(String colNm) throws Exception;
	
}
