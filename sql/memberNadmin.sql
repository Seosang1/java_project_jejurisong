-- create schema jejurisong;

use jejurisong;
 
create table t_admin_info ( 				-- 어드민 테이블 
	ai_idx	int	auto_increment unique,			-- 관리자 번호
	ai_id	varchar(20)	primary key,			-- 관리자 아이디
	ai_pwd	varchar(20)	not null,				-- 비밀번호
	ai_name	varchar(20)	not null,				-- 이름
	ai_isrun	char(1)	default 'y',			-- 사용여부
	ai_regdate	datetime default now(),			-- 등록일자
    ai_pms char(1) default 'a'
);

insert into t_admin_info (ai_id, ai_pwd, ai_name) values ('admin', '1234', '관리자');
select * from t_admin_info;

create table t_member_info (		
    mi_id	varchar(20)	primary key	,		-- 회원아이디
	mi_pwd	varchar(20)	not null,				-- 비밀번호
	mi_name	varchar(20)	not null,				-- 이름
	mi_birth	char(10) not null,				-- 생년월일
	mi_gender	char(1)	not null,				-- 성별
	mi_phone	varchar(13)	not null,			-- 전화번호
	mi_email	varchar(50)	not null,			-- 이메일
	mi_issns	char(1) default 'y',			-- sns수신여부
	mi_ismail	char(1) default 'y'				-- 메일수신여부
);				
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test", "1234", "가나다", "1994-07-28", "남", "010-9141-7851", "asdf@naver.com", "n", "n");
select * from t_member_info;


create table  t_member_addr(t_brd_faqt_brd_notice
	ma_idx	int	auto_it_reply_listt_reply_listsp_h_reply_deletencrement primary key,		-- 일련번호
	mi_id	varchar(20),						-- 회원아이디
	ma_zip	char(5)	not null,					-- 우편번호
	ma_addr1 varchar(50) not null,				-- 주소1
	ma_addr2 varchar(50) not null,				-- 주소2
	ma_basic char(1) default 'y',				-- 기본주소여부
	ma_date	datetime default now(),				-- 등록일
	constraint fk_t_member_addr_mi_id foreign key (mi_id) references t_member_info(mi_id)				
);			
insert into t_member_addr (mi_id, ma_zip, ma_addr1, ma_addr2) values ('test', '12345', '서울', '123-45');
select * from t_member_addr;