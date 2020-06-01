package poly.dto;

public class OcrInfoDTO {
	
	private String seq; // 순번
	private String save_file_name; // 서버에 저장된 파일 이름
	private String save_file_path; // 서버에 저장된 파일 경로
	private String org_file_name; // 원래 파일 이름
	private String ext; // 파일 확장자
	private String ocr_text; // 이미지 인식 문자열
	private String reg_id; // 최초 등록자
	private String reg_dt; // 최초 등록일
	private String chg_id; // 최근 수정자
	private String chg_dt; // 최근 수정일
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getSave_file_name() {
		return save_file_name;
	}
	public void setSave_file_name(String save_file_name) {
		this.save_file_name = save_file_name;
	}
	public String getSave_file_path() {
		return save_file_path;
	}
	public void setSave_file_path(String save_file_path) {
		this.save_file_path = save_file_path;
	}
	public String getOrg_file_name() {
		return org_file_name;
	}
	public void setOrg_file_name(String org_file_name) {
		this.org_file_name = org_file_name;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public String getOcr_text() {
		return ocr_text;
	}
	public void setOcr_text(String ocr_text) {
		this.ocr_text = ocr_text;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getChg_id() {
		return chg_id;
	}
	public void setChg_id(String chg_id) {
		this.chg_id = chg_id;
	}
	public String getChg_dt() {
		return chg_dt;
	}
	public void setChg_dt(String chg_dt) {
		this.chg_dt = chg_dt;
	}
	
	
	
	
	
	
}
