-- create schema jejurisong;

use jejurisong;

/* ==================== 관리자 테이블 ==================== */ 
create table t_admin_info ( 				-- 어드민 테이블 
	ai_idx	int	auto_increment unique,			-- 관리자 번호
	ai_id	varchar(20)	primary key,			-- 관리자 아이디
	ai_pwd	varchar(20)	not null,				-- 비밀번호
	ai_name	varchar(20)	not null,				-- 이름
	ai_isrun	char(1)	default 'y',			-- 사용여부
	ai_regdate	datetime default now(),			-- 등록일자
    ai_pms char(1) default 'a'
);


/* ==================== 회원 테이블 ==================== */ 
create table t_member_info (		
    mi_id	varchar(20)	primary key	,		-- 회원아이디
	mi_pwd	varchar(20)	not null,				-- 비밀번호
	mi_name	varchar(20)	not null,				-- 이름
	mi_birth	char(10) not null,				-- 생년월일
	mi_gender	char(1)	not null,				-- 성별
	mi_phone	varchar(13)	not null,			-- 전화번호
	mi_email	varchar(50)	not null,			-- 이메일
    mi_pic		varchar(50) null,			-- tkwls
	mi_issns	char(1) default 'y',			-- sns수신여부
	mi_ismail	char(1) default 'y'				-- 메일수신여부
);				
select * from t_member_info;
create table  t_member_addr(
	ma_idx	int	auto_increment primary key,		-- 일련번호
	mi_id	varchar(20),						-- 회원아이디
	ma_zip	char(5)	not null,					-- 우편번호
	ma_addr1 varchar(50) not null,				-- 주소1
	ma_addr2 varchar(50) not null,				-- 주소2
	ma_basic char(1) default 'y',				-- 기본주소여부
	ma_date	datetime default now()				-- 등록일
	-- constraint fk_t_member_addr_mi_id foreign key (mi_id) references t_member_info(mi_id)				
);			

use jejurisong;
/*================== 게시판 테이블=========================*/
create table t_brd_notice(				
bn_idx int auto_increment primary key,		-- 일련번호
bn_title varchar(100) not null,					-- 제목
bn_writer varchar(20) not null,					-- 작성자
bn_content text	not null,						-- 내용
bn_read	int	 default 0,							    -- 조회수
bn_isnotice	char(1) default 'n',					-- 공지여부
bn_date	datetime default now(),				-- 작성일
ai_idx	int													-- 관리자번호
--  constraint fk_t_brd_notice_ai_idx foreign key(ai_idx) references t_admin_info(ai_idx)				
);
select * from t_brd_notice;




