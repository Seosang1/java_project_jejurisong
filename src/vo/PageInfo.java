package vo;

public class PageInfo {
// ��ǰ ���� ��Ͽ��� ����¡�� ���� �ʿ��� �����͵��� ������ Ŭ����(���� & ����Ʈ ����)

	private int cpage, pcnt, spage, epage, rcnt, psize, bsize;
	// ���� ��������ȣ, ��������, ����������, ����������, �Խñ� ��, ������ũ��, ���ũ��
	private String keyword, type, map;
	// ����Ʈ�� ���ο��� ���������� ����� �˻����� ������ ������ ������
	private String isview, sdate, edate, schtype, chk;
	// ���ο����� ����� �˻����� ������ ������ ������
	private String ord, area;
	// ��������
	
	public int getCpage() {
		return cpage;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getChk() {
		return chk;
	}
	public void setChk(String chk) {
		this.chk = chk;
	}
	public void setCpage(int cpage) {
		this.cpage = cpage;
	}
	public int getPcnt() {
		return pcnt;
	}
	public void setPcnt(int pcnt) {
		this.pcnt = pcnt;
	}
	public int getSpage() {
		return spage;
	}
	public void setSpage(int spage) {
		this.spage = spage;
	}
	public int getEpage() {
		return epage;
	}
	public void setEpage(int epage) {
		this.epage = epage;
	}
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public int getPsize() {
		return psize;
	}
	public void setPsize(int psize) {
		this.psize = psize;
	}
	public int getBsize() {
		return bsize;
	}
	public void setBsize(int bsize) {
		this.bsize = bsize;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	public String getIsview() {
		return isview;
	}
	public void setIsview(String isview) {
		this.isview = isview;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getSchtype() {
		return schtype;
	}
	public void setSchtype(String schtype) {
		this.schtype = schtype;
	}
	public String getOrd() {
		return ord;
	}
	public void setOrd(String ord) {
		this.ord = ord;
	}
}