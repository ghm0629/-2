package poly.service;

import java.util.List;


public interface IFoodService {
	// 웹상(폴리텍 홈페이지)에서 식단 정보 가져오기
		int getFoodInfoFromWEB() throws Exception;
		
		List<String> getFoodDay() throws Exception;
		
}
