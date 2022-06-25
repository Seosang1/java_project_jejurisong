package vo;

public class ReplyInfo {

	private int reply_idx; // 리뷰 번호
	private String reply_type; // Food : F , Tour : T, Hotel : A
	private String reply_rv_code; // 예약코드 (숙박일때만 필요, 예약 코드)
	private String reply_code; // 각 서비스 코드
	private String mi_id; // 아이디
	private String reply_content; // 후기내용
	private Double reply_score; // 후기 점수
	private String reply_reg_date; // 작성날짜
	private String reply_del_yn; // 삭제여부
	private String reply_del_date; // 삭제날짜
	private String ai_id; // 삭제한 관리자아이디

	private String food_area, food_type, food_code, food_name;

	private String hotel_code, hotel_name, room_type, room_code;

	private String mi_pic;

	private String tour_area, tour_type, tour_code, tour_name;
 
	
	public String getFood_area() {
		return food_area;
	}

	public void setFood_area(String food_area) {
		this.food_area = food_area;
	}

	public String getFood_type() {
		return food_type;
	}

	public void setFood_type(String food_type) {
		this.food_type = food_type;
	}

	public String getTour_area() {
		return tour_area;
	}

	public void setTour_area(String tour_area) {
		this.tour_area = tour_area;
	}

	public String getTour_type() {
		return tour_type;
	}

	public void setTour_type(String tour_type) {
		this.tour_type = tour_type;
	}

	public String getTour_code() {
		return tour_code;
	}

	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}

	public String getTour_name() {
		return tour_name;
	}

	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	public int getReply_idx() {
		return reply_idx;
	}

	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}

	public String getReply_type() {
		return reply_type;
	}

	public void setReply_type(String reply_type) {
		this.reply_type = reply_type;
	}

	public String getReply_rv_code() {
		return reply_rv_code;
	}

	public void setReply_rv_code(String reply_rv_code) {
		this.reply_rv_code = reply_rv_code;
	}

	public String getReply_code() {
		return reply_code;
	}

	public void setReply_code(String reply_code) {
		this.reply_code = reply_code;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Double getReply_score() {
		return reply_score;
	}

	public void setReply_score(Double reply_score) {
		this.reply_score = reply_score;
	}

	public String getReply_reg_date() {
		return reply_reg_date;
	}

	public void setReply_reg_date(String reply_reg_date) {
		this.reply_reg_date = reply_reg_date;
	}

	public String getReply_del_yn() {
		return reply_del_yn;
	}

	public void setReply_del_yn(String reply_del_yn) {
		this.reply_del_yn = reply_del_yn;
	}

	public String getReply_del_date() {
		return reply_del_date;
	}

	public void setReply_del_date(String reply_del_date) {
		this.reply_del_date = reply_del_date;
	}

	public String getAi_id() {
		return ai_id;
	}

	public void setAi_id(String ai_id) {
		this.ai_id = ai_id;
	}

	public String getFood_code() {
		return food_code;
	}

	public void setFood_code(String food_code) {
		this.food_code = food_code;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getMi_pic() {
		return mi_pic;
	}

	public void setMi_pic(String mi_pic) {
		this.mi_pic = mi_pic;
	}

	public String getMi_id() {
		return mi_id;
	}

	public void setMi_id(String mi_id) {
		this.mi_id = mi_id;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public String getHotel_code() {
		return hotel_code;
	}

	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}

	public String getRoom_code() {
		return room_code;
	}

	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}

}