/* ==================== 호텔 정보 ==================== */ 
create table t_hotel_info (						-- 숙박지 정보 테이블
	hotel_idx int auto_increment unique,		-- 호텔 번호	
	hotel_code char(5) not null primary key,	-- 숙박 코드 (H+인덱스)	
	hotel_area char(1) not null,				-- 지역	
	hotel_type varchar(5) not null,				-- 숙박 유형	
	hotel_name varchar(50) not null,			-- 숙박지명	
	hotel_addr varchar(150) not null,			-- 주소	
	hotel_zip varchar(7) not null,				-- 우편번호	
	hotel_tel varchar(15) not null,				-- 숙박 연락처	
	hotel_detail text,							-- 상세내용	
	hotel_stime varchar(5),						-- 체크인(HH:MM 형태)	
	hotel_etime varchar(5),						-- 체크아웃	
	hotel_park_yn char(1) default 'y',			-- 주차여부 (Y: 가능, N:불가능)	
    hotel_img1 varchar(50) not null,			-- 호텔 이미지
    hotel_img2 varchar(50),						-- 호텔 이미지
    hotel_img3 varchar(50),						-- 호텔 이미지
	hotel_score float default 0.0,				-- 평점	
	hotel_review_cnt int default 0,				-- 리뷰 수	
	hotel_open_yn char(1) default 'n',			-- 운영여부 (Y:운영중, N:미운영)	
	hotel_reg_date datetime default now(),		-- 등록일자	
	hotel_reg_id varchar(20) not null,			-- 등록처리자 (관리자아이디)	
	hotel_del_yn char(1) default 'n',			-- 삭제유무 (Y: 삭제, N:미삭제)	
	hotel_del_date datetime,					-- 삭제일자	
	hotel_del_id varchar(20)					-- 삭제처리자 (관리자아이디)
	-- , constraint fk_hotel_info_reg_id foreign key (hotel_reg_id) references t_admin_info(ai_id),
	-- constraint fk_hotel_info_del_id foreign key (hotel_del_id) references t_admin_info(ai_id)
);			

 
/* ==================== 방 정보 ==================== */ 
create table t_room_info (			-- 방 정보 테이블
	room_idx int auto_increment unique,			-- 방 번호
	room_code varchar(5) primary key,			-- 방코드 (R+인덱스)
    hotel_code varchar(5) not null,				-- 숙박코드 FK
	room_type varchar(5) not null,				-- 방종류
    room_cnt int not null,						-- 방 개
    room_eq text,			   					-- 객실구성
    room_svc text,								-- 객실 추가제공 서비스
	room_min int not null,						-- 최소 인원
    room_max int not null,						-- 최대 인원
    room_price int not null,					-- 금액
    room_discount int not null,					-- 할인율
    room_dis_price int not null,				-- 할인금액
    room_score float default 0.0,				-- 평점평균 
    room_open_yn char(1) default 'n',			-- 운영여부 (Y:운영중 N:미운영)
	room_reg_date datetime default now(),		-- 등록일자      
	room_reg_id varchar(20) not null,			-- 등록처리자 (관리자아이디)	
    room_del_yn	char(1) default 'n',			-- 삭제유무(Y: 삭제 N:미삭제)
    room_del_date datetime,						-- 삭제일자          
	room_del_id varchar(20),					-- 삭제처리자 (관리자아이디)	
    room_img varchar(50) not null				-- 객실 사진
	-- , constraint fk_room_info_reg_id foreign key (room_reg_id) references t_admin_info(ai_id),
	-- constraint fk_room_info_del_id foreign key (room_del_id) references t_admin_info(ai_id),  
	-- constraint fk_room_info_hotel_code foreign key (hotel_code) references t_hotel_info(hotel_code)
); 

 
/* ==================== 예약 정보 ==================== */ 
create table t_reserve_info (				-- 예약 관련 테이블
	rv_idx int auto_increment unique,			-- 예약번호
	rv_code varchar(11) primary key,			-- 예약번호(YYYYMMDD + 001)
    hotel_code char(5),				 			-- 숙박 코드
    room_code char(5),							-- 방 코드
   	mem_id varchar(20) not null,				-- 유저 아이디 
    rv_sdate varchar(10) not null,				-- 투숙시작일 (YYYY-MM-DD)
    rv_edate varchar(10) not null,				-- 투숙종료일 (YYYY-MM-DD)t_reserve_info
    rv_cnt int not null,						-- 투숙인원
    rv_price int not null,						-- 숙박의 금액
    rv_discount int not null,					-- 숙박의 할인율
    rv_dis_price int not null,					-- 숙박의 결제금액
    rv_pay_price int not null,					-- 실제 결제금액
    rv_name varchar(20) not null,				-- 예약자이름
    rv_email varchar(50) not null,				-- 예약자 이메일주소
    rv_phone varchar(15) not null,				-- 예약자 연락처
    rv_content text,							-- 요청사항
    rv_payment char(1) default 'c',				-- 결제정보 (C: 카드)
    rv_agree char(1) default 'y',				-- 동의여부(Y: 동의, N:비동의)
    rv_date datetime default now(),				-- 예약일자
    rv_state char(1) default 'a',				-- 상태(A: 예약확정, B:예약취소, C: 여행종료)
    rv_cancel_date datetime,					-- 취소일자
    ai_id varchar(20)							-- 취소한 관리자 아이디 
	-- ,constraint fk_reserve_info_mem_id foreign key (mem_id) references t_member_info(mem_id),
	-- constraint fk_reserve_info_ai_id foreign key (ai_id) references t_admin_info(ai_id),
	-- constraint fk_reserve_info_hotel_code foreign key (hotel_code) references t_hotel_info(hotel_code),
	-- constraint fk_reserve_info_room_code foreign key (room_code) references t_room_info(room_code)
);


 

/* ==================== 후기 테이블 (공통 : 숙박, 여행지, 음식점 모두 포함) ==================== */ 
create table t_reply_list (						 
    reply_idx int auto_increment primary key,	-- 리뷰 번호  
	reply_type char(1) not null,				-- Food : F , Tour : T, Hotel : A
	reply_code varchar(10) not null,			-- 코드	(방코드, 음식점코드, 여행지코드)
	reply_rv_code varchar(20),					-- 예약코드 (숙박일때만 필요, 예약 코드)
    mi_id varchar(20),							-- 유저아이디	(작성자 아이디)
    reply_content text,							-- 후기 내용
    reply_score int not null,					-- 댓글 평점
    reply_reg_date datetime default now(),		-- 댓글 등록일자
    reply_del_yn char(1) default 'n',			-- 삭제 여부(Y: 삭제, N:미삭제)
    reply_del_date datetime default now(),		-- 삭제일자
    ai_id varchar(20)							-- 삭제한 관리자 
	-- constraint fk_food_reply_food_code foreign key (food_code) references t_food_info(food_code),
	-- constraint fk_food_reply_mem_id foreign key (mem_id) references t_member_info(mem_id)
);  

