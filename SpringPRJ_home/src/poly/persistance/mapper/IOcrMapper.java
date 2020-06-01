package poly.persistance.mapper;

import config.Mapper;
import poly.dto.OcrInfoDTO;

@Mapper("OcrMapper")
public interface IOcrMapper {

	void InsertOcrInfo(OcrInfoDTO pDTO)throws Exception;
}
