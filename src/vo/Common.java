package vo;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap; 

public class Common {

	private HashMap<String, String> area = new HashMap();

	private HashMap<String, String> delYn = new HashMap();
	
	private HashMap<String, String> openYn = new HashMap();

	private HashMap<String, String> flightClass = new HashMap();

	private HashMap<String, String> flightCompany = new HashMap();

	private HashMap<String, String> flightEcity = new HashMap();

	private HashMap<String, String> flightScity = new HashMap();

	private HashMap<String, String> foodType = new HashMap();

	private HashMap<String, String> hoteEquip = new HashMap();

	private HashMap<String, String> hotelType = new HashMap();

	private HashMap<String, String> plannerType = new HashMap();

	private HashMap<String, String> roomType = new HashMap();

	private HashMap<String, String> tourType = new HashMap();

	private HashMap<String, String> FoodParkingYn = new HashMap();
	
	private HashMap<String, String> hotelParkingYn = new HashMap();

	private HashMap<String, String>  rvState = new HashMap();

	private HashMap<String, String>  agree = new HashMap();

	private HashMap<Double, String>  star = new HashMap();

	private HashMap<String, String>  gender = new HashMap();  
	
	

	public HashMap<String, String> getGender() {
		gender.put("m", "��");
		gender.put("f", "��"); 
		return gender;
	}

	public HashMap<String, String> getAgree() {
		agree.put("y", "����");
		agree.put("n", "����"); 
		return agree;
	}

	public HashMap<String, String> getRvState() {
		rvState.put("a", "����Ȯ��");
		rvState.put("b", "�������"); 
		return rvState;
	}

	public HashMap<String, String> getOpenYn() {
		openYn.put("y", "���");
		openYn.put("n", "�����");
		return openYn;
	}

	public HashMap<String, String> getFoodParkingYn() {
		FoodParkingYn.put("y", "��������");
		FoodParkingYn.put("n", "�����Ұ���");
		return FoodParkingYn;
	}
	public HashMap<String, String> getHotelParkingYn() {
		hotelParkingYn.put("y", "��������");
		hotelParkingYn.put("n", "�����Ұ���");
		return hotelParkingYn;
	}

	public HashMap<String, String> getArea() {
		area.put("N", "���ֽ�");
		area.put("E", "���� ����");
		area.put("W", "���� ����");
		area.put("S", "��������");
		return area;
	} 

	public HashMap<String, String> getDelYn() {
		delYn.put("y", "�����Ϸ�");
		delYn.put("n", "�̻���");
		return delYn;
	}

	public HashMap<String, String> getFlightClass() {
		flightClass.put("a", "��ü");
		flightClass.put("n", "�Ϲݼ�");
		flightClass.put("d", "���μ�");
		flightClass.put("b", "����Ͻ���");
		return flightClass;
	}

	public HashMap<String, String> getFlightCompany() {
		flightCompany.put("KE", "�����װ�");
		flightCompany.put("OZ", "�ƽþƳ�");
		flightCompany.put("JJ", "�����װ�");
		flightCompany.put("LG", "������");
		flightCompany.put("ARI", "����λ�");
		return flightCompany;
	}

	public HashMap<String, String> getFlightEcity() {
		flightEcity.put("CJU", "����");
		flightEcity.put("PUS", "�λ�");
		flightEcity.put("KWJ", "����");
		flightEcity.put("TAE", "�뱸");
		flightEcity.put("KPO", "����");
		flightEcity.put("MWX", "����");
		flightEcity.put("RSU", "����");
		flightEcity.put("USN", "���");
		flightEcity.put("HIN", "����");
		flightEcity.put("YNY", "���");
		return flightEcity;
	}

	public HashMap<String, String> getFlightScity() {
		flightScity.put("GMP", "����");
		flightScity.put("ICN", "��õ");
		flightScity.put("PUS", "�λ�");
		flightScity.put("CJU", "����");
		flightScity.put("KWJ", "����");
		flightScity.put("TAE", "�뱸");
		flightScity.put("KPO", "����");
		flightScity.put("CJJ", "û��");
		flightScity.put("MWX", "����");
		flightScity.put("RSU", "����");
		flightScity.put("USN", "���");
		flightScity.put("HIN", "����");
		flightScity.put("KUV", "����");
		flightScity.put("WJU", "����");
		flightScity.put("YNY", "���");
		return flightScity;
	}

	public HashMap<String, String> getFoodType() {
		foodType.put("KFR", "�ѽ�");
		foodType.put("CFR", "�߽�");
		foodType.put("WFR", "���");
		foodType.put("CR", "ī��");
		foodType.put("KJFR", "��������");
		foodType.put("JFR", "�Ͻ�");
		return foodType;
	}