/* ==================== 음식점 정보 ==================== */ 
create table t_food_info (		-- 음식점 정보 테이블
	food_idx int auto_increment unique,			-- 번호
    food_code char(5) primary key,				-- 식당코드
    food_name varchar(30) not null,				-- 상호명 
    food_addr varchar(150) not null, 			-- 상호주소
    food_zip varchar(5) not null,				-- 우편번호
    food_tel varchar(15) ,						-- 매장 연락처
    food_type varchar(6) not null,				-- 매장타입 (한식 양식 등)
    food_area varchar(5) not null, 				-- 매장 지역 
    food_like int default 0,					-- 찜하기 수
    food_open varchar(5),						-- 오픈시간
    food_close varchar(5), 						-- 닫는시간
    food_img1 varchar(50) not null,				-- 이미지1	
    food_img2 varchar(50),						-- 이미지2
    food_img3 varchar(50),						-- 이미지3
    food_desc varchar(50),						-- 설명이미지
    food_review_cnt int default 0,				-- 리뷰 수
    food_park_yn char(1) default 'n', 			-- 주차여부
    food_open_yn char(1) default 'y',			-- 오픈 여부
    food_detail text not null,					-- 매장 설명
    food_isview char(1) default 'y',			-- 표시 여부
    food_score float default 0,					-- 평점
    food_reg_date datetime default now(),		-- 등록일자 
    food_reg_id VARCHAR(50),					-- 등록관리자
	food_del_yn char(1) default 'n',			-- 삭제유무 (Y: 삭제, N:미삭제)	
    food_isadd char(1) ,
    food_del_id varchar(20),
	food_del_date datetime default now() 		-- 삭제일자	   
); 

/* ==================== 여행지 정보 ==================== */ 
create table t_tour_info ( 		-- 관광지 정보 테이블
	tour_idx int auto_increment primary key,	-- 관광지 번호
    tour_code char(5) not null,					-- 코드 
    tour_area char(1) not null,					-- 관광지 지역
    tour_type char(5) not null,					-- 관광지 타입
    tour_name varchar(30) not null,				-- 장소명
    tour_addr varchar(150) not null,			-- 주소
	tour_tag text not null,						-- 태그
	tour_detail text not null,					-- 시설 소개
	tour_score int default 0,					-- 평점	
	tour_review_cnt int default 0,				-- 리뷰 수	
	tour_open_yn char(1) default 'n',			-- 운영여부 (Y:운영중, N:미운영)	
	tour_reg_date datetime default now(),		-- 등록일자	 
	tour_del_yn char(1) default 'n',			-- 삭제유무 (Y: 삭제, N:미삭제)	
	tour_del_date datetime,						-- 삭제일자	 
    tour_img1 varchar(50) not null,				-- 관광지 사진
    tour_img2 varchar(50),						-- 관광지 사진
    tour_img3 varchar(50)						-- 관광지 사진
);	  
select * from t_tour_info;
 
/* ==================== 1:1 문의하기 ==================== */ 
create table t_brd_qna (	-- 1:1 질문 테이블
	bq_idx int auto_increment primary key,		-- 번호
    mem_id varchar(20),						-- 유저아이디
    bq_cata varchar(20) not null,				-- 분류(유형)
    bq_title varchar(20) not null,				-- 질문제목
    bq_content text not null,					-- 질문내용
	bq_qdate datetime default now(),			-- 질문 등록일
    bq_answer text,								-- 답변내용
    ai_id varchar(20),							-- 관리자 아이디
	bq_adate datetime,							-- 답변일
    bq_status char(1) default 'n'				-- 답변상태 (Y: 답변완료 N:미답변
	-- constraint fk_brd_qna_ai_id foreign key (ai_id) references t_admin_info(ai_id) ,
	-- constraint fk_brd_faq_mem_id foreign key (mem_id) references t_member_info(mem_id) 
);
select * from t_brd_qna;



create table tmp_date (
	yyyymm char(7) 
);
insert into tmp_date value ('2021-01');
insert into tmp_date value ('2021-02');
insert into tmp_date value ('2021-03');
insert into tmp_date value ('2021-04');
insert into tmp_date value ('2021-05');
insert into tmp_date value ('2021-06');
insert into tmp_date value ('2021-07'); 