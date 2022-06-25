package vo;

public class RoomInfo {
	private int room_idx; // ���ȣ
	private String room_code; // ���ڵ� (r + �ε���)
	private String hotel_code; // �����ڵ� (t_room_info:hotel_code)
	private String room_type; // ������
	private String room_eq; // ���Ǳ���
	private String room_svc; // �߰���������
	private int room_min; // �⺻�ο�
	private int room_max; // �ִ��ο�
	private int room_price; // �ݾ�
	private int room_discount; // ������
	private int room_dis_price; // ���αݾ�
	private String room_img; // ���� ����
	private int room_cnt; // �氳��
	private Double room_score; // �������
	private String room_open_yn; // ����� (Y:���, N:�̿)
	private String room_reg_date; // �������
	private String room_reg_id; // ����� (�����ھ��̵�)
	private String room_del_yn; // �������� (Y:����, N:�̻���)
	private String room_del_date; // ��������
	private String room_del_id; // ����� (�����ھ��̵�)

	private String hotel_name; // �����̸�

	private int rv_cnt; // �� ���� ����
	private int room_now_cnt; // �ܿ� �� ����

	public int getRoom_idx() {
		return room_idx;
	}

	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}

	public String getRoom_code() {
		return room_code;
	}

	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}

	public String getHotel_code() {
		return hotel_code;
	}

	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public String getRoom_eq() {
		return room_eq;
	}

	public void setRoom_eq(String room_eq) {
		this.room_eq = room_eq;
	}

	public String getRoom_svc() {
		return room_svc;
	}

	public void setRoom_svc(String room_svc) {
		this.room_svc = room_svc;
	}

	public int getRoom_min() {
		return room_min;
	}

	public void setRoom_min(int room_min) {
		this.room_min = room_min;
	}

	public int getRoom_max() {
		return room_max;
	}

	public void setRoom_max(int room_max) {
		this.room_max = room_max;
	}

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

	public String getRoom_img() {
		return room_img;
	}

	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}

	public int getRoom_cnt() {
		return room_cnt;
	}

	public void setRoom_cnt(int room_cnt) {
		this.room_cnt = room_cnt;
	}

	public Double getRoom_score() {
		return room_score;
	}

	public void setRoom_score(Double room_score) {
		this.room_score = room_score;
	}

	public String getRoom_open_yn() {
		return room_open_yn;
	}

	public void setRoom_open_yn(String room_open_yn) {
		this.room_open_yn = room_open_yn;
	}

	public String getRoom_reg_date() {
		return room_reg_date;
	}

	public void setRoom_reg_date(String room_reg_date) {
		this.room_reg_date = room_reg_date;
	}

	public String getRoom_reg_id() {
		return room_reg_id;
	}

	public void setRoom_reg_id(String room_reg_id) {
		this.room_reg_id = room_reg_id;
	}

	public String getRoom_del_yn() {
		return room_del_yn;
	}

	public void setRoom_del_yn(String room_del_yn) {
		this.room_del_yn = room_del_yn;
	}

	public String getRoom_del_date() {
		return room_del_date;
	}

	public void setRoom_del_date(String room_del_date) {
		this.room_del_date = room_del_date;
	}

	public String getRoom_del_id() {
		return room_del_id;
	}

	public void setRoom_del_id(String room_del_id) {
		this.room_del_id = room_del_id;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public int getRv_cnt() {
		return rv_cnt;
	}

	public void setRv_cnt(int rv_cnt) {
		this.rv_cnt = rv_cnt;
	}

	public int getRoom_now_cnt() {
		return room_now_cnt;
	}

	public void setRoom_now_cnt(int room_now_cnt) {
		this.room_now_cnt = room_now_cnt;
	}

}