	public HashMap<String, String> getHoteEquip() {
		hoteEquip.put("EQ01", "��Ʈ�Ͻ�����");
		hoteEquip.put("EQ02", "Ǯ����");
		hoteEquip.put("EQ03", "������");
		hoteEquip.put("EQ04", "Ű���");
		hoteEquip.put("EQ05", "ī��");
		hoteEquip.put("EQ06", "ī����");
		hoteEquip.put("EQ07", "������");
		hoteEquip.put("EQ08", "���ͳ�(����)");
		hoteEquip.put("EQ09", "��������");
		hoteEquip.put("EQ10", "��ȸ��");
		hoteEquip.put("EQ11", "�Ĵ�");
		hoteEquip.put("EQ12", "����/��Ǯ");
		hoteEquip.put("EQ13", "������");
		hoteEquip.put("EQ14", "���̳���");
		hoteEquip.put("EQ15", "��쳪");
		hoteEquip.put("EQ16", "����Ͻ�����");
		hoteEquip.put("EQ17", "�ٺ�ť");
		hoteEquip.put("EQ18", "�뷡��");
		return hoteEquip;
	}

	public HashMap<String, String> getHotelType() {
		hotelType.put("CMP", "ķ����");
		hotelType.put("MTL", "����");
		hotelType.put("GHS", "�Խ�Ʈ�Ͽ콺");
		hotelType.put("PNS", "���");
		hotelType.put("APT", "����Ʈ");
		hotelType.put("VILL", "����");
		hotelType.put("HTL", "ȣ��");
		hotelType.put("RST", "����Ʈ");
		return hotelType;
	}

	public HashMap<String, String> getPlannerType() {
		plannerType.put("RHT", "�޽İ� ġ������");
		plannerType.put("LT", "������ ü��");
		plannerType.put("WT", "õõ�� �ȱ�");
		plannerType.put("ET", "�ĵ��� ����");
		plannerType.put("JOT", "������ ��ȭ����");
		plannerType.put("MFT", "���ÿ� ���");
		plannerType.put("ST", "�����ϱ�");
		plannerType.put("ART", "������ ��õ����");
		return plannerType;
	}

	public HashMap<String, String> getRoomType() {
		roomType.put("SDR", "Standard Room");
		roomType.put("SPR", "Superior Room");
		roomType.put("DXR", "Deluxe Room");
		roomType.put("ECR", "Excecutive Room");
		roomType.put("STR", "Suite Room");
		roomType.put("SBR", "Single Bed Room");
		roomType.put("DBR", "Double Bed Room");
		roomType.put("WBR", "Twin Bed Room");
		roomType.put("TPR", "Triple Room");
		roomType.put("FMR", "Family Room");
		roomType.put("CTR", "Connecting Room");
		return roomType;
	}

	public HashMap<String, String> getTourType() {
		tourType.put("NT", "�ڿ�");
		tourType.put("CT", "��ȭ����");
		tourType.put("AT", "��Ƽ��Ƽ");
		return tourType;
	}	
	
	public HashMap<Double, String> getStar() { 
		star.put(0.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star0.png' style='width:90px; height:18px;'>");
		star.put(1.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star1.png' style='width:90px; height:18px;'>");
		star.put(2.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star2.png' style='width:90px; height:18px;'>");
		star.put(3.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star3.png' style='width:90px; height:18px;'>");
		star.put(4.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star4.png' style='width:90px; height:18px;'>");
		star.put(5.0 , "<img src='${pageContext.request.contextPath}/../common/images/InfoImg/star5.png' style='width:90px; height:18px;'>");
		return star;
	} 

	// �Ű������� � ���̵� ��� �ִ��� ���θ� �˻��ϴ� �޼ҵ�
	public boolean isEmpty(String str) {
		boolean empty = true;
		if (str != null && !str.equals(""))
			empty = false;
		return empty;
	}
 
	// Parameter ���� null -> "" ���� ��ȯ 
	public String nullToString(String str) {
		String toStr = "";
		if (str != null && !str.equals("")) {
			toStr = str;
		} else {
			toStr = "";
		}
		return toStr;
	}
	
	// ���ڿ� ��� len ������ �����ϰ� ...
	public String txtToShort(String str, int len) {
		String toStr = "";
		if (str.length() > len ) {
			toStr = str.substring(0, len) + "...";
		} else {
			toStr = str;
		}
		return toStr;
	}  
	
 
}
