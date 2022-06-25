package svc.food; 

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.food.*;
import vo.FoodInfo;
import vo.*;

public class FoodListSvc {   

		public int getFoodCount(String where) {
		// ��Ͽ��� ������ ��ü �Խñ��� ������ �����ϴ� �޼ҵ�
			int rcnt = 0;	// ��ü �Խñ� ������ ������ ����
			Connection conn = getConnection();	// DB�� ����
			FoodDao foodDao = FoodDao.getInstance();
			// ProductDao �� �ν��Ͻ��� getInstance()�޼ҵ带 ���� ����
			foodDao.setConnection(conn);
			// ProductDao �� �ν��Ͻ� productDao�� Connection��ü�� ����
			rcnt = foodDao.getCount(where);
			// �Խñ��� ��ü ������ ���� getArticleCount() �޼ҵ� ȣ��
			close(conn);

			return rcnt;
		}
		
		public ArrayList<FoodInfo> getFoodList(String where, String orderBy, int cpage, int psize) {
		// �˻��� ��ǰ ����� ArrayList<ProductInfo> �� �ν��Ͻ��� �����ϴ� �޼ҵ�
			ArrayList<FoodInfo> foodList = new ArrayList<FoodInfo>();
			Connection conn = getConnection();
			FoodDao foodDao = FoodDao.getInstance();
			foodDao.setConnection(conn);
			foodList = foodDao.getList(where, orderBy, cpage, psize);
			close(conn);

			return foodList;
		} 
}
		
