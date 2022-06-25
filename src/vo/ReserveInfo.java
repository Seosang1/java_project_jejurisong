package vo;

public class ReserveInfo {
	private int rv_idx; // �����ȣ
	private String rv_code; // �����ڵ� (YYYYMMDD + 001)
	private String hotel_code; // �����ڵ�
	private String room_code; // ���ڵ�
	private String mem_id; // �������̵�
	private String rv_sdate; // ����������
	private String rv_edate; // ����������
	private int rv_cnt; // �����ο�
	private int rv_price; // �ݾ�
	private int rv_discount; // ������
	private int rv_dis_price; // �����ݾ�
	private int rv_pay_price; // ���� �����ݾ�
	private String rv_name; // �������̸�
	private String rv_email; // �������̸���
	private String rv_phone; // �����ڿ���ó
	private String rv_content; // ��û����
	private String rv_payment; // �������� (C : ī��)
	private String rv_agree; // ���ǿ��� (Y:����, N:����)
	private String rv_date; // ��������
	private String rv_state; // ���� (A:����Ȯ��, B:�������)
	private String rv_cancel_date; // �������
	private String ai_id; // ����� (�����ھ��̵�)

	private String hotel_name; // ȣ�ڸ�
	private String room_type; // ȣ������
	private int room_min;	// �ּ��ο�
	private int room_cnt; // �氳��

	
	
	public int getRoom_min() {
		return room_min;
	}

	public void setRoom_min(int room_min) {
		this.room_min = room_min;
	}

	public int getRv_pay_price() {
		return rv_pay_price;
	}

	public void setRv_pay_price(int rv_pay_price) {
		this.rv_pay_price = rv_pay_price;
	}

	public int getRv_idx() {
		return rv_idx;
	}

	public void setRv_idx(int rv_idx) {
		this.rv_idx = rv_idx;
	}

	public String getRv_code() {
		return rv_code;
	}

	public void setRv_code(String rv_code) {
		this.rv_code = rv_code;
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

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getRv_sdate() {
		return rv_sdate;
	}

	public void setRv_sdate(String rv_sdate) {
		this.rv_sdate = rv_sdate;
	}

	public String getRv_edate() {
		return rv_edate;
	}

	public void setRv_edate(String rv_edate) {
		this.rv_edate = rv_edate;
	}

	public int getRv_cnt() {
		return rv_cnt;
	}

	public void setRv_cnt(int rv_cnt) {
		this.rv_cnt = rv_cnt;
	}

	public int getRv_price() {
		return rv_price;
	}

	public void setRv_price(int rv_price) {
		this.rv_price = rv_price;
	}

	public int getRv_discount() {
		return rv_discount;
	}

	public void setRv_discount(int rv_discount) {
		this.rv_discount = rv_discount;
	}

	public int getRv_dis_price() {
		return rv_dis_price;
	}

	public void setRv_dis_price(int rv_dis_price) {
		this.rv_dis_price = rv_dis_price;
	}

	public String getRv_name() {
		return rv_name;
	}

	public void setRv_name(String rv_name) {
		this.rv_name = rv_name;
	}

	public String getRv_email() {
		return rv_email;
	}

	public void setRv_email(String rv_email) {
		this.rv_email = rv_email;
	}

	public String getRv_phone() {
		return rv_phone;
	}

	public void setRv_phone(String rv_phone) {
		this.rv_phone = rv_phone;
	}

	public String getRv_content() {
		return rv_content;
	}

	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}

	public String getRv_payment() {
		return rv_payment;
	}

	public void setRv_payment(String rv_payment) {
		this.rv_payment = rv_payment;
	}

	public String getRv_agree() {
		return rv_agree;
	}

	public void setRv_agree(String rv_agree) {
		this.rv_agree = rv_agree;
	}

	public String getRv_date() {
		return rv_date;
	}

	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}

	public String getRv_state() {
		return rv_state;
	}

	public void setRv_state(String rv_state) {
		this.rv_state = rv_state;
	}

	public String getRv_cancel_date() {
		return rv_cancel_date;
	}

	public void setRv_cancel_date(String rv_cancel_date) {
		this.rv_cancel_date = rv_cancel_date;
	}

	public String getAi_id() {
		return ai_id;
	}

	public void setAi_id(String ai_id) {
		this.ai_id = ai_id;
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

	public int getRoom_cnt() {
		return room_cnt;
	}

	public void setRoom_cnt(int room_cnt) {
		this.room_cnt = room_cnt;
	}

}
