package vo;

public class RoomReplyInfo {
	private int room_re_idx; // �� �ı��ȣ
	private String hotel_code; // ȣ�ڹ�ȣ
	private String room_code; // ���ڵ�
	private String mem_id; // ȸ�� ���̵� (�ۼ���)
	private String room_re_content; // �ı⳻��
	private Double room_re_score; // ����
	private String room_re_reg_date; // �������
	private String room_re_del_yn; // �������� (Y:����, N:�̻���)
	private String room_re_del_date; // ��������
	private String room_re_del_id; // ����ó���� (�ۼ���ȸ�� or ����������)

	public int getRoom_re_idx() {
		return room_re_idx;
	}

	public void setRoom_re_idx(int room_re_idx) {
		this.room_re_idx = room_re_idx;
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

	public String getRoom_re_content() {
		return room_re_content;
	}

	public void setRoom_re_content(String room_re_content) {
		this.room_re_content = room_re_content;
	}

	public Double getRoom_re_score() {
		return room_re_score;
	}

	public void setRoom_re_score(Double room_re_score) {
		this.room_re_score = room_re_score;
	}

	public String getRoom_re_reg_date() {
		return room_re_reg_date;
	}

	public void setRoom_re_reg_date(String room_re_reg_date) {
		this.room_re_reg_date = room_re_reg_date;
	}

	public String getRoom_re_del_yn() {
		return room_re_del_yn;
	}

	public void setRoom_re_del_yn(String room_re_del_yn) {
		this.room_re_del_yn = room_re_del_yn;
	}

	public String getRoom_re_del_date() {
		return room_re_del_date;
	}

	public void setRoom_re_del_date(String room_re_del_date) {
		this.room_re_del_date = room_re_del_date;
	}

	public String getRoom_re_del_id() {
		return room_re_del_id;
	}

	public void setRoom_re_del_id(String room_re_del_id) {
		this.room_re_del_id = room_re_del_id;
	}

}
