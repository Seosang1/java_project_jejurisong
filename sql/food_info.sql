use jejurisong; 

select * from t_member_info;
select * from t_food_info;

SET FOREIGN_KEY_CHECKS = 0; TRUNCATE t_food_info; SET FOREIGN_KEY_CHECKS = 1;   

select food.food_name, reply.*  from t_reply_list reply left join t_food_info food on reply.reply_code = food.food_code = 'F0010' 
where reply_type = 'F'
order by reply_reg_date desc;

  truncate t_food_info;
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0001', '은희네해장국', '제주특별자치도 서귀포시 516로 84(1층 토평동)', '63604', '064-767-0039', 'KFR', 'S', '06:00', '15:00', '제주도 1등 해장국맛집 은희네입니다.', '001_01.jpg', '001_02.jpg', '00_desc.jpg', '001_desc.jpg',  1, 4, 6);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0002', '제주김만복', '제주 서귀포시 월드컵로 117', '63604', '064-767-0039', 'KFR', 'S', '09:00', '21:00', '제주김만복은 색다르고 맛있는 김밥, 주먹밥, 뚝배기전복밥을 파는 매력적인 곳입니다.', '002_01.jpg', '002_02.jpg', '002_03.jpg', '002_desc.jpg',  2, 2, 3, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0003', '봄날카페', '제주 제주시 애월읍 애월리 2540', '63604', '064-799-4999', 'CF', 'W', '09:00', '22:00', '탁 트인 바다 풍경을 감상하며 커피 음료, 주스, 스낵류를 즐길 수 있는 매력적인 해변 카페입니다.', '003_01.jpg', '003_02.jpg', '003_03.jpg', '003_desc.jpg',  5, 3, 11, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id ) values
	('F0004', '몽상드애월카페', '제주 제주시 애월읍 애월리 2546', '63604', '064-799-0090', 'CF', 'W', '10:30', '20:30', '제주 노을이 가장 가까이 위치에 있는 바다 앞 카페.', '004_01.jpg', '004_02.jpg', '004_03.jpg', '004_desc.jpg',  0, 4, 10);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id)  values
	('F0005', '향토음식유리네한식', '제주 제주시 연북로 146', '63604', '064-748-0890', 'KJFR', 'N', '16:00', '17:30', '제주도 1등 갈치조림 맛집 유리네입니다.', '005_01.jpg', '005_02.jpg', '005_03.jpg', '005_desc.jpg',  1, 4, 1, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0006', '덕성원', '제주 서귀포시 서귀동 472-1 덕성원', '63604', '064-762-2402', 'CFR', 'S', '11:00', '21:00', '3대가 운영하는 전통 중국집으로 최고의 재료와 오래된 전통과 노하우의 중식요리를 고객에게 선보이고 있습니다.', '006_01.jpg', '006_02.jpg', '006_03.jpg', '006_desc.jpg',  2, 3, 4, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0007', '스시도모다찌', '제주 제주시 광양8길 1', '63604', '064-901-2888', 'JFR', 'N', '11:30', '21:30', '제주도 현지인이 추천하는 스시 맛집', '007_01.jpg', '007_02.jpg', '007_03.jpg', '007_desc.jpg',  0 , 3, 2, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0008', '원앤온리카페', '제주 서귀포시 안덕면 산방로 141', '63604', '064-1323-6186', 'CF', 'W', '09:00', '21:00', '전 세계 단 한곳뿐인 뷰와 분위기를 품다. 황우치해변을 홀로 품고 명승 산방산을 지붕삼은 유일한 곳', '008_01.jpg', '008_02.jpg', '008_03.jpg', '008_desc.jpg',  5, 5, 9, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0009', '연돈', '제주특별자치 서귀포시 일주서로 968-10', '63604', '064-1386-7060', 'KFR', 'W', '12:00', '16:00', '백종원골목식당 1등 맛집 연돈입니다.', '009_01.jpg', '009_02.jpg', '009_03.jpg', '009_desc.jpg',  1, 4, 50, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0010', '하하호호', '제주 제주시 우도면 우도해안길 532', '63604', '064-1344-1365', 'WFR', 'E', '11:00', '16:00', '2011년 시작한 하하호호는 흑돼지버거 원조 맛집입니다.', '010_01.jpg', '010_02.jpg', '010_03.jpg', '010_desc.jpg',  3, 4, 30, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0011', '우진해장국', '제주 제주시 서사로 11', '63604', '064-757-3393', 'KJFR', 'N', '06:00', '22:00', '제주산 고사리를 갈아 넣고 푹 끓여 갈색 빛깔이 나는 제주식 해장국을 만날 수 있는 한식당입니다. ', '011_01.jpg', '011_02.jpg', '011_03.jpg', '011_desc.jpg',  4.5, 3, 20, 'sa');
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like, food_reg_id) values
	('F0012', '선흘곶', '	제주특별자치도 제주시 조천읍 동백로 102', '63604', '064-783-5753', 'KFR', 'E', '10:30', '20:00', '제주도 골프장 근처 대표 쌈밥집.', '012_01.jpg', '012_02.jpg', '012_03.jpg', '012_desc.jpg',  2.5, 4, 35, 'sa');

update t_food_info set food_type='CR' where food_type='CF';
update  t_food_info set food_type='WFR' where food_name ='하하호호'; 

select * from t_reply_list;

select a.food_name, a.food_code, b.mi_pic, b.mi_id, c.mi_id, c.reply_code, c.reply_type, reply_content, reply_score
from t_food_info a, t_member_info b, t_reply_list c
where (a.food_code = 'F0010' = c.reply_code = 'F0010') and (b.mi_id = 'test1' = c.mi_id = 'test1') and reply_type = 'F' and reply_del_yn = 'n';
 
insert into t_reply_list (reply_type, reply_code, mi_id, reply_content, reply_score ) values ('F', 'F0010', 'test1', '맛집입니다 ㅎㅎ.', '3');

insert into t_reply_list (mi_id, reply_code, reply_type, reply_content, reply_score) values ('test1', 'F0010', 'F', '맛집입니다 ㅎㅎ.', '3');
	 
