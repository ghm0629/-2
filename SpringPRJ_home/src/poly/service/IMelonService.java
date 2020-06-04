package poly.service;

import java.util.List;

import poly.dto.MelonDTO;

public interface IMelonService {

	/**
	 * ��� Top100 ���� �����ϱ�
	 */
	public int collectMelonRank() throws Exception;

	/**
	 * MongoDB ��� ������ ��������
	 */
	public List<MelonDTO> getRank() throws Exception;

}
