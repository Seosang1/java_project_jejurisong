package vo;
 
public class HotelInfo {

	private int hotel_idx; // ��ȣ
	private String hotel_code; // �����ڵ� (a + INDEX ���·� ����)
	private String hotel_area; // (N: ���ֽ�, E:���Ǳ�, W:������, S:��������)
	private String hotel_type; // ��������
	private String hotel_name; // ���ڸ�
	private String hotel_addr; // �ּ�
	private String hotel_zip; // �����ȣ
	private String hotel_tel; // ��ȭ��ȣ
	private String hotel_detail; // �󼼳���
	private String hotel_stime; // üũ�� (HH:MM ������ �ؽ�Ʈ)
	private String hotel_etime; // üũ�ƿ� (HH:MM ������ �ؽ�Ʈ)
	private String hotel_park_yn; // �������� (Y:����, N:�Ұ���)
	private String hotel_img1; // ȣ�ڻ���1
	private String hotel_img2; // ȣ�ڻ���2
	private String hotel_img3; // ȣ�ڻ���3
	private Double hotel_score; // ����
	private int hotel_review_cnt; // ���䰳��
	private String hotel_open_yn; // ����� (Y:���, N:�̿)
	private String hotel_reg_date; // �������
	private String hotel_reg_id; // ���ó���� (�����ھ��̵�)
	private String hotel_del_yn; // �������� (Y:����, N:�̻���)
	private String hotel_del_date; // ��������
	private String hotel_del_id; // ����ó���� (�����ھ��̵�) 
	
	private int hotel_room_cnt;	// ȣ�ڿ� �ش��ϴ� �� ���� 
	private int room_price;
	private int room_discount;
	private int room_dis_price;
	
	
	
 

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	public int getRoom_discount() {
		return room_discount;
	}

	public void setRoom_discount(int room_discount) {
		this.room_discount = room_discount;
	}

	public int getRoom_dis_price() {
		return room_dis_price;
	}

	public void setRoom_dis_price(int room_dis_price) {
		this.room_dis_price = room_dis_price;
	}

	public int getHotel_room_cnt() {
		return hotel_room_cnt;
	}

	public void setHotel_room_cnt(int hotel_room_cnt) {
		this.hotel_room_cnt = hotel_room_cnt;
	}

	public int getHotel_idx() {
		return hotel_idx;
	}

	public void setHotel_idx(int hotel_idx) {
		this.hotel_idx = hotel_idx;
	}

	public String getHotel_code() {
		return hotel_code;
	}

	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}

	public String getHotel_area() {
		return hotel_area;
	}

	public void setHotel_area(String hotel_area) {
		this.hotel_area = hotel_area;
	}

	public String getHotel_type() {
		return hotel_type;
	}

	public void setHotel_type(String hotel_type) {
		this.hotel_type = hotel_type;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getHotel_addr() {
		return hotel_addr;
	}

	public void setHotel_addr(String hotel_addr) {
		this.hotel_addr = hotel_addr;
	}

	public String getHotel_zip() {
		return hotel_zip;
	}

	public void setHotel_zip(String hotel_zip) {
		this.hotel_zip = hotel_zip;
	}

	public String getHotel_tel() {
		return hotel_tel;
	}

	public void setHotel_tel(String hotel_tel) {
		this.hotel_tel = hotel_tel;
	}

	public String getHotel_detail() {
		return hotel_detail;
	}

	public void setHotel_detail(String hotel_detail) {
		this.hotel_detail = hotel_detail;
	}

	public String getHotel_stime() {
		return hotel_stime;
	}

	public void setHotel_stime(String hotel_stime) {
		this.hotel_stime = hotel_stime;
	}

	public String getHotel_etime() {
		return hotel_etime;
	}

	public void setHotel_etime(String hotel_etime) {
		this.hotel_etime = hotel_etime;
	}

	public String getHotel_park_yn() {
		return hotel_park_yn;
	}

	public void setHotel_park_yn(String hotel_park_yn) {
		this.hotel_park_yn = hotel_park_yn;
	}

	public String getHotel_img1() {
		return hotel_img1;
	}

	public void setHotel_img1(String hotel_img1) {
		this.hotel_img1 = hotel_img1;
	}

	public String getHotel_img2() {
		return hotel_img2;
	}

	public void setHotel_img2(String hotel_img2) {
		this.hotel_img2 = hotel_img2;
	}

	public String getHotel_img3() {
		return hotel_img3;
	}

	public void setHotel_img3(String hotel_img3) {
		this.hotel_img3 = hotel_img3;
	}

	public Double getHotel_score() {
		return hotel_score;
	}

	public void setHotel_score(Double hotel_score) {
		this.hotel_score = hotel_score;
	}

	public int getHotel_review_cnt() {
		return hotel_review_cnt;
	}

	public void setHotel_review_cnt(int hotel_review_cnt) {
		this.hotel_review_cnt = hotel_review_cnt;
	}

	public String getHotel_open_yn() {
		return hotel_open_yn;
	}

	public void setHotel_open_yn(String hotel_open_yn) {
		this.hotel_open_yn = hotel_open_yn;
	}

	public String getHotel_reg_date() {
		return hotel_reg_date;
	}

	public void setHotel_reg_date(String hotel_reg_date) {
		this.hotel_reg_date = hotel_reg_date;
	}

	public String getHotel_reg_id() {
		return hotel_reg_id;
	}

	public void setHotel_reg_id(String hotel_reg_id) {
		this.hotel_reg_id = hotel_reg_id;
	}

	public String getHotel_del_yn() {
		return hotel_del_yn;
	}

	public void setHotel_del_yn(String hotel_del_yn) {
		this.hotel_del_yn = hotel_del_yn;
	}

	public String getHotel_del_date() {
		return hotel_del_date;
	}

	public void setHotel_del_date(String hotel_del_date) {
		this.hotel_del_date = hotel_del_date;
	}

	public String getHotel_del_id() {
		return hotel_del_id;
	}

	public void setHotel_del_id(String hotel_del_id) {
		this.hotel_del_id = hotel_del_id;
	}

}
