package poly.service;

import poly.dto.OcrDTO;
import poly.dto.OcrInfoDTO;

public interface IOcrService {
	
	// 이미지 파일로부터 문자 읽어오기
	OcrDTO getReadforImageText(OcrDTO pDTO) throws Exception;
	
	// OCR 이미지 파일의 정보 DB저장
	void InsertOcrInfo(OcrInfoDTO pDTO) throws Exception;
	
}
