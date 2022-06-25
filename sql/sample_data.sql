use jejurisong;

/* === 관리자 정보 === */
insert into t_admin_info (ai_id, ai_pwd, ai_name) values ('admin', '1234', '관리자');
SELECT * FROM t_member_info;

/* === 회원 정보 === */
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail)  
			values ("test", "1234", "홍길동", "1994-07-28", "남", "010-9141-7851", "asdf@naver.com", "n", "n");
insert into t_member_addr (mi_id, ma_zip, ma_addr1, ma_addr2) values ('test', '12345', '서울', '123-45');
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail)  
			values ("sora", "1234", "김소라", "1994-07-27", "여", "010-1234-1234", "sora@naver.com", "n", "n");
insert into t_member_addr (mi_id, ma_zip, ma_addr1, ma_addr2) values ('sora', '22245', '서울', '222-45');
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test1", "1234", "윤슬", "1980-01-01", "여", "010-0001-0001", "aaaa@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test7", "1234", "나래", "1980-01-02", "여", "010-0002-0003", "bbbb@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test8", "1234", "도담", "1980-01-03", "여", "010-0004-0005", "cccc@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test9", "1234", "벼리", "1980-01-04", "여", "010-0006-0007", "dddd@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test10", "1234", "아름", "1980-01-05", "여", "010-0008-0009", "eeee@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test11", "1234", "들찬", "1981-02-01", "남", "010-0010-0011", "ffff@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test12", "1234", "미르", "1981-02-02", "남", "010-0012-0013", "gggg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test13", "1234", "해안", "1981-02-03", "남", "010-0014-0015", "hhhh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test14", "1234", "훤", "1981-02-04", "남", "010-0016-0017", "iiii@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test15", "1234", "한결", "1981-02-05", "남", "010-0018-0019", "jjjj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test16", "1234", "라라", "1981-02-06", "여", "010-0020-0021", "kkkk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test17", "1234", "라미", "1981-02-07", "여", "010-0022-0023", "llll@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test18", "1234", "라별", "1981-02-08", "여", "010-0024-0025", "nnnn@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test19", "1234", "라와", "1981-02-09", "남", "010-0026-0027", "mmmm@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test20", "1234", "란새", "1981-02-10", "남", "010-0028-0029", "oooo@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test21", "1234", "렁찬", "1982-03-01", "남", "010-0030-0031", "pppp@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test22", "1234", "로다", "1982-03-02", "남", "010-0032-0033", "qqqq@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test23", "1234", "로운", "1982-03-03", "남", "010-0034-0035", "rrrr@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test24", "1234", "로지", "1982-03-04", "여", "010-0036-0037", "ssss@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test25", "1234", "루다", "1982-03-05", "남", "010-0038-0039", "tttt@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test26", "1234", "루나", "1982-03-16", "여", "010-0040-0041", "yyyu@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test27", "1234", "루리", "1982-03-17", "남", "010-0042-0043", "uuuu@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test28", "1234", "리네", "1982-03-18", "여", "010-0044-0045", "vvvv@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test29", "1234", "리라", "1982-03-19", "여", "010-0046-0047", "wwww@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test30", "1234", "리리", "1982-03-20", "여", "010-0048-0049", "yyyy@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test31", "1234", "다가", "1983-04-20", "남", "010-0050-0051", "zzzz@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test32", "1234", "다빈", "1983-04-21", "여", "010-0052-0053", "abab@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test33", "1234", "다슬", "1983-04-22", "여", "010-0054-0055", "bcbc@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test34", "1234", "다온", "1983-04-23", "남", "010-0056-0057", "cdcd@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test35", "1234", "다올", "1984-04-24", "남", "010-0058-0059", "dfdf@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test36", "1234", "다옴", "1984-04-25", "남", "010-0060-0061", "efef@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test37", "1234", "다이", "1984-04-26", "여", "010-0062-0063", "ghgh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test38", "1234", "도도", "1984-04-27", "남", "010-0064-0065", "ikik@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test39", "1234", "도래", "1984-04-28", "남", "010-0067-0068", "lnln@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test40", "1234", "동이", "1984-04-29", "여", "010-0069-0070", "opop@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test41", "1234", "두나", "1984-04-30", "여", "010-0081-0072", "qrqr@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test42", "1234", "두온", "1985-06-11", "남", "010-0073-0074", "stst@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test43", "1234", "가람", "1985-06-12", "남", "010-0075-0076", "vwvw@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test44", "1234", "가림", "1985-07-13", "남", "010-0077-0088", "yzyz@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test45", "1234", "가온", "1985-07-14", "남", "010-0077-0078", "qwer@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test46", "1234", "가이", "1985-07-15", "여", "010-0079-0080", "asdg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test47", "1234", "그리", "1985-07-16", "남", "010-0081-0082", "zxcv@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test48", "1234", "나래", "1985-07-17", "여", "010-0083-0084", "tyui@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test49", "1234", "노을", "1985-07-18", "여", "010-0085-0086", "ghhjk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test50", "1234", "노아", "1985-07-19", "남", "010-5165-0088", "bnbm@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test51", "1234", "바름", "1985-07-20", "남", "010-1561-0089", "sgsg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test52", "1234", "범한", "1985-08-21", "남", "010-8949-0090", "tjtthj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test53", "1234", "벼리", "1985-08-22", "남", "010-7484-0091", "srthsh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test54", "1234", "별하", "1985-08-23", "남", "010-6516-0092", "rsthrh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test55", "1234", "보람", "1985-08-24", "남", "010-5616-0093", "rsjsrh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test56", "1234", "봄봄", "1985-08-25", "남", "010-6151-0094", "trukh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test57", "1234", "봄나", "1985-08-26", "여", "010-5161-0095", "btyjtj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test58", "1234", "봄해", "1985-08-27", "남", "010-7525-0096", "eyjryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test59", "1234", "브루", "1985-08-28", "여", "010-4171-0097", "dfghfdg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test60", "1234", "비치", "1985-08-29", "남", "010-6835-0098", "uky@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test61", "1234", "빛초롱", "1985-08-30", "여", "010-7527-0099", "sergrg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test62", "1234", "새나", "1985-08-31", "여", "010-5425-0100", "srjysjy@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test63", "1234", "세이", "2007-09-30", "여", "010-7527-1001", "yjrukyuk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test64", "1234", "세늘", "2007-09-29", "남", "010-4425-1020", "esthsrhkyk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test65", "1234", "슬기", "2007-09-19", "남", "010-7527-1085", "kery@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test66", "1234", "슬옹", "2007-09-18", "남", "010-5222-2356", "sdtht@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test67", "1234", "승아", "2007-09-17", "여", "010-2244-4561", "drjy@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test68", "1234", "아라", "2007-09-16", "여", "010-5373-2654", "ikykr@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test69", "1234", "여름", "2007-09-15", "남", "010-7535-8465", "ryihjh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test70", "1234", "은솔", "2007-09-14", "남", "010-7535-2165", "yrikyk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test71", "1234", "열매", "2007-09-13", "여", "010-2725-8751", "tjuktk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test72", "1234", "슬", "2007-09-12", "여", "010-5161-5355", "ykuyk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test73", "1234", "재찬", "2015-07-11", "남", "010-7527-3938", "tuktk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test74", "1234", "제나", "2015-10-10", "남", "010-7527-2557", "tktk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test75", "1234", "지나", "2015-10-09", "여", "010-7527-2575", "esrgestg@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test76", "1234", "진샘", "2015-10-08", "여", "010-2755-1852", "srhtrth@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test77", "1234", "진이", "2015-10-07", "여", "010-8636-1482", "dryjdryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test78", "1234", "찬", "2015-10-06", "남", "010-6387-8545", "tktukt@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test79", "1234", "차미", "2015-07-08", "여", "010-7275-1728", "dththk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test80", "1234", "초롬", "2015-10-09", "남", "010-7573-1855", "dtkjdtyj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test81", "1234", "큰솔", "2015-10-08", "여", "010-7537-8969", "aeyrest@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test82", "1234", "키움", "1994-07-07", "남", "010-7527-7535", "srthrhr@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test83", "1234", "오리", "1994-11-01", "남", "010-7535-8634", "tyjtk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test84", "1234", "티아", "1994-11-02", "여", "010-7535-8934", "yikik@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test85", "1234", "파라", "1994-11-03", "여", "010-7275-7525", "puol@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test86", "1234", "파란", "1994-11-04", "남", "010-7535-8633", "dghdgfh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test87", "1234", "푸름", "1994-11-05", "남", "010-7535-7525", "dfhdfgh@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test88", "1234", "풀잎", "1971-11-06", "여", "010-8636-3535", "3ytth@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test89", "1234", "한빛", "1971-11-07", "남", "010-7255-7525", "65jy5dryt@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test90", "1234", "해련", "1971-11-08", "여", "010-7537-7537", "etrh6e@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test91", "1234", "쿤", "1971-11-09", "남", "010-7537-7535", "e54kjrth@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test92", "1234", "밤", "1971-11-10", "남", "010-7535-7535", "trkrter@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test93", "1234", "라크", "1971-11-19", "남", "010-7537-9999", "ereryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test94", "1234", "화이트", "1971-12-19", "남", "010-7537-8888", "yjeyj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test95", "1234", "하진성", "1965-12-19", "남", "010-3635-0058", "eyrjeryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test96", "1234", "에반켈", "1965-12-19", "남", "010-7537-7558", "eyjeryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test97", "1234", "자하드", "1965-12-19", "남", "010-7537-8686", "eryjey@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test98", "1234", "루니", "1965-12-19", "남", "010-7535-8865", "eryjeryj@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test99", "1234", "반 데 사르", "1956-12-19", "남", "010-7525-0088", "uyk@naver.com", "n", "n");
insert into t_member_info (mi_id, mi_pwd, mi_name, mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail) 
				values ("test100", "1234", "베컴", "1956-12-19", "남", "010-7533-7417", "wergwer@naver.com", "n", "n");
			
            
use jejurisong;
/*==공지사항 게시글 ===*/
insert into t_brd_notice(bn_title, bn_writer  ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("항공편 결항 문의", "admin", "안하세요 제주닷컴입니다.
                2021년 1월 7일 제주 지역에 많은 눈이 오게 됨에 따라 일부 항공편의 결항이 발생되고 있습니다.
                ", "0", "y", "2021-07-7");
select * from t_brd_notice;
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("※실시간 항공권 사전 좌석배정", "admin", "※실시간 항공권 좌석배정과 관련해서 여행사에서는 
                좌석배정을 할 수 없습니다.사전좌석배정은 해당 항공사로 문의 바랍니다. (사전좌석배정 가능 
                시간이 항공사마다 상이하므로 정확한 확인을 위해서는 해당항공사 
				홈페이지나 고객센터로 문의 바랍니다)", "0", "y", "2021-07-28");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("[★중요★] 국내선 신분증 미소지 승객 항공기 탑승불가 (2017.7.1~)", "admin", "2017년 7월 1일 부로, 
                국내선 이용 시 사진이 부착된 신분증 미소지 승객은 공항 체크인 및 보안 검색장 입장이 불가 합니다.
                
                1. 배경 - 국내선 공항경찰대가 신분증 미소지 승객에 대한 신원확인 업무를 중단 예정.
                2. 내용 - 사진이 부착되지 않은 신분증 소지 승객은 공항 체크인 및 보안 검색장 입장이 불가함
                
				- 건강보험증, 주민등록등본, 가족관계증명서 등으로 신분을 확인하는 (보호자가 동반하는 중,고교생의 ) 
                경우에는 사진이 부착되어 있지 않아도 신분증으로 인정", "0", "y", "2020-12-25");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("실시간항공 TASF(발권대행수수료) 시행공지","admin",  "※ 실시간항공 TASF (발권대행수수료) 시행공지
                1. 적용일시 : 2019년 6월10일 (09시)
                2. 내용 : 수수료1인당 (편도) 1천원씩 부과 (성인,소아 동일 / 유아 제외)
                3. TASF 환불규정* 결제당일취소시 전액환불 (00:00 ~ 23:59)
                * 천재지변/항공사 자체 스케줄 변경시 환불가능", "0", "y", "2021-01-01");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("제주닷컴 2021년 7월 신용카드 무이자할부 안내", "admin", "7월 신용카드 무이자
                할부안내
                
                행사기간 2021.07.01~07.31
                무이자 2~6개월(신한카드,국민카드 삼성카드, 농협카드)
                무이자 2~7개월(현대카드, 우리카드)
                무이자 2~8개월(하나카드)
                무이자 2~5개월(전북카드,광주카드)", "0", "y", "2021-08-15");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("아이폰을 통한 모바일 페이지 오류 시 처리방법 안내드립니다.", "admin", "안녕하세요
					제주닷컴입니다.
                    모바일페이지 이용 시 아이폰을 사용하시는 고객님들 중 다음과 같은 증상이 발생될 경우에
                    기본적인 처리방법을 안내드립니다.
               
               1. 상품 구매 버튼 클릭 시 페이지가 이동되지 않거나 상품 장바구니에 담기지 않는 경우
               2. 기존 예약건에 대하여 예약확인을 하고자 하였으나, 예약확인이 되지 않는 경우
", "0", "y", "2021-7-17");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("공항 이용 시 국내선 신분확인 절차 강화 안내드립니다.", "admin", "안녕하세요 제주닷컴입니다.
                제주를 오시기 위해 공항을 이용하실 경우
                국내선 신분확인 절차 강화 조치로 탑승장 조기입장 안내(최소 1시간 전까지) 드립니다.
                
                특히 김포공항 이용 시 탑승장 혼잡이 예상되오니
                원활한 탑승수속을 위해
                
                공항 도착 : 최소 1시간 30분전까지, 탑승장 : 탑승시간 최소 1시간 전까지 도착 후 이용하시는 걸 안내드립니다.
", "0", "y", "2021-07-01");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("※ 10호 태풍 하이선 으로 인한 항공 결항 시 환불 요청 안내 ※", "admin", 
                "10호 태풍 하이선 으로 인한 항공 결항 시, 환불 요청 안내드립니다.
                
                결항 관련 환불은 여행상담 게시판 or 고객센터 상담원 통해 요청해주셔야만 전액환불 가능합니다.
                
                - 결항확인서 첨부 조건
                1. 해당 항공편 편도 또는 왕복 항공사 동일인 경우 => 결항확인서 첨부 필요 없음", "0", "y", "2021-06-19");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("[아시아나] 제주 노선 G,T,W CLS 운임 변경 (6월, 7월)", "admin", "6,7월 운임 변경(안
                가. 대상 기간:
                - 김포/제주, 광주/제주, 대구/제주 : '19년 6월 1일(토) ~ 7월 18일(목)
                
                나. 대상 노선/운임 :
                - 김포/제주 : 주중(YX), 주말(YW)
                
                - 광주/제주, 대구/제주 : 주중(YX)", "0", "y", "2021-06-09");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("제주닷컴 서비스 양도 양수에 따른 고객 개인정보 이전 안내", "admin", 
                "제주닷컴 서비스 양도 양수에 따른 고객 개인정보 이전 안내
                제주여행 서비스 동반자로 함께해온 제주닷컴이 보다 나은 서비스를 제공하기 위해
                2019년 1월1일 경 부터 (주) 스테이허브 에서 (주) 제주닷컴으로 소유이전 할 예정입니다.
                
                ㈜제주닷컴은 제주여행서비스에 대하여 기존의 운영방식과 동일하게 제공할 예정이며,
                앞으로도 저희 임직원들은 더 나은 서비스를 제공하기 위해 최선을 다하겠사오니
                고객 여러분의 지속적인 이용과 변함없는 사랑을 부탁드립니다.", "0", "y", "2021-07-31");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("[아시아나] 국내선 UM(비동반소아) 서비스 운임 변경안내 (9월 1일부)", "admin", 
                "1. 적용대상
				- UM (Unaccompanied Minor: 비동반 소아): 만 5세 이상 ~ 만 13세 미만

				2. 변경내용
				- 대상편: 국내선 전 FLT (Codeshare Flight 적용 제외)", "0", "y", "2021-07-31");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("[대한한공 국내선] 비동반소아(UM) 적용 운임 변경 안내", "admin", 
                "※대한항공
				국내선 비동반소아(UM) 서비스 운임 규정을 아래와 같이 변경 안내 입니다.

				- 아 래 -

				1. UM 적용대상

				○ 동일 객실 내 보호자(만 13세 이상) 없이 국내선 항공편을 여행하는
				만 5세 이상 13세 미만 소아 승객 (Mandatory UM)

				○ 국제/국내 당일연결의 경우 국제선 기준 UM 서비스 제공

				2. 국내선 UM 서비스 Y/CLS (정상운임만 가능) 기준 변경

				○ 대상편 : 국내선 전 시간대

				○ UM 서비스 운임 변경사항
				- 구분: UM (만 5세 ~ 13세)
				- ★변경: 성인 정상운임", "0", "y", "2021-07-31");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("[3.30수정]※ 진에어 실시간항공 접속제한 공지(기간연장) ※", "admin", 
                "진에어 홈페이지 개편으로 인해 일시적으로 실시간항공 서비스가 제한됩니다.
				★3/24(토) 20:30 ~ 4.4(수) ★까지 추가적으로 온라인(홈페이지,모바일) 접속이 전면 제한되오니 양해 바랍니다.
				불편을 드려 죄송합니다.", "0", "y", "2021-07-31");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("제주항공 부산/제주 특가 오픈", "admin", 
                "◎ 출발기간 : 2018/03/02~2018/03/20
				◎ 발권기간 : 2018/03/01~2018/03/20

				◎ 운임 : 8,300원 (TAX 별도)

				예약율에 따라 마감될 수 있으며 환불 수수료는 '특가'운임과 동일하게 적용바랍니다.

				환불 시 환불수수료가 운임보다 클 경우 TAX만(공항세,유류세)만 환불됩니다", "0", "y", "2021-07-31");
insert into t_brd_notice(bn_title, bn_writer ,bn_content ,bn_read	,bn_isnotice	,bn_date) 
				values ("※대한항공 인천공항 신청사(제2터미널) 개항 안내※", "admin", 
                "2018년 1월18일부터 새벽5시 15분에 뉴욕에서 오는 ke 086을시작으로 
                대한항공의 모든 출도착 항공기는 기존인천공항 1터미널이 아닌 
                새로 개항하는 2터미널을 이요하오니 이용에 참고 하시킬 바랍니다", "0", "y", "2021-07-31");
		
delete from t_brd_notice;
select * from t_brd_notice;

/* === 호텔 정보 === */
truncate t_hotel_info;
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (1, 'A0001', 'E', 'CMP', '메이더카라반', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '함덕해수욕장 차로5분, 월정리해변 차로 10분', '14:00', '11:00', 'hotel (1).jpg', 'hotel (2).jpg', 'hotel (3).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (2, 'A0002', 'E', 'HTL', '[특2급]코업시티호텔하버뷰', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '루프탑스카이라운지 오픈★위미항 바다전망 추천 호텔', '14:00', '11:00', 'hotel (2).jpg', 'hotel (3).jpg', 'hotel (4).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (3, 'A0003', 'E', 'HTL', '유탑유블레스호텔(제주함덕)', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '조식1인+생맥주2잔 1회무료★함덕해수욕장 인근 추천호텔', '14:00', '11:00', 'hotel (3).jpg', 'hotel (4).jpg', 'hotel (5).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (4, 'A0004', 'E', 'HTL', '[특2급]선샤인호텔', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '함덕해수욕장 인근 추천 호텔', '14:00', '11:00', 'hotel (4).jpg', 'hotel (5).jpg', 'hotel (6).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (5, 'A0005', 'E', 'HTL', '[관광호텔]메이더호텔', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '함덕해수욕장 차량5분거리', '14:00', '11:00', 'hotel (5).jpg', 'hotel (6).jpg', 'hotel (7).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (6, 'A0006', 'E', 'PNS', '바다마루펜션', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '★간편조식무료제공★', '14:00', '11:00', 'hotel (6).jpg', 'hotel (7).jpg', 'hotel (8).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (7, 'A0007', 'E', 'PNS', '해든빌레펜션', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '★감귤농장 운영!★', '14:00', '11:00', 'hotel (7).jpg', 'hotel (8).jpg', 'hotel (9).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (8, 'A0008', 'E', 'PNS', '스파벨리스', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '★개똥이 미니동물원 무료입장', '14:00', '11:00', 'hotel (8).jpg', 'hotel (9).jpg', 'hotel (10).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (9, 'A0009', 'E', 'PNS', '올레뷰펜션', '제주시 동부시 제주시 동부동', '690-011', '064-000-0000', '★삼양해수욕장 3분거리＆전객실 오션뷰★', '14:00', '11:00', 'hotel (9).jpg', 'hotel (10).jpg', 'hotel (11).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (10, 'A0010', 'E', 'PNS', '제주스카이힐펜션', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '★쇠소깍 인근★', '14:00', '11:00', 'hotel (10).jpg', 'hotel (11).jpg', 'hotel (12).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (11, 'A0011', 'E', 'RST', '아름다운리조트', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '★ 특급바다 전망 ★', '14:00', '11:00', 'hotel (11).jpg', 'hotel (12).jpg', 'hotel (13).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (12, 'A0012', 'E', 'RST', '소노캄제주(구,샤인빌리조트)', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '가족여행 추천 리조트', '14:00', '11:00', 'hotel (12).jpg', 'hotel (13).jpg', 'hotel (14).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (13, 'A0013', 'E', 'RST', '해비치리조트', '서귀포시 동부시 서귀포시 동부동', '690-011', '064-000-0000', '다양한 특전!', '14:00', '11:00', 'hotel (13).jpg', 'hotel (14).jpg', 'hotel (15).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (14, 'A0014', 'N', 'HTL', '[관광호텔]엘린호텔', '제주시시 제주시동', '690-011', '064-000-0000', '★ 사회적기업! 청결도 1위 선정호텔! ★', '14:00', '11:00', 'hotel (14).jpg', 'hotel (15).jpg', 'hotel (16).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (15, 'A0015', 'N', 'HTL', '로긴호텔(구,오슬로호텔)', '제주시시 제주시동', '690-011', '064-000-0000', '★ 제주공항 10분거리 ★', '14:00', '11:00', 'hotel (15).jpg', 'hotel (16).jpg', 'hotel (17).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (16, 'A0016', 'N', 'HTL', '[특1급]제주칼호텔', '제주시시 제주시동', '690-011', '064-000-0000', '★계절별 다양한특전패키지!!★', '14:00', '11:00', 'hotel (16).jpg', 'hotel (17).jpg', 'hotel (18).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (17, 'A0017', 'N', 'HTL', '글로스터호텔제주', '제주시시 제주시동', '690-011', '064-000-0000', '★그랜드오픈특가/제주시내권 추천호텔', '14:00', '11:00', 'hotel (17).jpg', 'hotel (18).jpg', 'hotel (19).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (18, 'A0018', 'N', 'HTL', '[관광호텔]파크사이드호텔', '제주시시 제주시동', '690-011', '064-000-0000', '공항 5분거리', '14:00', '11:00', 'hotel (18).jpg', 'hotel (19).jpg', 'hotel (20).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (19, 'A0019', 'N', 'HTL', '제주휘슬락호텔', '제주시시 제주시동', '690-011', '064-000-0000', '공항근처 탑동해변공원 바다전망 추천 호텔', '14:00', '11:00', 'hotel (19).jpg', 'hotel (20).jpg', 'hotel (21).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (20, 'A0020', 'N', 'PNS', '올레N펜션', '제주시시 제주시동', '690-011', '064-000-0000', '전객실 특급바다 전망', '14:00', '11:00', 'hotel (20).jpg', 'hotel (21).jpg', 'hotel (22).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (21, 'A0021', 'N', 'PNS', '해마을펜션', '제주시시 제주시동', '690-011', '064-000-0000', '특급바다전망', '14:00', '11:00', 'hotel (21).jpg', 'hotel (22).jpg', 'hotel (23).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (22, 'A0022', 'N', 'RST', '로긴리조트', '제주시시 제주시동', '690-011', '064-000-0000', '★ 제주공항 10분거리 강력추천 ★', '14:00', '11:00', 'hotel (22).jpg', 'hotel (23).jpg', 'hotel (24).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (23, 'A0023', 'N', 'RST', '스완지리조트', '제주시시 제주시동', '690-011', '064-000-0000', '★공항 5분 거리★', '14:00', '11:00', 'hotel (23).jpg', 'hotel (24).jpg', 'hotel (25).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (24, 'A0024', 'N', 'RST', '아모렉스리조트', '제주시시 제주시동', '690-011', '064-000-0000', '제주공항 10분거리! ', '14:00', '11:00', 'hotel (24).jpg', 'hotel (25).jpg', 'hotel (26).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (25, 'A0025', 'N', 'RST', '캠퍼트리호텔앤리조트', '제주시시 제주시동', '690-011', '064-000-0000', '제주시내권 독채 추천 리조트', '14:00', '11:00', 'hotel (25).jpg', 'hotel (26).jpg', 'hotel (27).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (26, 'A0026', 'N', 'RST', '그림리조트', '제주시시 제주시동', '690-011', '064-000-0000', '조식무료제공★용담해안도로＆공항근처', '14:00', '11:00', 'hotel (26).jpg', 'hotel (27).jpg', 'hotel (28).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (27, 'A0027', 'N', 'VILL', '제주까르마EQ02', '제주시시 제주시동', '690-011', '064-000-0000', '그릴무료서비스★허니문예약시 케이크or와인 택1제공', '14:00', '11:00', 'hotel (27).jpg', 'hotel (28).jpg', 'hotel (29).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (28, 'A0028', 'S', 'HTL', '[특2급]호텔빠레브', '중문시 중문동', '690-011', '064-000-0000', '★ 중문권 5분거리 위치 특1급호텔 ★', '14:00', '11:00', 'hotel (28).jpg', 'hotel (29).jpg', 'hotel (30).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (29, 'A0029', 'S', 'HTL', '[5성급]서귀포칼호텔', '중문시 중문동', '690-011', '064-000-0000', '★계절별 다양한특전패키지!!★', '14:00', '11:00', 'hotel (29).jpg', 'hotel (30).jpg', 'hotel (31).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (30, 'A0030', 'S', 'HTL', '제주호텔연', '중문시 중문동', '690-011', '064-000-0000', '★서귀포항, 새연교 오션뷰!★', '14:00', '11:00', 'hotel (30).jpg', 'hotel (31).jpg', 'hotel (32).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (31, 'A0031', 'S', 'HTL', '라벤다호텔제주', '중문시 중문동', '690-011', '064-000-0000', '★서귀포항,천지연폭포,올레7코스 인근위치!★', '14:00', '11:00', 'hotel (31).jpg', 'hotel (32).jpg', 'hotel (33).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (32, 'A0032', 'S', 'HTL', '제주브릭스', '중문시 중문동', '690-011', '064-000-0000', '★전객실 오션뷰★', '14:00', '11:00', 'hotel (32).jpg', 'hotel (33).jpg', 'hotel (1).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (33, 'A0033', 'S', 'PNS', '이어도성', '중문시 중문동', '690-011', '064-000-0000', '중문시내 위치', '14:00', '11:00', 'hotel (33).jpg', 'hotel (1).jpg', 'hotel (2).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (34, 'A0034', 'S', 'RST', '신성리조트', '중문시 중문동', '690-011', '064-000-0000', '★서귀포/중문 추천리조트 ★', '14:00', '11:00', 'hotel (1).jpg', 'hotel (2).jpg', 'hotel (3).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (35, 'A0035', 'S', 'RST', '담모라리조트', '중문시 중문동', '690-011', '064-000-0000', '산방산 힐링 리조트', '14:00', '11:00', 'hotel (2).jpg', 'hotel (3).jpg', 'hotel (4).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (36, 'A0036', 'S', 'RST', '제주샤모니리조트', '중문시 중문동', '690-011', '064-000-0000', '서귀포 도심지와 중문관광단지인접', '14:00', '11:00', 'hotel (3).jpg', 'hotel (4).jpg', 'hotel (5).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (37, 'A0037', 'S', 'RST', '켄싱턴리조트서귀포점', '중문시 중문동', '690-011', '064-000-0000', '애슐리퀸즈PLUS오픈', '14:00', '11:00', 'hotel (4).jpg', 'hotel (5).jpg', 'hotel (6).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (38, 'A0038', 'S', 'RST', '스프링힐', '중문시 중문동', '690-011', '064-000-0000', '이국적인정원,중문관광단지', '14:00', '11:00', 'hotel (5).jpg', 'hotel (6).jpg', 'hotel (7).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (39, 'A0039', 'S', 'RST', '에띠에리조트', '중문시 중문동', '690-011', '064-000-0000', '전객실 범섬, 서건도 전망', '14:00', '11:00', 'hotel (6).jpg', 'hotel (7).jpg', 'hotel (8).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (40, 'A0040', 'S', 'RST', '더세리리조트(더쎄리리조트)', '중문시 중문동', '690-011', '064-000-0000', '투숙객 미로공원(세리월드) 무료입장', '14:00', '11:00', 'hotel (7).jpg', 'hotel (8).jpg', 'hotel (9).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (41, 'A0041', 'W', 'HTL', '리치호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '★전객실 오션뷰', '14:00', '11:00', 'hotel (8).jpg', 'hotel (9).jpg', 'hotel (10).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (42, 'A0042', 'W', 'HTL', '디아넥스호텔', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '객실 내 미니바 무료 제공(1일 1회 제공)', '14:00', '11:00', 'hotel (9).jpg', 'hotel (10).jpg', 'hotel (11).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (43, 'A0043', 'W', 'HTL', '제주스카이호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '곽지해수욕장 차량 3분', '14:00', '11:00', 'hotel (10).jpg', 'hotel (11).jpg', 'hotel (12).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (44, 'A0044', 'W', 'HTL', '[특2급]다인오세아노호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '루프탑 사계절 미온수풀! 특급바다전망~★', '14:00', '11:00', 'hotel (11).jpg', 'hotel (12).jpg', 'hotel (13).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (45, 'A0045', 'W', 'HTL', '포도호텔', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '미니바무료, 웰컴과일 제공', '14:00', '11:00', 'hotel (12).jpg', 'hotel (13).jpg', 'hotel (14).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (46, 'A0046', 'W', 'HTL', '[가족호텔]빌라드애월호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '애월 해안도로 위치', '14:00', '11:00', 'hotel (13).jpg', 'hotel (14).jpg', 'hotel (15).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (47, 'A0047', 'W', 'HTL', '[특2급]유니호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '애월해안도로 위치, 인원추가비용 무료', '14:00', '11:00', 'hotel (14).jpg', 'hotel (15).jpg', 'hotel (16).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (48, 'A0048', 'W', 'HTL', '큐티파이호텔', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '애월해안도로 위치,제주공항 차량 25분', '14:00', '11:00', 'hotel (15).jpg', 'hotel (16).jpg', 'hotel (17).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (49, 'A0049', 'W', 'PNS', '애월브릭하우스', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '애월해안도로 위치', '14:00', '11:00', 'hotel (16).jpg', 'hotel (17).jpg', 'hotel (18).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (50, 'A0050', 'W', 'PNS', '오름펜션', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '저지오름 입구 위치', '14:00', '11:00', 'hotel (17).jpg', 'hotel (18).jpg', 'hotel (19).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (51, 'A0051', 'W', 'PNS', '지금여기에', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '전 객실 바다전망', '14:00', '11:00', 'hotel (18).jpg', 'hotel (19).jpg', 'hotel (20).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (52, 'A0052', 'W', 'PNS', '이쁜새펜션', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '전 객실 바다전망 숙소', '14:00', '11:00', 'hotel (19).jpg', 'hotel (20).jpg', 'hotel (21).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (53, 'A0053', 'W', 'PNS', '나인스파빌', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '조식무료제공★전객실 최고급 스파 완비', '14:00', '11:00', 'hotel (20).jpg', 'hotel (21).jpg', 'hotel (22).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (54, 'A0054', 'W', 'PNS', '조유암펜션', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '직접만든 더치커피 500ml 1병 증정', '14:00', '11:00', 'hotel (21).jpg', 'hotel (22).jpg', 'hotel (23).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (55, 'A0055', 'W', 'PNS', '대성휴양빌리지', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '친환경 독채펜션', '14:00', '11:00', 'hotel (22).jpg', 'hotel (23).jpg', 'hotel (24).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (56, 'A0056', 'W', 'RST', '롯데아트빌라스', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '유명건축가들의 예술혼이 담긴 최고급리조트', '14:00', '11:00', 'hotel (23).jpg', 'hotel (24).jpg', 'hotel (25).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (57, 'A0057', 'W', 'RST', '콤마앤스파리조트', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '전 객실 프리미엄 JAXSON 스파 욕조', '14:00', '11:00', 'hotel (24).jpg', 'hotel (25).jpg', 'hotel (26).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (58, 'A0058', 'W', 'RST', '썬앤문리조트', '서귀포시 서부시 서귀포시 서부동', '690-011', '064-000-0000', '조식무료제공', '14:00', '11:00', 'hotel (25).jpg', 'hotel (26).jpg', 'hotel (27).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (59, 'A0059', 'W', 'RST', '하모니리조트', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '협재해변 인근! ', '14:00', '11:00', 'hotel (26).jpg', 'hotel (27).jpg', 'hotel (1).jpg', 'sa');
insert into t_hotel_info(hotel_idx, hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_img1, hotel_img2, hotel_img3, hotel_reg_id) values (60, 'A0060', 'W', 'VILL', '나미브 빌', '제주시 서부시 제주시 서부동', '690-011', '064-000-0000', '노을이 아름다운 판포리', '14:00', '11:00', 'hotel (27).jpg', 'hotel (1).jpg', 'hotel (2).jpg', 'sa');
update t_hotel_info set hotel_open_yn = 'y';

/* === 방 정보 === */
truncate t_room_info;
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0001', 'A0001', 'CTR', 5, 'EQ15, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 226000, 58, 93800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0002', 'A0002', 'CTR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 100000, 39, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0003', 'A0003', 'CTR', 5, 'EQ17, EQ08, EQ09, EQ11', ' ', 2, 6, 140000, 64, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0004', 'A0004', 'CTR', 5, 'EQ17, EQ08, EQ11', ' ', 2, 4, 90000, 38, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0005', 'A0005', 'CTR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11, EQ02', ' ', 2, 4, 330000, 75, 81800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0006', 'A0006', 'DBR', 5, 'EQ05, EQ17, EQ14, EQ11, EQ04', '', 2, 4, 140000, 46, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0007', 'A0007', 'DBR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 230000, 83, 39000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0008', 'A0008', 'DBR', 5, 'EQ08, EQ09, EQ16, EQ11', ' ', 2, 4, 66000, 55, 30000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0009', 'A0009', 'DBR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 1100000, 72, 313000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0010', 'A0010', 'DBR', 5, 'EQ12, EQ08, EQ09, EQ14, EQ10, EQ11, EQ07', ' ', 2, 4, 363000, 45, 199000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0011', 'A0011', 'DBR', 5, 'EQ12, EQ13, EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 550000, 50, 275000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0012', 'A0012', 'DBR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 900000, 70, 272000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0013', 'A0013', 'DBR', 5, 'EQ12, EQ18, EQ13, EQ17, EQ10, EQ03', ' ', 2, 4, 310000, 49, 159000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0014', 'A0014', 'DBR', 5, 'EQ13, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0015', 'A0015', 'DXR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 620000, 46, 333000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0016', 'A0016', 'DXR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0017', 'A0017', 'DXR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 130000, 65, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0018', 'A0018', 'DXR', 5, 'EQ13, EQ09, EQ14, EQ11', ' ', 2, 4, 242000, 66, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0019', 'A0019', 'DXR', 5, 'EQ13, EQ17, EQ09', '', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0020', 'A0020', 'DXR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 65000, 15, 55000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0021', 'A0021', 'DXR', 5, 'EQ15, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 320000, 74, 84000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0022', 'A0022', 'DXR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 260000, 74, 68000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0023', 'A0023', 'DXR', 5, 'EQ15, EQ13, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 550000, 56, 244000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0024', 'A0024', 'ECR', 5, 'EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 65, 115000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0025', 'A0025', 'ECR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 242000, 75, 61600, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0026', 'A0026', 'ECR', 5, 'EQ12, EQ15, EQ18, EQ09, EQ01, EQ11, EQ03', ' ', 2, 4, 2600000, 71, 761000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0027', 'A0027', 'ECR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', '', 2, 4, 508000, 66, 171000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0028', 'A0028', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ10, EQ11', ' ', 2, 4, 150000, 66, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0029', 'A0029', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 80000, 39, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0030', 'A0030', 'ECR', 5, 'EQ15, EQ01, EQ10, EQ11', '', 2, 4, 242000, 70, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0031', 'A0031', 'ECR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ06', ' ', 2, 4, 330000, 50, 166000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0032', 'A0032', 'ECR', 5, 'EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 120000, 59, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0033', 'A0033', 'FMR', 5, 'EQ05, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 41, 194000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0034', 'A0034', 'FMR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ01, EQ14, EQ16, EQ11, EQ04, EQ02', ' ', 2, 4, 450000, 48, 233000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0035', 'A0035', 'FMR', 5, 'EQ12, EQ17, EQ09, EQ04', '', 2, 4, 800000, 74, 210000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0036', 'A0036', 'FMR', 5, 'EQ15, EQ05, EQ16, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 275000, 73, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0037', 'A0037', 'FMR', 5, 'EQ17, EQ08, EQ09, EQ03', '', 2, 4, 120000, 39, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0038', 'A0038', 'FMR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 110000, 55, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0039', 'A0039', 'SBR', 5, 'EQ08, EQ09, EQ11, EQ03', ' ', 2, 4, 242000, 77, 56000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0040', 'A0040', 'SBR', 5, 'EQ09, EQ11, EQ03', '', 2, 4, 160000, 62, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0041', 'A0041', 'SBR', 5, 'EQ09, EQ16, EQ11, EQ03', ' ', 2, 4, 280000, 76, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0042', 'A0042', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 150000, 55, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0043', 'A0043', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 17, 133000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0044', 'A0044', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 59, 134000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0045', 'A0045', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 130000, 61, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0046', 'A0046', 'SBR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ03', ' ', 2, 4, 140000, 44, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0047', 'A0047', 'SBR', 5, 'EQ15, EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 300000, 62, 113000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0048', 'A0048', 'SBR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 150000, 41, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0049', 'A0049', 'SDR', 5, 'EQ05, EQ09, EQ01, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 260000, 72, 72000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0050', 'A0050', 'SDR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 100000, 55, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0051', 'A0051', 'SDR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 605000, 34, 402000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0052', 'A0052', 'SDR', 5, 'EQ12, EQ18, EQ13, EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ02', ' ', 2, 4, 385000, 25, 290000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0053', 'A0053', 'SDR', 5, 'EQ13, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 270000, 71, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0054', 'A0054', 'SDR', 5, 'EQ13, EQ14, EQ10, EQ11', ' ', 2, 4, 330000, 66, 112000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0055', 'A0055', 'SDR', 5, 'EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0056', 'A0056', 'SDR', 5, 'EQ15, EQ13, EQ08, EQ09, EQ01, EQ10, EQ11', '', 2, 4, 75000, 47, 39800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0057', 'A0057', 'SDR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 300000, 86, 41000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0058', 'A0058', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 70000, 46, 38000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0059', 'A0059', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11, EQ03', ' ', 2, 4, 100000, 38, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0060', 'A0060', 'SPR', 5, 'EQ08, EQ09, EQ10, EQ03', ' ', 2, 4, 66000, 50, 33000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0061', 'A0001', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 260000, 72, 73000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0062', 'A0002', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 150000, 51, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0063', 'A0003', 'SPR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 16, 135000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0064', 'A0004', 'SPR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 605000, 32, 410000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0065', 'A0005', 'SPR', 5, 'EQ13, EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ06', '', 2, 4, 250000, 78, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0066', 'A0006', 'SPR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ10, EQ11, EQ03', '', 2, 4, 500000, 40, 300000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0067', 'A0007', 'SPR', 5, 'EQ15, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 231000, 67, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0068', 'A0008', 'SPR', 5, 'EQ15, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 140000, 60, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0069', 'A0009', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ14, EQ10, EQ11, EQ03, EQ07', ' ', 2, 4, 330000, 64, 119000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0070', 'A0010', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 100000, 45, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0071', 'A0011', 'STR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11', ' ', 2, 4, 245000, 76, 60000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0072', 'A0012', 'STR', 5, 'EQ05, EQ17, EQ09, EQ11', '', 2, 4, 180000, 66, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0073', 'A0013', 'STR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 198000, 63, 74000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0074', 'A0014', 'STR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ14', ' ', 2, 4, 100000, 44, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0075', 'A0015', 'STR', 5, 'EQ12, EQ13, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03', ' ', 2, 4, 200000, 49, 103000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0076', 'A0016', 'STR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ04', ' ', 2, 4, 605000, 29, 432000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0077', 'A0017', 'STR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ03', ' ', 2, 4, 120000, 58, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0078', 'A0018', 'STR', 5, 'EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 600000, 34, 399000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0079', 'A0019', 'STR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 700000, 68, 222000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0080', 'A0020', 'STR', 5, 'EQ15, EQ18, EQ13, EQ14, EQ11, EQ03', '', 2, 4, 150000, 7, 140000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0081', 'A0021', 'STR', 5, 'EQ17, EQ09, EQ14, EQ11, EQ03', '', 2, 4, 150000, 50, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0082', 'A0022', 'STR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 120000, 36, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0083', 'A0023', 'TPR', 5, 'EQ05, EQ09, EQ11, EQ03', ' ', 2, 4, 150000, 45, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0084', 'A0024', 'TPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 250000, 83, 43000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0085', 'A0025', 'TPR', 5, 'EQ12, EQ05, EQ17, EQ09, EQ11', '', 2, 4, 150000, 18, 123000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0086', 'A0026', 'TPR', 5, 'EQ12, EQ15, EQ17, EQ09', '', 2, 4, 115000, 23, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0087', 'A0027', 'TPR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 66, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0088', 'A0028', 'TPR', 5, 'EQ15, EQ18, EQ13, EQ05, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 470000, 64, 169000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0089', 'A0029', 'WBR', 5, 'EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 130000, 39, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0090', 'A0030', 'WBR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09', '', 2, 4, 140000, 68, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0091', 'A0031', 'WBR', 5, 'EQ12, EQ13, EQ17, EQ09', ' ', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0092', 'A0032', 'WBR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 363000, 60, 146000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0093', 'A0033', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09', '', 2, 6, 150000, 56, 66000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0094', 'A0034', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0095', 'A0035', 'WBR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ11, EQ03', ' ', 2, 6, 200000, 73, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0096', 'A0036', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ03, EQ07', '', 2, 4, 200000, 70, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0097', 'A0037', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 60, 133000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0098', 'A0038', 'WBR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ03', ' ', 2, 4, 100000, 54, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0099', 'A0039', 'WBR', 5, 'EQ18, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 550000, 71, 160000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0100', 'A0040', 'CTR', 5, 'EQ15, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 226000, 58, 93800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0101', 'A0041', 'CTR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 100000, 39, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0102', 'A0042', 'CTR', 5, 'EQ17, EQ08, EQ09, EQ11', ' ', 2, 6, 140000, 64, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0103', 'A0043', 'CTR', 5, 'EQ17, EQ08, EQ11', ' ', 2, 4, 90000, 38, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0104', 'A0044', 'CTR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11, EQ02', ' ', 2, 4, 330000, 75, 81800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0105', 'A0045', 'DBR', 5, 'EQ05, EQ17, EQ14, EQ11, EQ04', '', 2, 4, 140000, 46, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0106', 'A0046', 'DBR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 230000, 83, 39000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0107', 'A0047', 'DBR', 5, 'EQ08, EQ09, EQ16, EQ11', ' ', 2, 4, 66000, 55, 30000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0108', 'A0048', 'DBR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 1100000, 72, 313000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0109', 'A0049', 'DBR', 5, 'EQ12, EQ08, EQ09, EQ14, EQ10, EQ11, EQ07', ' ', 2, 4, 363000, 45, 199000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0110', 'A0050', 'DBR', 5, 'EQ12, EQ13, EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 550000, 50, 275000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0111', 'A0051', 'DBR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 900000, 70, 272000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0112', 'A0052', 'DBR', 5, 'EQ12, EQ18, EQ13, EQ17, EQ10, EQ03', ' ', 2, 4, 310000, 49, 159000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0113', 'A0053', 'DBR', 5, 'EQ13, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0114', 'A0054', 'DXR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 620000, 46, 333000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0115', 'A0055', 'DXR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0116', 'A0056', 'DXR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 130000, 65, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0117', 'A0057', 'DXR', 5, 'EQ13, EQ09, EQ14, EQ11', ' ', 2, 4, 242000, 66, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0118', 'A0058', 'DXR', 5, 'EQ13, EQ17, EQ09', '', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0119', 'A0059', 'DXR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 65000, 15, 55000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0120', 'A0060', 'DXR', 5, 'EQ15, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 320000, 74, 84000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0121', 'A0001', 'DXR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 260000, 74, 68000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0122', 'A0002', 'DXR', 5, 'EQ15, EQ13, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 550000, 56, 244000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0123', 'A0003', 'ECR', 5, 'EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 65, 115000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0124', 'A0004', 'ECR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 242000, 75, 61600, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0125', 'A0005', 'ECR', 5, 'EQ12, EQ15, EQ18, EQ09, EQ01, EQ11, EQ03', ' ', 2, 4, 2600000, 71, 761000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0126', 'A0006', 'ECR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', '', 2, 4, 508000, 66, 171000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0127', 'A0007', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ10, EQ11', ' ', 2, 4, 150000, 66, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0128', 'A0008', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 80000, 39, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0129', 'A0009', 'ECR', 5, 'EQ15, EQ01, EQ10, EQ11', '', 2, 4, 242000, 70, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0130', 'A0010', 'ECR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ06', ' ', 2, 4, 330000, 50, 166000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0131', 'A0011', 'ECR', 5, 'EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 120000, 59, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0132', 'A0012', 'FMR', 5, 'EQ05, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 41, 194000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0133', 'A0013', 'FMR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ01, EQ14, EQ16, EQ11, EQ04, EQ02', ' ', 2, 4, 450000, 48, 233000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0134', 'A0014', 'FMR', 5, 'EQ12, EQ17, EQ09, EQ04', '', 2, 4, 800000, 74, 210000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0135', 'A0015', 'FMR', 5, 'EQ15, EQ05, EQ16, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 275000, 73, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0136', 'A0016', 'FMR', 5, 'EQ17, EQ08, EQ09, EQ03', '', 2, 4, 120000, 39, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0137', 'A0017', 'FMR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 110000, 55, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0138', 'A0018', 'SBR', 5, 'EQ08, EQ09, EQ11, EQ03', ' ', 2, 4, 242000, 77, 56000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0139', 'A0019', 'SBR', 5, 'EQ09, EQ11, EQ03', '', 2, 4, 160000, 62, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0140', 'A0020', 'SBR', 5, 'EQ09, EQ16, EQ11, EQ03', ' ', 2, 4, 280000, 76, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0141', 'A0021', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 150000, 55, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0142', 'A0022', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 17, 133000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0143', 'A0023', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 59, 134000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0144', 'A0024', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 130000, 61, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0145', 'A0025', 'SBR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ03', ' ', 2, 4, 140000, 44, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0146', 'A0026', 'SBR', 5, 'EQ15, EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 300000, 62, 113000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0147', 'A0027', 'SBR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 150000, 41, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0148', 'A0028', 'SDR', 5, 'EQ05, EQ09, EQ01, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 260000, 72, 72000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0149', 'A0029', 'SDR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 100000, 55, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0150', 'A0030', 'SDR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 605000, 34, 402000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0151', 'A0031', 'SDR', 5, 'EQ12, EQ18, EQ13, EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ02', ' ', 2, 4, 385000, 25, 290000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0152', 'A0032', 'SDR', 5, 'EQ13, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 270000, 71, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0153', 'A0033', 'SDR', 5, 'EQ13, EQ14, EQ10, EQ11', ' ', 2, 4, 330000, 66, 112000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0154', 'A0034', 'SDR', 5, 'EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0155', 'A0035', 'SDR', 5, 'EQ15, EQ13, EQ08, EQ09, EQ01, EQ10, EQ11', '', 2, 4, 75000, 47, 39800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0156', 'A0036', 'SDR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 300000, 86, 41000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0157', 'A0037', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 70000, 46, 38000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0158', 'A0038', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11, EQ03', ' ', 2, 4, 100000, 38, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0159', 'A0039', 'SPR', 5, 'EQ08, EQ09, EQ10, EQ03', ' ', 2, 4, 66000, 50, 33000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0160', 'A0040', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 260000, 72, 73000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0161', 'A0041', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 150000, 51, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0162', 'A0042', 'SPR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 16, 135000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0163', 'A0043', 'SPR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 605000, 32, 410000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0164', 'A0044', 'SPR', 5, 'EQ13, EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ06', '', 2, 4, 250000, 78, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0165', 'A0045', 'SPR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ10, EQ11, EQ03', '', 2, 4, 500000, 40, 300000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0166', 'A0046', 'SPR', 5, 'EQ15, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 231000, 67, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0167', 'A0047', 'SPR', 5, 'EQ15, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 140000, 60, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0168', 'A0048', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ14, EQ10, EQ11, EQ03, EQ07', ' ', 2, 4, 330000, 64, 119000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0169', 'A0049', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 100000, 45, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0170', 'A0050', 'STR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11', ' ', 2, 4, 245000, 76, 60000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0171', 'A0051', 'STR', 5, 'EQ05, EQ17, EQ09, EQ11', '', 2, 4, 180000, 66, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0172', 'A0052', 'STR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 198000, 63, 74000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0173', 'A0053', 'STR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ14', ' ', 2, 4, 100000, 44, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0174', 'A0054', 'STR', 5, 'EQ12, EQ13, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03', ' ', 2, 4, 200000, 49, 103000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0175', 'A0055', 'STR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ04', ' ', 2, 4, 605000, 29, 432000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0176', 'A0056', 'STR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ03', ' ', 2, 4, 120000, 58, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0177', 'A0057', 'STR', 5, 'EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 600000, 34, 399000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0178', 'A0058', 'STR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 700000, 68, 222000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0179', 'A0059', 'STR', 5, 'EQ15, EQ18, EQ13, EQ14, EQ11, EQ03', '', 2, 4, 150000, 7, 140000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0180', 'A0060', 'STR', 5, 'EQ17, EQ09, EQ14, EQ11, EQ03', '', 2, 4, 150000, 50, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0181', 'A0001', 'STR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 120000, 36, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0182', 'A0002', 'TPR', 5, 'EQ05, EQ09, EQ11, EQ03', ' ', 2, 4, 150000, 45, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0183', 'A0003', 'TPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 250000, 83, 43000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0184', 'A0004', 'TPR', 5, 'EQ12, EQ05, EQ17, EQ09, EQ11', '', 2, 4, 150000, 18, 123000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0185', 'A0005', 'TPR', 5, 'EQ12, EQ15, EQ17, EQ09', '', 2, 4, 115000, 23, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0186', 'A0006', 'TPR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 66, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0187', 'A0007', 'TPR', 5, 'EQ15, EQ18, EQ13, EQ05, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 470000, 64, 169000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0188', 'A0008', 'WBR', 5, 'EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 130000, 39, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0189', 'A0009', 'WBR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09', '', 2, 4, 140000, 68, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0190', 'A0010', 'WBR', 5, 'EQ12, EQ13, EQ17, EQ09', ' ', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0191', 'A0011', 'WBR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 363000, 60, 146000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0192', 'A0012', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09', '', 2, 6, 150000, 56, 66000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0193', 'A0013', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0194', 'A0014', 'WBR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ11, EQ03', ' ', 2, 6, 200000, 73, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0195', 'A0015', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ03, EQ07', '', 2, 4, 200000, 70, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0196', 'A0016', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 60, 133000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0197', 'A0017', 'WBR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ03', ' ', 2, 4, 100000, 54, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0198', 'A0018', 'WBR', 5, 'EQ18, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 550000, 71, 160000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0199', 'A0019', 'CTR', 5, 'EQ15, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 226000, 58, 93800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0200', 'A0020', 'CTR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 100000, 39, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0201', 'A0021', 'CTR', 5, 'EQ17, EQ08, EQ09, EQ11', ' ', 2, 6, 140000, 64, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0202', 'A0022', 'CTR', 5, 'EQ17, EQ08, EQ11', ' ', 2, 4, 90000, 38, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0203', 'A0023', 'CTR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11, EQ02', ' ', 2, 4, 330000, 75, 81800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0204', 'A0024', 'DBR', 5, 'EQ05, EQ17, EQ14, EQ11, EQ04', '', 2, 4, 140000, 46, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0205', 'A0025', 'DBR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 230000, 83, 39000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0206', 'A0026', 'DBR', 5, 'EQ08, EQ09, EQ16, EQ11', ' ', 2, 4, 66000, 55, 30000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0207', 'A0027', 'DBR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 1100000, 72, 313000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0208', 'A0028', 'DBR', 5, 'EQ12, EQ08, EQ09, EQ14, EQ10, EQ11, EQ07', ' ', 2, 4, 363000, 45, 199000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0209', 'A0029', 'DBR', 5, 'EQ12, EQ13, EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 550000, 50, 275000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0210', 'A0030', 'DBR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 900000, 70, 272000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0211', 'A0031', 'DBR', 5, 'EQ12, EQ18, EQ13, EQ17, EQ10, EQ03', ' ', 2, 4, 310000, 49, 159000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0212', 'A0032', 'DBR', 5, 'EQ13, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0213', 'A0033', 'DXR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 620000, 46, 333000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0214', 'A0034', 'DXR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0215', 'A0035', 'DXR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 130000, 65, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0216', 'A0036', 'DXR', 5, 'EQ13, EQ09, EQ14, EQ11', ' ', 2, 4, 242000, 66, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0217', 'A0037', 'DXR', 5, 'EQ13, EQ17, EQ09', '', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0218', 'A0038', 'DXR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 65000, 15, 55000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0219', 'A0039', 'DXR', 5, 'EQ15, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 320000, 74, 84000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0220', 'A0040', 'DXR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 260000, 74, 68000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0221', 'A0041', 'DXR', 5, 'EQ15, EQ13, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 550000, 56, 244000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0222', 'A0042', 'ECR', 5, 'EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 65, 115000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0223', 'A0043', 'ECR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 242000, 75, 61600, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0224', 'A0044', 'ECR', 5, 'EQ12, EQ15, EQ18, EQ09, EQ01, EQ11, EQ03', ' ', 2, 4, 2600000, 71, 761000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0225', 'A0045', 'ECR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', '', 2, 4, 508000, 66, 171000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0226', 'A0046', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ10, EQ11', ' ', 2, 4, 150000, 66, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0227', 'A0047', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 80000, 39, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0228', 'A0048', 'ECR', 5, 'EQ15, EQ01, EQ10, EQ11', '', 2, 4, 242000, 70, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0229', 'A0049', 'ECR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ06', ' ', 2, 4, 330000, 50, 166000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0230', 'A0050', 'ECR', 5, 'EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 120000, 59, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0231', 'A0051', 'FMR', 5, 'EQ05, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 41, 194000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0232', 'A0052', 'FMR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ01, EQ14, EQ16, EQ11, EQ04, EQ02', ' ', 2, 4, 450000, 48, 233000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0233', 'A0053', 'FMR', 5, 'EQ12, EQ17, EQ09, EQ04', '', 2, 4, 800000, 74, 210000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0234', 'A0054', 'FMR', 5, 'EQ15, EQ05, EQ16, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 275000, 73, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0235', 'A0055', 'FMR', 5, 'EQ17, EQ08, EQ09, EQ03', '', 2, 4, 120000, 39, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0236', 'A0056', 'FMR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 110000, 55, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0237', 'A0057', 'SBR', 5, 'EQ08, EQ09, EQ11, EQ03', ' ', 2, 4, 242000, 77, 56000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0238', 'A0058', 'SBR', 5, 'EQ09, EQ11, EQ03', '', 2, 4, 160000, 62, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0239', 'A0059', 'SBR', 5, 'EQ09, EQ16, EQ11, EQ03', ' ', 2, 4, 280000, 76, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0240', 'A0060', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 150000, 55, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0241', 'A0001', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 17, 133000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0242', 'A0002', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 59, 134000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0243', 'A0003', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 130000, 61, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0244', 'A0004', 'SBR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ03', ' ', 2, 4, 140000, 44, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0245', 'A0005', 'SBR', 5, 'EQ15, EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 300000, 62, 113000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0246', 'A0006', 'SBR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 150000, 41, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0247', 'A0007', 'SDR', 5, 'EQ05, EQ09, EQ01, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 260000, 72, 72000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0248', 'A0008', 'SDR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 100000, 55, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0249', 'A0009', 'SDR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 605000, 34, 402000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0250', 'A0010', 'SDR', 5, 'EQ12, EQ18, EQ13, EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ02', ' ', 2, 4, 385000, 25, 290000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0251', 'A0011', 'SDR', 5, 'EQ13, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 270000, 71, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0252', 'A0012', 'SDR', 5, 'EQ13, EQ14, EQ10, EQ11', ' ', 2, 4, 330000, 66, 112000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0253', 'A0013', 'SDR', 5, 'EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0254', 'A0014', 'SDR', 5, 'EQ15, EQ13, EQ08, EQ09, EQ01, EQ10, EQ11', '', 2, 4, 75000, 47, 39800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0255', 'A0015', 'SDR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 300000, 86, 41000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0256', 'A0016', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 70000, 46, 38000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0257', 'A0017', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11, EQ03', ' ', 2, 4, 100000, 38, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0258', 'A0018', 'SPR', 5, 'EQ08, EQ09, EQ10, EQ03', ' ', 2, 4, 66000, 50, 33000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0259', 'A0019', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 260000, 72, 73000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0260', 'A0020', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 150000, 51, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0261', 'A0021', 'SPR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 16, 135000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0262', 'A0022', 'SPR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 605000, 32, 410000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0263', 'A0023', 'SPR', 5, 'EQ13, EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ06', '', 2, 4, 250000, 78, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0264', 'A0024', 'SPR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ10, EQ11, EQ03', '', 2, 4, 500000, 40, 300000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0265', 'A0025', 'SPR', 5, 'EQ15, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 231000, 67, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0266', 'A0026', 'SPR', 5, 'EQ15, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 140000, 60, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0267', 'A0027', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ14, EQ10, EQ11, EQ03, EQ07', ' ', 2, 4, 330000, 64, 119000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0268', 'A0028', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 100000, 45, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0269', 'A0029', 'STR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11', ' ', 2, 4, 245000, 76, 60000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0270', 'A0030', 'STR', 5, 'EQ05, EQ17, EQ09, EQ11', '', 2, 4, 180000, 66, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0271', 'A0031', 'STR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 198000, 63, 74000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0272', 'A0032', 'STR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ14', ' ', 2, 4, 100000, 44, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0273', 'A0033', 'STR', 5, 'EQ12, EQ13, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03', ' ', 2, 4, 200000, 49, 103000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0274', 'A0034', 'STR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ04', ' ', 2, 4, 605000, 29, 432000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0275', 'A0035', 'STR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ03', ' ', 2, 4, 120000, 58, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0276', 'A0036', 'STR', 5, 'EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 600000, 34, 399000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0277', 'A0037', 'STR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 700000, 68, 222000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0278', 'A0038', 'STR', 5, 'EQ15, EQ18, EQ13, EQ14, EQ11, EQ03', '', 2, 4, 150000, 7, 140000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0279', 'A0039', 'STR', 5, 'EQ17, EQ09, EQ14, EQ11, EQ03', '', 2, 4, 150000, 50, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0280', 'A0040', 'STR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 120000, 36, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0281', 'A0041', 'TPR', 5, 'EQ05, EQ09, EQ11, EQ03', ' ', 2, 4, 150000, 45, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0282', 'A0042', 'TPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 250000, 83, 43000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0283', 'A0043', 'TPR', 5, 'EQ12, EQ05, EQ17, EQ09, EQ11', '', 2, 4, 150000, 18, 123000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0284', 'A0044', 'TPR', 5, 'EQ12, EQ15, EQ17, EQ09', '', 2, 4, 115000, 23, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0285', 'A0045', 'TPR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 66, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0286', 'A0046', 'TPR', 5, 'EQ15, EQ18, EQ13, EQ05, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 470000, 64, 169000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0287', 'A0047', 'WBR', 5, 'EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 130000, 39, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0288', 'A0048', 'WBR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09', '', 2, 4, 140000, 68, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0289', 'A0049', 'WBR', 5, 'EQ12, EQ13, EQ17, EQ09', ' ', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0290', 'A0050', 'WBR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 363000, 60, 146000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0291', 'A0051', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09', '', 2, 6, 150000, 56, 66000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0292', 'A0052', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0293', 'A0053', 'WBR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ11, EQ03', ' ', 2, 6, 200000, 73, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0294', 'A0054', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ03, EQ07', '', 2, 4, 200000, 70, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0295', 'A0055', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 60, 133000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0296', 'A0056', 'WBR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ03', ' ', 2, 4, 100000, 54, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0297', 'A0057', 'WBR', 5, 'EQ18, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 550000, 71, 160000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0298', 'A0058', 'CTR', 5, 'EQ15, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 226000, 58, 93800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0299', 'A0059', 'CTR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 100000, 39, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0300', 'A0060', 'CTR', 5, 'EQ17, EQ08, EQ09, EQ11', ' ', 2, 6, 140000, 64, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0301', 'A0001', 'CTR', 5, 'EQ17, EQ08, EQ11', ' ', 2, 4, 90000, 38, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0302', 'A0002', 'CTR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11, EQ02', ' ', 2, 4, 330000, 75, 81800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0303', 'A0003', 'DBR', 5, 'EQ05, EQ17, EQ14, EQ11, EQ04', '', 2, 4, 140000, 46, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0304', 'A0004', 'DBR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 230000, 83, 39000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0305', 'A0005', 'DBR', 5, 'EQ08, EQ09, EQ16, EQ11', ' ', 2, 4, 66000, 55, 30000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0306', 'A0006', 'DBR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 1100000, 72, 313000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0307', 'A0007', 'DBR', 5, 'EQ12, EQ08, EQ09, EQ14, EQ10, EQ11, EQ07', ' ', 2, 4, 363000, 45, 199000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0308', 'A0008', 'DBR', 5, 'EQ12, EQ13, EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 550000, 50, 275000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0309', 'A0009', 'DBR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 900000, 70, 272000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0310', 'A0010', 'DBR', 5, 'EQ12, EQ18, EQ13, EQ17, EQ10, EQ03', ' ', 2, 4, 310000, 49, 159000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0311', 'A0011', 'DBR', 5, 'EQ13, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0312', 'A0012', 'DXR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 620000, 46, 333000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0313', 'A0013', 'DXR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0314', 'A0014', 'DXR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 130000, 65, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0315', 'A0015', 'DXR', 5, 'EQ13, EQ09, EQ14, EQ11', ' ', 2, 4, 242000, 66, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0316', 'A0016', 'DXR', 5, 'EQ13, EQ17, EQ09', '', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0317', 'A0017', 'DXR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 65000, 15, 55000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0318', 'A0018', 'DXR', 5, 'EQ15, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 320000, 74, 84000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0319', 'A0019', 'DXR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 260000, 74, 68000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0320', 'A0020', 'DXR', 5, 'EQ15, EQ13, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 550000, 56, 244000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0321', 'A0021', 'ECR', 5, 'EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 65, 115000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0322', 'A0022', 'ECR', 5, 'EQ09, EQ01, EQ14, EQ10, EQ11', ' ', 2, 4, 242000, 75, 61600, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0323', 'A0023', 'ECR', 5, 'EQ12, EQ15, EQ18, EQ09, EQ01, EQ11, EQ03', ' ', 2, 4, 2600000, 71, 761000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0324', 'A0024', 'ECR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', '', 2, 4, 508000, 66, 171000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0325', 'A0025', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ10, EQ11', ' ', 2, 4, 150000, 66, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0326', 'A0026', 'ECR', 5, 'EQ13, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 80000, 39, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0327', 'A0027', 'ECR', 5, 'EQ15, EQ01, EQ10, EQ11', '', 2, 4, 242000, 70, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0328', 'A0028', 'ECR', 5, 'EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ06', ' ', 2, 4, 330000, 50, 166000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0329', 'A0029', 'ECR', 5, 'EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 120000, 59, 49000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0330', 'A0030', 'FMR', 5, 'EQ05, EQ08, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 330000, 41, 194000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0331', 'A0031', 'FMR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ01, EQ14, EQ16, EQ11, EQ04, EQ02', ' ', 2, 4, 450000, 48, 233000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0332', 'A0032', 'FMR', 5, 'EQ12, EQ17, EQ09, EQ04', '', 2, 4, 800000, 74, 210000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0333', 'A0033', 'FMR', 5, 'EQ15, EQ05, EQ16, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 275000, 73, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0334', 'A0034', 'FMR', 5, 'EQ17, EQ08, EQ09, EQ03', '', 2, 4, 120000, 39, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0335', 'A0035', 'FMR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 110000, 55, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0336', 'A0036', 'SBR', 5, 'EQ08, EQ09, EQ11, EQ03', ' ', 2, 4, 242000, 77, 56000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0337', 'A0037', 'SBR', 5, 'EQ09, EQ11, EQ03', '', 2, 4, 160000, 62, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0338', 'A0038', 'SBR', 5, 'EQ09, EQ16, EQ11, EQ03', ' ', 2, 4, 280000, 76, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0339', 'A0039', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 150000, 55, 67000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0340', 'A0040', 'SBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 17, 133000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0341', 'A0041', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 59, 134000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0342', 'A0042', 'SBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 130000, 61, 51000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0343', 'A0043', 'SBR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ03', ' ', 2, 4, 140000, 44, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0344', 'A0044', 'SBR', 5, 'EQ15, EQ13, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11', '', 2, 4, 300000, 62, 113000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0345', 'A0045', 'SBR', 5, 'EQ17, EQ09, EQ11', '', 2, 4, 150000, 41, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0346', 'A0046', 'SDR', 5, 'EQ05, EQ09, EQ01, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 260000, 72, 72000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0347', 'A0047', 'SDR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 100000, 55, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0348', 'A0048', 'SDR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ04', ' ', 2, 4, 605000, 34, 402000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0349', 'A0049', 'SDR', 5, 'EQ12, EQ18, EQ13, EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ02', ' ', 2, 4, 385000, 25, 290000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0350', 'A0050', 'SDR', 5, 'EQ13, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 270000, 71, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0351', 'A0051', 'SDR', 5, 'EQ13, EQ14, EQ10, EQ11', ' ', 2, 4, 330000, 66, 112000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0352', 'A0052', 'SDR', 5, 'EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 180000, 76, 43000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0353', 'A0053', 'SDR', 5, 'EQ15, EQ13, EQ08, EQ09, EQ01, EQ10, EQ11', '', 2, 4, 75000, 47, 39800, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0354', 'A0054', 'SDR', 5, 'EQ15, EQ13, EQ09, EQ10, EQ11, EQ03', '', 2, 4, 300000, 86, 41000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0355', 'A0055', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11, EQ03', ' ', 2, 4, 70000, 46, 38000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0356', 'A0056', 'SPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11, EQ03', ' ', 2, 4, 100000, 38, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0357', 'A0057', 'SPR', 5, 'EQ08, EQ09, EQ10, EQ03', ' ', 2, 4, 66000, 50, 33000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0358', 'A0058', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 260000, 72, 73000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0359', 'A0059', 'SPR', 5, 'EQ08, EQ09, EQ14, EQ16', ' ', 2, 4, 150000, 51, 73000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0360', 'A0060', 'SPR', 5, 'EQ12, EQ13, EQ17, EQ09, EQ11', ' ', 2, 4, 160000, 16, 135000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0361', 'A0029', 'SPR', 5, 'EQ13, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 605000, 32, 410000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0362', 'A0030', 'SPR', 5, 'EQ13, EQ08, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ06', '', 2, 4, 250000, 78, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0363', 'A0031', 'SPR', 5, 'EQ13, EQ17, EQ09, EQ01, EQ10, EQ11, EQ03', '', 2, 4, 500000, 40, 300000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0364', 'A0032', 'SPR', 5, 'EQ15, EQ05, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 231000, 67, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0365', 'A0033', 'SPR', 5, 'EQ15, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11', '', 2, 4, 140000, 60, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0366', 'A0034', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ14, EQ10, EQ11, EQ03, EQ07', ' ', 2, 4, 330000, 64, 119000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0367', 'A0035', 'SPR', 5, 'EQ18, EQ13, EQ05, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 100000, 45, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0368', 'A0036', 'STR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ11', ' ', 2, 4, 245000, 76, 60000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0369', 'A0037', 'STR', 5, 'EQ05, EQ17, EQ09, EQ11', '', 2, 4, 180000, 66, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0370', 'A0038', 'STR', 5, 'EQ08, EQ09, EQ14, EQ10, EQ11', ' ', 2, 4, 198000, 63, 74000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0371', 'A0039', 'STR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09, EQ14', ' ', 2, 4, 100000, 44, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0372', 'A0040', 'STR', 5, 'EQ12, EQ13, EQ17, EQ08, EQ09, EQ14, EQ11, EQ03', ' ', 2, 4, 200000, 49, 103000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0373', 'A0041', 'STR', 5, 'EQ12, EQ15, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ10, EQ11, EQ04', ' ', 2, 4, 605000, 29, 432000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0374', 'A0042', 'STR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ03', ' ', 2, 4, 120000, 58, 50000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0375', 'A0043', 'STR', 5, 'EQ13, EQ17, EQ09, EQ02', ' ', 2, 4, 600000, 34, 399000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0376', 'A0044', 'STR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ02', '', 2, 4, 700000, 68, 222000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0377', 'A0045', 'STR', 5, 'EQ15, EQ18, EQ13, EQ14, EQ11, EQ03', '', 2, 4, 150000, 7, 140000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0378', 'A0046', 'STR', 5, 'EQ17, EQ09, EQ14, EQ11, EQ03', '', 2, 4, 150000, 50, 75000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0379', 'A0047', 'STR', 5, 'EQ18, EQ17, EQ09, EQ14, EQ11', '', 2, 4, 120000, 36, 77000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0380', 'A0048', 'TPR', 5, 'EQ05, EQ09, EQ11, EQ03', ' ', 2, 4, 150000, 45, 83000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0381', 'A0049', 'TPR', 5, 'EQ05, EQ09, EQ14, EQ16, EQ10, EQ11', ' ', 2, 4, 250000, 83, 43000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0382', 'A0050', 'TPR', 5, 'EQ12, EQ05, EQ17, EQ09, EQ11', '', 2, 4, 150000, 18, 123000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0383', 'A0051', 'TPR', 5, 'EQ12, EQ15, EQ17, EQ09', '', 2, 4, 115000, 23, 89000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0384', 'A0052', 'TPR', 5, 'EQ13, EQ17, EQ08, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 180000, 66, 62000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0385', 'A0053', 'TPR', 5, 'EQ15, EQ18, EQ13, EQ05, EQ09, EQ10, EQ11, EQ03', ' ', 2, 4, 470000, 64, 169000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0386', 'A0054', 'WBR', 5, 'EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 130000, 39, 79000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0387', 'A0055', 'WBR', 5, 'EQ12, EQ13, EQ05, EQ17, EQ09', '', 2, 4, 140000, 68, 45000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0388', 'A0056', 'WBR', 5, 'EQ12, EQ13, EQ17, EQ09', ' ', 2, 4, 130000, 65, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0389', 'A0057', 'WBR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 363000, 60, 146000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0390', 'A0058', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09', '', 2, 6, 150000, 56, 66000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0391', 'A0059', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0392', 'A0060', 'WBR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ11, EQ03', ' ', 2, 6, 200000, 73, 55000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0393', 'A0056', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ03, EQ07', '', 2, 4, 200000, 70, 61000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0394', 'A0057', 'WBR', 5, 'EQ13, EQ09, EQ14, EQ10, EQ11, EQ03', ' ', 2, 4, 330000, 60, 133000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0395', 'A0058', 'WBR', 5, 'EQ13, EQ17, EQ09, EQ11, EQ03', ' ', 2, 4, 100000, 54, 46000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0396', 'A0059', 'WBR', 5, 'EQ18, EQ13, EQ05, EQ09, EQ01, EQ14, EQ16, EQ11', ' ', 2, 4, 550000, 71, 160000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0397', 'A0057', 'WBR', 5, 'EQ13, EQ05, EQ08, EQ09, EQ01, EQ14, EQ10, EQ11, EQ03, EQ06', ' ', 2, 4, 363000, 60, 146000, 'hotel_img1.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0398', 'A0058', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ08, EQ09', '', 2, 6, 150000, 56, 66000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0399', 'A0059', 'WBR', 5, 'EQ13, EQ05, EQ17, EQ09, EQ14, EQ11, EQ03, EQ04', ' ', 2, 4, 200000, 72, 56000, 'hotel_img.jpg', 'sa');
insert into t_room_info(room_code, hotel_code, room_type, room_cnt, room_eq, room_svc, room_min, room_max, room_price, room_discount, room_dis_price, room_img, room_reg_id) values ('R0400', 'A0060', 'WBR', 5, 'EQ13, EQ09, EQ01, EQ14, EQ16, EQ11, EQ03', ' ', 2, 6, 200000, 73, 55000, 'hotel_img.jpg', 'sa');
update t_room_info set room_open_yn = 'y', room_img ='hotel_img1.jpg';

/* === 예약 정보 === */
truncate t_reserve_info;
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623001', 'A0001', 'R0001', 'sora', '2021-06-23', '2021-06-25', 2, '226000', 58, 93800, 93800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623002', 'A0002', 'R0002', 'sora', '2021-06-23', '2021-06-25', 2, '100000', 39, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623003', 'A0003', 'R0003', 'sora', '2021-06-23', '2021-06-25', 2, '140000', 64, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623004', 'A0004', 'R0004', 'sora', '2021-06-23', '2021-06-25', 2, '90000', 38, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623005', 'A0005', 'R0005', 'sora', '2021-06-23', '2021-06-25', 2, '330000', 75, 81800, 81800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623006', 'A0006', 'R0006', 'sora', '2021-06-23', '2021-06-25', 2, '140000', 46, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623007', 'A0007', 'R0007', 'sora', '2021-06-23', '2021-06-25', 2, '230000', 83, 39000, 39000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623008', 'A0008', 'R0008', 'sora', '2021-06-23', '2021-06-25', 2, '66000', 55, 30000, 30000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623009', 'A0009', 'R0009', 'sora', '2021-06-23', '2021-06-25', 2, '1100000', 72, 313000, 313000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623010', 'A0010', 'R0010', 'sora', '2021-06-23', '2021-06-25', 2, '363000', 45, 199000, 199000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623011', 'A0011', 'R0011', 'sora', '2021-06-23', '2021-06-25', 2, '550000', 50, 275000, 275000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623012', 'A0012', 'R0012', 'sora', '2021-06-23', '2021-06-25', 2, '900000', 70, 272000, 272000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623013', 'A0013', 'R0013', 'sora', '2021-06-23', '2021-06-25', 2, '310000', 49, 159000, 159000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623014', 'A0014', 'R0014', 'sora', '2021-06-23', '2021-06-25', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623015', 'A0015', 'R0015', 'sora', '2021-06-23', '2021-06-25', 2, '620000', 46, 333000, 333000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610001', 'A0016', 'R0016', 'sora', '2021-06-10', '2021-06-12', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610002', 'A0017', 'R0017', 'sora', '2021-06-10', '2021-06-12', 2, '130000', 65, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610003', 'A0018', 'R0018', 'sora', '2021-06-10', '2021-06-12', 2, '242000', 66, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610004', 'A0019', 'R0019', 'sora', '2021-06-10', '2021-06-12', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610005', 'A0020', 'R0020', 'sora', '2021-06-10', '2021-06-12', 2, '65000', 15, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610006', 'A0021', 'R0021', 'sora', '2021-06-10', '2021-06-12', 2, '320000', 74, 84000, 84000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610007', 'A0022', 'R0022', 'sora', '2021-06-10', '2021-06-12', 2, '260000', 74, 68000, 68000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610008', 'A0023', 'R0023', 'sora', '2021-06-10', '2021-06-12', 2, '550000', 56, 244000, 244000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210610009', 'A0024', 'R0024', 'sora', '2021-06-10', '2021-06-12', 2, '330000', 65, 115000, 115000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702001', 'A0025', 'R0025', 'sora', '2021-07-02', '2021-07-04', 2, '242000', 75, 61600, 61600, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702002', 'A0026', 'R0026', 'sora', '2021-07-02', '2021-07-04', 2, '2600000', 71, 761000, 761000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702003', 'A0027', 'R0027', 'sora', '2021-07-02', '2021-07-04', 2, '508000', 66, 171000, 171000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702004', 'A0028', 'R0028', 'sora', '2021-07-02', '2021-07-04', 2, '150000', 66, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702005', 'A0029', 'R0029', 'sora', '2021-07-02', '2021-07-04', 2, '80000', 39, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702006', 'A0030', 'R0030', 'sora', '2021-07-02', '2021-07-04', 2, '242000', 70, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702007', 'A0031', 'R0031', 'sora', '2021-07-02', '2021-07-04', 2, '330000', 50, 166000, 166000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702008', 'A0032', 'R0032', 'sora', '2021-07-02', '2021-07-04', 2, '120000', 59, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702009', 'A0033', 'R0033', 'sora', '2021-07-02', '2021-07-04', 2, '330000', 41, 194000, 194000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702010', 'A0034', 'R0034', 'sora', '2021-07-02', '2021-07-04', 2, '450000', 48, 233000, 233000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210702011', 'A0035', 'R0035', 'sora', '2021-07-02', '2021-07-04', 2, '800000', 74, 210000, 210000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803001', 'A0036', 'R0036', 'sora', '2021-08-03', '2021-08-05', 2, '275000', 73, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803002', 'A0037', 'R0037', 'sora', '2021-08-03', '2021-08-05', 2, '120000', 39, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803003', 'A0038', 'R0038', 'sora', '2021-08-03', '2021-08-05', 2, '110000', 55, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803004', 'A0039', 'R0039', 'sora', '2021-08-03', '2021-08-05', 2, '242000', 77, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803005', 'A0040', 'R0040', 'sora', '2021-08-03', '2021-08-05', 2, '160000', 62, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803006', 'A0041', 'R0041', 'sora', '2021-08-03', '2021-08-05', 2, '280000', 76, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803007', 'A0042', 'R0042', 'sora', '2021-08-03', '2021-08-05', 2, '150000', 55, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803008', 'A0043', 'R0043', 'sora', '2021-08-03', '2021-08-05', 2, '160000', 17, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803009', 'A0044', 'R0044', 'sora', '2021-08-03', '2021-08-05', 2, '330000', 59, 134000, 134000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803010', 'A0045', 'R0045', 'sora', '2021-08-03', '2021-08-05', 2, '130000', 61, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803011', 'A0046', 'R0046', 'sora', '2021-08-03', '2021-08-05', 2, '140000', 44, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803012', 'A0047', 'R0047', 'sora', '2021-08-03', '2021-08-05', 2, '300000', 62, 113000, 113000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803013', 'A0048', 'R0048', 'sora', '2021-08-03', '2021-08-05', 2, '150000', 41, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803014', 'A0049', 'R0049', 'sora', '2021-08-03', '2021-08-05', 2, '260000', 72, 72000, 72000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210803015', 'A0050', 'R0050', 'sora', '2021-08-03', '2021-08-05', 2, '100000', 55, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618001', 'A0051', 'R0051', 'sora', '2021-06-18', '2021-06-20', 2, '605000', 34, 402000, 402000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618002', 'A0052', 'R0052', 'sora', '2021-06-18', '2021-06-20', 2, '385000', 25, 290000, 290000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618003', 'A0053', 'R0053', 'sora', '2021-06-18', '2021-06-20', 2, '270000', 71, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618004', 'A0054', 'R0054', 'sora', '2021-06-18', '2021-06-20', 2, '330000', 66, 112000, 112000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618005', 'A0055', 'R0055', 'sora', '2021-06-18', '2021-06-20', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618006', 'A0056', 'R0056', 'sora', '2021-06-18', '2021-06-20', 2, '75000', 47, 39800, 39800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618007', 'A0057', 'R0057', 'sora', '2021-06-18', '2021-06-20', 2, '300000', 86, 41000, 41000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618008', 'A0058', 'R0058', 'sora', '2021-06-18', '2021-06-20', 2, '70000', 46, 38000, 38000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618009', 'A0059', 'R0059', 'sora', '2021-06-18', '2021-06-20', 2, '100000', 38, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618010', 'A0060', 'R0060', 'sora', '2021-06-18', '2021-06-20', 2, '66000', 50, 33000, 33000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210618011', 'A0001', 'R0061', 'sora', '2021-06-18', '2021-06-20', 2, '260000', 72, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623016', 'A0002', 'R0062', 'sora', '2021-06-23', '2021-06-25', 2, '150000', 51, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623017', 'A0003', 'R0063', 'sora', '2021-06-23', '2021-06-25', 2, '160000', 16, 135000, 135000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623018', 'A0004', 'R0064', 'sora', '2021-06-23', '2021-06-25', 2, '605000', 32, 410000, 410000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623019', 'A0005', 'R0065', 'sora', '2021-06-23', '2021-06-25', 2, '250000', 78, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623020', 'A0006', 'R0066', 'sora', '2021-06-23', '2021-06-25', 2, '500000', 40, 300000, 300000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623021', 'A0007', 'R0067', 'sora', '2021-06-23', '2021-06-25', 2, '231000', 67, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623022', 'A0008', 'R0068', 'sora', '2021-06-23', '2021-06-25', 2, '140000', 60, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623023', 'A0009', 'R0069', 'sora', '2021-06-23', '2021-06-25', 2, '330000', 64, 119000, 119000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623024', 'A0010', 'R0070', 'sora', '2021-06-23', '2021-06-25', 2, '100000', 45, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623025', 'A0011', 'R0071', 'sora', '2021-06-23', '2021-06-25', 2, '245000', 76, 60000, 60000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623026', 'A0012', 'R0072', 'sora', '2021-06-23', '2021-06-25', 2, '180000', 66, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623027', 'A0013', 'R0073', 'sora', '2021-06-23', '2021-06-25', 2, '198000', 63, 74000, 74000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623028', 'A0014', 'R0074', 'sora', '2021-06-23', '2021-06-25', 2, '100000', 44, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623029', 'A0015', 'R0075', 'sora', '2021-06-23', '2021-06-25', 2, '200000', 49, 103000, 103000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210623030', 'A0016', 'R0076', 'sora', '2021-06-23', '2021-06-25', 2, '605000', 29, 432000, 432000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625001', 'A0017', 'R0077', 'sora', '2021-06-25', '2021-06-27', 2, '120000', 58, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625002', 'A0018', 'R0078', 'sora', '2021-06-25', '2021-06-27', 2, '600000', 34, 399000, 399000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625003', 'A0019', 'R0079', 'sora', '2021-06-25', '2021-06-27', 2, '700000', 68, 222000, 222000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625004', 'A0020', 'R0080', 'sora', '2021-06-25', '2021-06-27', 2, '150000', 7, 140000, 140000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625005', 'A0021', 'R0081', 'sora', '2021-06-25', '2021-06-27', 2, '150000', 50, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625006', 'A0022', 'R0082', 'sora', '2021-06-25', '2021-06-27', 2, '120000', 36, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625007', 'A0023', 'R0083', 'sora', '2021-06-25', '2021-06-27', 2, '150000', 45, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625008', 'A0024', 'R0084', 'sora', '2021-06-25', '2021-06-27', 2, '250000', 83, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625009', 'A0025', 'R0085', 'sora', '2021-06-25', '2021-06-27', 2, '150000', 18, 123000, 123000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625010', 'A0026', 'R0086', 'sora', '2021-06-25', '2021-06-27', 2, '115000', 23, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625011', 'A0027', 'R0087', 'sora', '2021-06-25', '2021-06-27', 2, '180000', 66, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625012', 'A0028', 'R0088', 'sora', '2021-06-25', '2021-06-27', 2, '470000', 64, 169000, 169000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625013', 'A0029', 'R0089', 'sora', '2021-06-25', '2021-06-27', 2, '130000', 39, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625014', 'A0030', 'R0090', 'sora', '2021-06-25', '2021-06-27', 2, '140000', 68, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625015', 'A0031', 'R0091', 'sora', '2021-06-25', '2021-06-27', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625016', 'A0032', 'R0092', 'sora', '2021-06-25', '2021-06-27', 2, '363000', 60, 146000, 146000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625017', 'A0033', 'R0093', 'sora', '2021-06-25', '2021-06-27', 2, '150000', 56, 66000, 66000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625018', 'A0034', 'R0094', 'sora', '2021-06-25', '2021-06-27', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625019', 'A0035', 'R0095', 'sora', '2021-06-25', '2021-06-27', 2, '200000', 73, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625020', 'A0036', 'R0096', 'sora', '2021-06-25', '2021-06-27', 2, '200000', 70, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625021', 'A0037', 'R0097', 'sora', '2021-06-25', '2021-06-27', 2, '330000', 60, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625022', 'A0038', 'R0098', 'sora', '2021-06-25', '2021-06-27', 2, '100000', 54, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625023', 'A0039', 'R0099', 'sora', '2021-06-25', '2021-06-27', 2, '550000', 71, 160000, 160000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625024', 'A0040', 'R0100', 'sora', '2021-06-25', '2021-06-27', 2, '226000', 58, 93800, 93800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625025', 'A0041', 'R0101', 'sora', '2021-06-25', '2021-06-27', 2, '100000', 39, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625026', 'A0042', 'R0102', 'sora', '2021-06-25', '2021-06-27', 2, '140000', 64, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625027', 'A0043', 'R0103', 'sora', '2021-06-25', '2021-06-27', 2, '90000', 38, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625028', 'A0044', 'R0104', 'sora', '2021-06-25', '2021-06-27', 2, '330000', 75, 81800, 81800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625029', 'A0045', 'R0105', 'sora', '2021-06-25', '2021-06-27', 2, '140000', 46, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625030', 'A0046', 'R0106', 'sora', '2021-06-25', '2021-06-27', 2, '230000', 83, 39000, 39000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625031', 'A0047', 'R0107', 'sora', '2021-06-25', '2021-06-27', 2, '66000', 55, 30000, 30000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625032', 'A0048', 'R0108', 'sora', '2021-06-25', '2021-06-27', 2, '1100000', 72, 313000, 313000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625033', 'A0049', 'R0109', 'sora', '2021-06-25', '2021-06-27', 2, '363000', 45, 199000, 199000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625034', 'A0050', 'R0110', 'sora', '2021-06-25', '2021-06-27', 2, '550000', 50, 275000, 275000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625035', 'A0051', 'R0111', 'sora', '2021-06-25', '2021-06-27', 2, '900000', 70, 272000, 272000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625036', 'A0052', 'R0112', 'sora', '2021-06-25', '2021-06-27', 2, '310000', 49, 159000, 159000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625037', 'A0053', 'R0113', 'sora', '2021-06-25', '2021-06-27', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625038', 'A0054', 'R0114', 'sora', '2021-06-25', '2021-06-27', 2, '620000', 46, 333000, 333000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625039', 'A0055', 'R0115', 'sora', '2021-06-25', '2021-06-27', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210625040', 'A0056', 'R0116', 'sora', '2021-06-25', '2021-06-27', 2, '130000', 65, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923001', 'A0057', 'R0117', 'sora', '2021-09-23', '2021-09-25', 2, '242000', 66, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923002', 'A0058', 'R0118', 'sora', '2021-09-23', '2021-09-25', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923003', 'A0059', 'R0119', 'sora', '2021-09-23', '2021-09-25', 2, '65000', 15, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923004', 'A0060', 'R0120', 'sora', '2021-09-23', '2021-09-25', 2, '320000', 74, 84000, 84000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923005', 'A0001', 'R0121', 'sora', '2021-09-23', '2021-09-25', 2, '260000', 74, 68000, 68000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923006', 'A0002', 'R0122', 'sora', '2021-09-23', '2021-09-25', 2, '550000', 56, 244000, 244000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923007', 'A0003', 'R0123', 'sora', '2021-09-23', '2021-09-25', 2, '330000', 65, 115000, 115000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923008', 'A0004', 'R0124', 'sora', '2021-09-23', '2021-09-25', 2, '242000', 75, 61600, 61600, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923009', 'A0005', 'R0125', 'sora', '2021-09-23', '2021-09-25', 2, '2600000', 71, 761000, 761000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923010', 'A0006', 'R0126', 'sora', '2021-09-23', '2021-09-25', 2, '508000', 66, 171000, 171000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923011', 'A0007', 'R0127', 'sora', '2021-09-23', '2021-09-25', 2, '150000', 66, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923012', 'A0008', 'R0128', 'sora', '2021-09-23', '2021-09-25', 2, '80000', 39, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923013', 'A0009', 'R0129', 'sora', '2021-09-23', '2021-09-25', 2, '242000', 70, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923014', 'A0010', 'R0130', 'sora', '2021-09-23', '2021-09-25', 2, '330000', 50, 166000, 166000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923015', 'A0011', 'R0131', 'sora', '2021-09-23', '2021-09-25', 2, '120000', 59, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923016', 'A0012', 'R0132', 'sora', '2021-09-23', '2021-09-25', 2, '330000', 41, 194000, 194000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923017', 'A0013', 'R0133', 'sora', '2021-09-23', '2021-09-25', 2, '450000', 48, 233000, 233000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923018', 'A0014', 'R0134', 'sora', '2021-09-23', '2021-09-25', 2, '800000', 74, 210000, 210000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923019', 'A0015', 'R0135', 'sora', '2021-09-23', '2021-09-25', 2, '275000', 73, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923020', 'A0016', 'R0136', 'sora', '2021-09-23', '2021-09-25', 2, '120000', 39, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923021', 'A0017', 'R0137', 'sora', '2021-09-23', '2021-09-25', 2, '110000', 55, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923022', 'A0018', 'R0138', 'sora', '2021-09-23', '2021-09-25', 2, '242000', 77, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923023', 'A0019', 'R0139', 'sora', '2021-09-23', '2021-09-25', 2, '160000', 62, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923024', 'A0020', 'R0140', 'sora', '2021-09-23', '2021-09-25', 2, '280000', 76, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923025', 'A0021', 'R0141', 'sora', '2021-09-23', '2021-09-25', 2, '150000', 55, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923026', 'A0022', 'R0142', 'sora', '2021-09-23', '2021-09-25', 2, '160000', 17, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923027', 'A0023', 'R0143', 'sora', '2021-09-23', '2021-09-25', 2, '330000', 59, 134000, 134000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923028', 'A0024', 'R0144', 'sora', '2021-09-23', '2021-09-25', 2, '130000', 61, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923029', 'A0025', 'R0145', 'sora', '2021-09-23', '2021-09-25', 2, '140000', 44, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923030', 'A0026', 'R0146', 'sora', '2021-09-23', '2021-09-25', 2, '300000', 62, 113000, 113000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923031', 'A0027', 'R0147', 'sora', '2021-09-23', '2021-09-25', 2, '150000', 41, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923032', 'A0028', 'R0148', 'sora', '2021-09-23', '2021-09-25', 2, '260000', 72, 72000, 72000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923033', 'A0029', 'R0149', 'sora', '2021-09-23', '2021-09-25', 2, '100000', 55, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923034', 'A0030', 'R0150', 'sora', '2021-09-23', '2021-09-25', 2, '605000', 34, 402000, 402000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923035', 'A0031', 'R0151', 'sora', '2021-09-23', '2021-09-25', 2, '385000', 25, 290000, 290000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923036', 'A0032', 'R0152', 'sora', '2021-09-23', '2021-09-25', 2, '270000', 71, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923037', 'A0033', 'R0153', 'sora', '2021-09-23', '2021-09-25', 2, '330000', 66, 112000, 112000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923038', 'A0034', 'R0154', 'sora', '2021-09-23', '2021-09-25', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923039', 'A0035', 'R0155', 'sora', '2021-09-23', '2021-09-25', 2, '75000', 47, 39800, 39800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210923040', 'A0036', 'R0156', 'sora', '2021-09-23', '2021-09-25', 2, '300000', 86, 41000, 41000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703001', 'A0037', 'R0157', 'sora', '2021-07-03', '2021-07-05', 2, '70000', 46, 38000, 38000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703002', 'A0038', 'R0158', 'sora', '2021-07-03', '2021-07-05', 2, '100000', 38, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703003', 'A0039', 'R0159', 'sora', '2021-07-03', '2021-07-05', 2, '66000', 50, 33000, 33000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703004', 'A0040', 'R0160', 'sora', '2021-07-03', '2021-07-05', 2, '260000', 72, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703005', 'A0041', 'R0161', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 51, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703006', 'A0042', 'R0162', 'sora', '2021-07-03', '2021-07-05', 2, '160000', 16, 135000, 135000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703007', 'A0043', 'R0163', 'sora', '2021-07-03', '2021-07-05', 2, '605000', 32, 410000, 410000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703008', 'A0044', 'R0164', 'sora', '2021-07-03', '2021-07-05', 2, '250000', 78, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703009', 'A0045', 'R0165', 'sora', '2021-07-03', '2021-07-05', 2, '500000', 40, 300000, 300000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703010', 'A0046', 'R0166', 'sora', '2021-07-03', '2021-07-05', 2, '231000', 67, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703011', 'A0047', 'R0167', 'sora', '2021-07-03', '2021-07-05', 2, '140000', 60, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703012', 'A0048', 'R0168', 'sora', '2021-07-03', '2021-07-05', 2, '330000', 64, 119000, 119000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703013', 'A0049', 'R0169', 'sora', '2021-07-03', '2021-07-05', 2, '100000', 45, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703014', 'A0050', 'R0170', 'sora', '2021-07-03', '2021-07-05', 2, '245000', 76, 60000, 60000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703015', 'A0051', 'R0171', 'sora', '2021-07-03', '2021-07-05', 2, '180000', 66, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703016', 'A0052', 'R0172', 'sora', '2021-07-03', '2021-07-05', 2, '198000', 63, 74000, 74000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703017', 'A0053', 'R0173', 'sora', '2021-07-03', '2021-07-05', 2, '100000', 44, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703018', 'A0054', 'R0174', 'sora', '2021-07-03', '2021-07-05', 2, '200000', 49, 103000, 103000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703019', 'A0055', 'R0175', 'sora', '2021-07-03', '2021-07-05', 2, '605000', 29, 432000, 432000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703020', 'A0056', 'R0176', 'sora', '2021-07-03', '2021-07-05', 2, '120000', 58, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703021', 'A0057', 'R0177', 'sora', '2021-07-03', '2021-07-05', 2, '600000', 34, 399000, 399000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703022', 'A0058', 'R0178', 'sora', '2021-07-03', '2021-07-05', 2, '700000', 68, 222000, 222000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703023', 'A0059', 'R0179', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 7, 140000, 140000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703024', 'A0060', 'R0180', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 50, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703025', 'A0001', 'R0181', 'sora', '2021-07-03', '2021-07-05', 2, '120000', 36, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703026', 'A0002', 'R0182', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 45, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703027', 'A0003', 'R0183', 'sora', '2021-07-03', '2021-07-05', 2, '250000', 83, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703028', 'A0004', 'R0184', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 18, 123000, 123000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703029', 'A0005', 'R0185', 'sora', '2021-07-03', '2021-07-05', 2, '115000', 23, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703030', 'A0006', 'R0186', 'sora', '2021-07-03', '2021-07-05', 2, '180000', 66, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703031', 'A0007', 'R0187', 'sora', '2021-07-03', '2021-07-05', 2, '470000', 64, 169000, 169000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703032', 'A0008', 'R0188', 'sora', '2021-07-03', '2021-07-05', 2, '130000', 39, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703033', 'A0009', 'R0189', 'sora', '2021-07-03', '2021-07-05', 2, '140000', 68, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703034', 'A0010', 'R0190', 'sora', '2021-07-03', '2021-07-05', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703035', 'A0011', 'R0191', 'sora', '2021-07-03', '2021-07-05', 2, '363000', 60, 146000, 146000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703036', 'A0012', 'R0192', 'sora', '2021-07-03', '2021-07-05', 2, '150000', 56, 66000, 66000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703037', 'A0013', 'R0193', 'sora', '2021-07-03', '2021-07-05', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703038', 'A0014', 'R0194', 'sora', '2021-07-03', '2021-07-05', 4, '200000', 73, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703039', 'A0015', 'R0195', 'sora', '2021-07-03', '2021-07-05', 2, '200000', 70, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210703040', 'A0016', 'R0196', 'sora', '2021-07-03', '2021-07-05', 2, '330000', 60, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704001', 'A0017', 'R0197', 'sora', '2021-07-04', '2021-07-06', 2, '100000', 54, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704002', 'A0018', 'R0198', 'sora', '2021-07-04', '2021-07-06', 2, '550000', 71, 160000, 160000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704003', 'A0019', 'R0199', 'sora', '2021-07-04', '2021-07-06', 2, '226000', 58, 93800, 93800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704004', 'A0020', 'R0200', 'sora', '2021-07-04', '2021-07-06', 2, '100000', 39, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704005', 'A0021', 'R0201', 'sora', '2021-07-04', '2021-07-06', 2, '140000', 64, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704006', 'A0022', 'R0202', 'sora', '2021-07-04', '2021-07-06', 2, '90000', 38, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704007', 'A0023', 'R0203', 'sora', '2021-07-04', '2021-07-06', 2, '330000', 75, 81800, 81800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704008', 'A0024', 'R0204', 'sora', '2021-07-04', '2021-07-06', 2, '140000', 46, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704009', 'A0025', 'R0205', 'sora', '2021-07-04', '2021-07-06', 2, '230000', 83, 39000, 39000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704010', 'A0026', 'R0206', 'sora', '2021-07-04', '2021-07-06', 2, '66000', 55, 30000, 30000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704011', 'A0027', 'R0207', 'sora', '2021-07-04', '2021-07-06', 2, '1100000', 72, 313000, 313000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704012', 'A0028', 'R0208', 'sora', '2021-07-04', '2021-07-06', 2, '363000', 45, 199000, 199000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704013', 'A0029', 'R0209', 'sora', '2021-07-04', '2021-07-06', 2, '550000', 50, 275000, 275000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704014', 'A0030', 'R0210', 'sora', '2021-07-04', '2021-07-06', 2, '900000', 70, 272000, 272000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704015', 'A0031', 'R0211', 'sora', '2021-07-04', '2021-07-06', 2, '310000', 49, 159000, 159000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704016', 'A0032', 'R0212', 'sora', '2021-07-04', '2021-07-06', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704017', 'A0033', 'R0213', 'sora', '2021-07-04', '2021-07-06', 2, '620000', 46, 333000, 333000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704018', 'A0034', 'R0214', 'sora', '2021-07-04', '2021-07-06', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704019', 'A0035', 'R0215', 'sora', '2021-07-04', '2021-07-06', 2, '130000', 65, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704020', 'A0036', 'R0216', 'sora', '2021-07-04', '2021-07-06', 2, '242000', 66, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704021', 'A0037', 'R0217', 'sora', '2021-07-04', '2021-07-06', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704022', 'A0038', 'R0218', 'sora', '2021-07-04', '2021-07-06', 2, '65000', 15, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704023', 'A0039', 'R0219', 'sora', '2021-07-04', '2021-07-06', 2, '320000', 74, 84000, 84000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704024', 'A0040', 'R0220', 'sora', '2021-07-04', '2021-07-06', 2, '260000', 74, 68000, 68000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704025', 'A0041', 'R0221', 'sora', '2021-07-04', '2021-07-06', 4, '550000', 56, 244000, 244000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704026', 'A0042', 'R0222', 'sora', '2021-07-04', '2021-07-06', 4, '330000', 65, 115000, 115000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704027', 'A0043', 'R0223', 'sora', '2021-07-04', '2021-07-06', 4, '242000', 75, 61600, 61600, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704028', 'A0044', 'R0224', 'sora', '2021-07-04', '2021-07-06', 4, '2600000', 71, 761000, 761000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704029', 'A0045', 'R0225', 'sora', '2021-07-04', '2021-07-06', 4, '508000', 66, 171000, 171000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704030', 'A0046', 'R0226', 'sora', '2021-07-04', '2021-07-06', 4, '150000', 66, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704031', 'A0047', 'R0227', 'sora', '2021-07-04', '2021-07-06', 4, '80000', 39, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704032', 'A0048', 'R0228', 'sora', '2021-07-04', '2021-07-06', 2, '242000', 70, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704033', 'A0049', 'R0229', 'sora', '2021-07-04', '2021-07-06', 2, '330000', 50, 166000, 166000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704034', 'A0050', 'R0230', 'sora', '2021-07-04', '2021-07-06', 2, '120000', 59, 49000, 49000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704035', 'A0051', 'R0231', 'sora', '2021-07-04', '2021-07-06', 2, '330000', 41, 194000, 194000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704036', 'A0052', 'R0232', 'sora', '2021-07-04', '2021-07-06', 2, '450000', 48, 233000, 233000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704037', 'A0053', 'R0233', 'sora', '2021-07-04', '2021-07-06', 2, '800000', 74, 210000, 210000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704038', 'A0054', 'R0234', 'sora', '2021-07-04', '2021-07-06', 2, '275000', 73, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704039', 'A0055', 'R0235', 'sora', '2021-07-04', '2021-07-06', 2, '120000', 39, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704040', 'A0056', 'R0236', 'sora', '2021-07-04', '2021-07-06', 2, '110000', 55, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704041', 'A0057', 'R0237', 'sora', '2021-07-04', '2021-07-06', 2, '242000', 77, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704042', 'A0058', 'R0238', 'sora', '2021-07-04', '2021-07-06', 2, '160000', 62, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704043', 'A0059', 'R0239', 'sora', '2021-07-04', '2021-07-06', 2, '280000', 76, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704044', 'A0060', 'R0240', 'sora', '2021-07-04', '2021-07-06', 2, '150000', 55, 67000, 67000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704045', 'A0001', 'R0241', 'sora', '2021-07-04', '2021-07-06', 2, '160000', 17, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704046', 'A0002', 'R0242', 'sora', '2021-07-04', '2021-07-06', 2, '330000', 59, 134000, 134000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704047', 'A0003', 'R0243', 'sora', '2021-07-04', '2021-07-06', 2, '130000', 61, 51000, 51000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704048', 'A0004', 'R0244', 'sora', '2021-07-04', '2021-07-06', 2, '140000', 44, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704049', 'A0005', 'R0245', 'sora', '2021-07-04', '2021-07-06', 2, '300000', 62, 113000, 113000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210704050', 'A0006', 'R0246', 'sora', '2021-07-04', '2021-07-06', 2, '150000', 41, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624001', 'A0007', 'R0247', 'sora', '2021-06-24', '2021-06-26', 2, '260000', 72, 72000, 72000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624002', 'A0008', 'R0248', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 55, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624003', 'A0009', 'R0249', 'sora', '2021-06-24', '2021-06-26', 2, '605000', 34, 402000, 402000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624004', 'A0010', 'R0250', 'sora', '2021-06-24', '2021-06-26', 2, '385000', 25, 290000, 290000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624005', 'A0011', 'R0251', 'sora', '2021-06-24', '2021-06-26', 2, '270000', 71, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624006', 'A0012', 'R0252', 'sora', '2021-06-24', '2021-06-26', 2, '330000', 66, 112000, 112000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624007', 'A0013', 'R0253', 'sora', '2021-06-24', '2021-06-26', 2, '180000', 76, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624008', 'A0014', 'R0254', 'sora', '2021-06-24', '2021-06-26', 2, '75000', 47, 39800, 39800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624009', 'A0015', 'R0255', 'sora', '2021-06-24', '2021-06-26', 2, '300000', 86, 41000, 41000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624010', 'A0016', 'R0256', 'sora', '2021-06-24', '2021-06-26', 2, '70000', 46, 38000, 38000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624011', 'A0017', 'R0257', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 38, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624012', 'A0018', 'R0258', 'sora', '2021-06-24', '2021-06-26', 2, '66000', 50, 33000, 33000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624013', 'A0019', 'R0259', 'sora', '2021-06-24', '2021-06-26', 2, '260000', 72, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624014', 'A0020', 'R0260', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 51, 73000, 73000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624015', 'A0021', 'R0261', 'sora', '2021-06-24', '2021-06-26', 2, '160000', 16, 135000, 135000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624016', 'A0022', 'R0262', 'sora', '2021-06-24', '2021-06-26', 2, '605000', 32, 410000, 410000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624017', 'A0023', 'R0263', 'sora', '2021-06-24', '2021-06-26', 2, '250000', 78, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624018', 'A0024', 'R0264', 'sora', '2021-06-24', '2021-06-26', 2, '500000', 40, 300000, 300000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624019', 'A0025', 'R0265', 'sora', '2021-06-24', '2021-06-26', 2, '231000', 67, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624020', 'A0026', 'R0266', 'sora', '2021-06-24', '2021-06-26', 2, '140000', 60, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624021', 'A0027', 'R0267', 'sora', '2021-06-24', '2021-06-26', 2, '330000', 64, 119000, 119000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624022', 'A0028', 'R0268', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 45, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624023', 'A0029', 'R0269', 'sora', '2021-06-24', '2021-06-26', 2, '245000', 76, 60000, 60000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624024', 'A0030', 'R0270', 'sora', '2021-06-24', '2021-06-26', 2, '180000', 66, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624025', 'A0031', 'R0271', 'sora', '2021-06-24', '2021-06-26', 2, '198000', 63, 74000, 74000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624026', 'A0032', 'R0272', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 44, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624027', 'A0033', 'R0273', 'sora', '2021-06-24', '2021-06-26', 2, '200000', 49, 103000, 103000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624028', 'A0034', 'R0274', 'sora', '2021-06-24', '2021-06-26', 2, '605000', 29, 432000, 432000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624029', 'A0035', 'R0275', 'sora', '2021-06-24', '2021-06-26', 2, '120000', 58, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624030', 'A0036', 'R0276', 'sora', '2021-06-24', '2021-06-26', 2, '600000', 34, 399000, 399000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624031', 'A0037', 'R0277', 'sora', '2021-06-24', '2021-06-26', 2, '700000', 68, 222000, 222000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624032', 'A0038', 'R0278', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 7, 140000, 140000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624033', 'A0039', 'R0279', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 50, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624034', 'A0040', 'R0280', 'sora', '2021-06-24', '2021-06-26', 2, '120000', 36, 77000, 77000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624035', 'A0041', 'R0281', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 45, 83000, 83000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624036', 'A0042', 'R0282', 'sora', '2021-06-24', '2021-06-26', 2, '250000', 83, 43000, 43000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624037', 'A0043', 'R0283', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 18, 123000, 123000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624038', 'A0044', 'R0284', 'sora', '2021-06-24', '2021-06-26', 2, '115000', 23, 89000, 89000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624039', 'A0045', 'R0285', 'sora', '2021-06-24', '2021-06-26', 2, '180000', 66, 62000, 62000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624040', 'A0046', 'R0286', 'sora', '2021-06-24', '2021-06-26', 2, '470000', 64, 169000, 169000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624041', 'A0047', 'R0287', 'sora', '2021-06-24', '2021-06-26', 2, '130000', 39, 79000, 79000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624042', 'A0048', 'R0288', 'sora', '2021-06-24', '2021-06-26', 2, '140000', 68, 45000, 45000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624043', 'A0049', 'R0289', 'sora', '2021-06-24', '2021-06-26', 2, '130000', 65, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624044', 'A0050', 'R0290', 'sora', '2021-06-24', '2021-06-26', 2, '363000', 60, 146000, 146000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624045', 'A0051', 'R0291', 'sora', '2021-06-24', '2021-06-26', 2, '150000', 56, 66000, 66000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624046', 'A0052', 'R0292', 'sora', '2021-06-24', '2021-06-26', 2, '200000', 72, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624047', 'A0053', 'R0293', 'sora', '2021-06-24', '2021-06-26', 4, '200000', 73, 55000, 55000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624048', 'A0054', 'R0294', 'sora', '2021-06-24', '2021-06-26', 2, '200000', 70, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624049', 'A0055', 'R0295', 'sora', '2021-06-24', '2021-06-26', 2, '330000', 60, 133000, 133000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624050', 'A0056', 'R0296', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 54, 46000, 46000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624051', 'A0057', 'R0297', 'sora', '2021-06-24', '2021-06-26', 2, '550000', 71, 160000, 160000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624052', 'A0058', 'R0298', 'sora', '2021-06-24', '2021-06-26', 2, '226000', 58, 93800, 93800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624053', 'A0059', 'R0299', 'sora', '2021-06-24', '2021-06-26', 2, '100000', 39, 61000, 61000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624054', 'A0060', 'R0300', 'sora', '2021-06-24', '2021-06-26', 2, '140000', 64, 50000, 50000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624055', 'A0001', 'R0301', 'sora', '2021-06-24', '2021-06-26', 2, '90000', 38, 56000, 56000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624056', 'A0002', 'R0302', 'sora', '2021-06-24', '2021-06-26', 2, '330000', 75, 81800, 81800, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624057', 'A0003', 'R0303', 'sora', '2021-06-24', '2021-06-26', 2, '140000', 46, 75000, 75000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');
insert into t_reserve_info(rv_code, hotel_code, room_code, mem_id, rv_sdate, rv_edate, rv_cnt, rv_price, rv_discount, rv_dis_price, rv_pay_price, rv_name, rv_email, rv_phone, rv_content) values ('20210624058', 'A0004', 'R0304', 'sora', '2021-06-24', '2021-06-26', 2, '230000', 83, 39000, 39000, '김소라', 'sora@naver.com', '010-8383-2083', '친절하게 잘 부탁드립니다.');


/* === 여행지 정보 === */
truncate t_tour_info; 
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 25, 'T0025', 'W', 'AT', '곽지해수욕장', '제주 제주시 애월읍 애월원당길 (곽지리)', '일몰,해수욕장,액티비티,아이,맑음,여름', '시원한 용천수를 뿜어내는 노천탕이 있는 곳', '곽지해수욕장1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 15, 'T0015', 'N', 'CT', '관덕정', '제주 제주시 관덕로 19', '문화유적지,부모,커플,혼자,친구,아이,사계절,4.3', '국가지정 보물 제 322호로 제주에 현존하는 건물 중 가장 오래된 건물· 제주시 삼도2동· 보물 제322호· 올레17코스· 4·3 유적지', '관덕정1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 4, 'T0004', 'S', 'NT', '광치기해변', '제주 서귀포시 성산읍 섭지코지로 63', '일출,해변,경관/포토,흐림,봄', '성산일출봉과 독특한 해안지형이 어우러져 이색적인 풍광을 간직한 곳', '광치기해변1.jpg', '광치기해변2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 35, 'T0035', 'W', 'AT', '금능해수욕장', '제주 제주시 한림읍 금능길 119-10', '일몰,해수욕장,액티비티,아이,맑음,여름', '제주시 한림읍에 위치한 금능해수욕장은 서쪽의 인기 명소인 협재해수욕장과 바로 이어져 있다.… 해변과 비슷한 풍경을 품고 있지만 그보다 사람이 붐비지 않아 여유로운 것이 매력이다. ', '금능해수욕장1.jpg', '금능해수욕장2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 16, 'T0016', 'N', 'AT', '김녕해수욕장', '제주 제주시 구좌읍 구좌해안로 237', '해수욕장,액티비티,아이,맑음,여름', '너럭바위 위에 생긴 김녕해수욕장', '김녕해수욕장1.jpg', '김녕해수욕장2.jpg', '김녕해수욕장3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 14, 'T0014', 'N', 'CT', '마방목지', '제주 제주시 516로 2480', '경관/포토,문화유적지,아이,맑음,봄', '제주혈통 조랑말이 뛰어노는 초원지대', '마방목지1.jpg', '마방목지2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 17, 'T0017', 'N', 'NT', '비자림', '제주 제주시 구좌읍 비자숲길 55', '걷기/등산,아이,흐림,여름', '천년의 세월이 녹아든 신비로움 가득한 비자림은 500~800년생 비자나무들이 자생하는 세계… 맞은 나무부터 긴 세월이 느껴지는 아름드리 나무까지 다양한 비자나무를 만날 수 있다. ', '비자림1.jpg', '비자림2.jpg', '비자림3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 29, 'T0029', 'E', 'NT', '사려니숲길', '제주 제주시 조천읍 교래리 산 137-1', '숲길,걷기/등산,친구,커플,흐림,봄', '제주 숨은 비경 31, 삼나무 향기에 취하며 걷는 아름답고 청정한 숲길', '사려니숲길1.jpg', '사려니숲길2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 31, 'T0031', 'E', 'NT', '산굼부리', '제주 제주시 조천읍 비자림로 768', '오름,걷기/등산,친구,맑음,가을,우수관광사업체', '사계절마다 다른풍경의 분화구 식물원, 국가지정 문화재 천연기념물 263호', '산굼부리1.jpg', '산굼부리2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 23, 'T0023', 'W', 'AT', '삼양해수욕장', '제주 제주시 삼양동', '해수욕장,액티비티,친구,커플,맑음,여름', '반짝이는 검은 모래가 특색인 해수욕장', '삼양해수욕장1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 24, 'T0024', 'W', 'NT', '새별오름', '제주 제주시 애월읍 봉성리 산 59-8', '일몰,밤,오름,걷기/등산,아이,봄', '제주 서부 애월에 위치해 있으며 억새가 아름다운 오름', '새별오름1.jpg', '새별오름2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 3, 'T0003', 'S', 'NT', '섭지코지', '제주 서귀포시 성산읍 고성리', '일출,해변,경관/포토,커플,맑음,가을', '아름다운 해안이 일품인 섭지', '섭지코지1.jpg', '섭지코지2.jpg', '섭지코지3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 5, 'T0005', 'S', 'NT', '성산일출봉', '제주 서귀포시 성산읍 일출로 284-12', '일출,오름,경관/포토,부모', '바다위에 우뚝 솟아난 수성화산·유네스코 세계자연유산, 천연기념물 제420호, 올레1코스', '성산일출봉1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 19, 'T0019', 'N', 'NT', '세화해변', '제주 제주시 구좌읍 해녀박물관길 27', '해변,휴식/힐링,커플,맑음,여름', '인생 사진을 남길 수 있는 인생 바다', '세화해변1.jpg', '세화해변2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 6, 'T0006', 'S', 'AT', '쇠소깍', '제주 서귀포시 쇠소깍로 128', '계곡,휴식/힐링,액티비티,커플,맑음,여름', '제주 올레 5코스의 끝이자 6코스의 시작인 바닷물과 민물이 만나는 비밀스런 계곡', '쇠소깍1.jpg', '쇠소깍2.jpg', '쇠소깍3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 9, 'T0009', 'S', 'AT', '안덕계곡', '제주 서귀포시 안덕면 일주서로 1524', '계곡,액티비티,커플,흐림,봄', '구가의 서 촬영지, 제주의 아름다운 계곡 중 하나로 꼽히는 신비한 안덕계곡', '안덕계곡1.jpg', '안덕계곡2.jpg', '안덕계곡3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 30, 'T0030', 'E', 'NT', '에코랜드 테마파크', '제주 제주시 조천읍 번영로 1278-169', '테마공원,아이,맑음,가을', '기차를 타고 감상하는 곶자왈, 원시림 테마공원', '에코랜드 테마파크1.jpg', '에코랜드 테마파크2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 8, 'T0008', 'S', 'NT', '오설록티뮤지엄', '제주 서귀포시 안덕면 신화역사로 15', '테마공원,커플,친구,부모,아이,혼자,맑음,휴식/힐링,녹차', '제주녹차문화의 중심, 차박물관과 카페테리아, 2016 KOREAT JEJU TOP 30 선정', '오설록티뮤지엄1.jpg', '오설록티뮤지엄2.jpg', '오설록티뮤지엄3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 18, 'T0018', 'N', 'NT', '용눈이오름', '제주 제주시 구좌읍 종달논길', '일출,밤,오름,걷기/등산,친구,가을', '능선의 아름다움을 뽐내는 오름, 김영갑 작가가 사랑한 오름 2021년 2월 1일 ~ 2023년 1월 31일까지 2년간 자연휴식년제 도입, 전면출입통제 추진 예정임', '용눈이오름1.jpg', '용눈이오름2.jpg', '용눈이오름3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 27, 'T0027', 'E', 'NT', '우도', '제주 제주시 우도면 삼양고수물길 1', '섬속의섬,경관/포토,아이,맑음', '소가 누워있는 형상을 하고 있는 제주의 가장 큰 부속섬', '우도1.jpg', '우도2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 28, 'T0028', 'E', 'NT', '우도산호해변 홍조단괴 서빈백사', '제주 제주시 우도면 우도해안길 252', '일몰,해변,경관/포토,커플,맑음,여름', '세계적으로 드문 홍조단괴로 이뤄진 해변, 천연기념물 438호, 우도8경', '우도산호해변 홍조단괴 서빈백사1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 21, 'T0021', 'N', 'NT', '월정리해변', '제주 제주시 구좌읍 해맞이해안로 480-1', '해변,경관/포토,커플,여름', '달이 머물다 가는’ 제주도의 아름다운 해변', '월정리해변1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 22, 'T0022', 'N', 'NT', '제주4.3평화공원', '제주 제주시 명림로 430', '테마공원,부모,커플,혼자,친구,아이,맑음,흐림,미술/박물관,실내', '반드시 기억해야 할 우리 제주의 역사가 담긴 제주 4.3 평화공원', '제주4.3평화공원1.jpg', '제주4.3평화공원2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 11, 'T0011', 'S', 'CT', '제주민속촌', '제주 서귀포시 표선면 민속해안로 631-34', '문화유적지,아이,흐림,가을,우수관광사업체', '제주도 삶의 원형을 간직한 곳', '제주민속촌1.jpg', '제주민속촌2.jpg', '제주민속촌3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 10, 'T0010', 'S', 'AT', '중문색달해수욕장', '제주 서귀포시 중문관광로72번길 29-51', '해수욕장,액티비티,친구,맑음,여름', '제주올레 8코스, 여유롭고 이국적인 해수욕장', '중문색달해수욕장1.jpg', '중문색달해수욕장2.jpg', '중문색달해수욕장3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 34, 'T0034', 'W', 'CT', '차귀도', '제주 제주시 한경면 고산리 125', '커플,맑음,문화유적지,일몰,차귀도,수월봉', '해안절벽과 기암괴석이 절경을 이루는 섬, 제주 최대의 무인도· 천연기념물 제422호· 올레12코스', '차귀도1.jpg', '차귀도2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 1, 'T0001', 'S', 'NT', '천지연폭포', '제주 서귀포시 남성중로 2-15', '폭포, 밤, 경관/포토, 부모, 맑음, 여름', '하늘과 땅이 만나서 이룬 연못, · 천연기념물 제163호· 천연기념물 제27호· 올레6코스', '천지연폭포1.jpg', '천지연폭포2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 7, 'T0007', 'S', 'NT', '카멜리아힐', '제주 서귀포시 안덕면 병악로 166', '경관/포토,커플,아이,맑음,겨울,우수관광사업체', '카멜리아힐은 동양에서 가장 큰 동백 수목원으로 토종 동백부터 아기 동백, 유럽 동백 등 8…피어난 동백꽃을 배경으로 멋진 인생 사진을 남기기 위해 찾아드는 발걸음이 끊이지 않는다.', '카멜리아힐1.jpg', '카멜리아힐2.jpg', '카멜리아힐3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 12, 'T0012', 'S', 'AT', '표선해수욕장', '제주 서귀포시 표선면 표선리', '해수욕장,액티비티,커플,맑음,여름', '너른 백사장이 매력적인 서귀포 동남부 해수욕장', '표선해수욕장1.jpg', '표선해수욕장2.jpg', '표선해수욕장3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 20, 'T0020', 'N', 'AT', '하도해변', '제주 제주시 구좌읍 해맞이해안로', '해수욕장,액티비티,커플,맑음,여름', '수심이 얕아 어린아이들도 물놀이 하기 좋은 동쪽의 작은 해변', '하도해변1.jpg', '하도해변2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 13, 'T0013', 'N', 'NT', '한라산국립공원', '제주 제주시 1100로 2070-61', '산,걷기/등산,경관/포토,친구,사계절', '한반도 3대 영산 중 하나, 유네스코가 지정한 · 세계생물권보존지역· 세계자연유산· 세계지질공원', '한라산국립공원1.jpg', '한라산국립공원2.jpg', '한라산국립공원3.jpg');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 33, 'T0033', 'W', 'CT', '함덕백사장 & 서우봉', '제주 제주시 조천읍 조함해안로 519-10', '부모,커플,혼자,친구,아이,맑음,여름,해변,문화유적지,오름', '함덕 대대본부에 주둔한 군인들에 의해 많은 사람들이 희생된 곳', '함덕백사장 & 서우봉1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 32, 'T0032', 'W', 'AT', '함덕해수욕장', '제주 제주시 조천읍 조함해안로 519-10', '해수욕장,액티비티,아이,맑음,여름', '에매랄드처럼 빛나는 한국의 몰디브', '함덕해수욕장1.jpg', '함덕해수욕장2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 26, 'T0026', 'W', 'CT', '항파두리항몽유적지', '제주 제주시 애월읍 항파두리로 50', '문화유적지,친구,커플,봄,가을', '고려시대 몽골의 침략에 끝까지 저항했던 삼별초가 최후까지 항전하여 호국충정의 혼을 일깨울수 있는 역사유적지', '항파두리항몽유적지1.jpg', '', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 36, 'T0036', 'W', 'AT', '협재해수욕장', '제주 제주시 한림읍 한림로 329-10', '일몰,해수욕장,액티비티,아이,맑음,여름', '비양도, 은모래, 바다가 그려낸 그림같이 아름다운 해변', '협재해수욕장1.jpg', '협재해수욕장2.jpg', '');
insert into t_tour_info (tour_idx, tour_code, tour_area, tour_type, tour_name, tour_addr, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3) values ( 2, 'T0002', 'S', 'AT', '황우지해안', '제주 서귀포시 서홍동 766-1', '해변,경관/포토,액티비티,친구,커플,맑음,여름', '선녀가 물놀이 했다는 전설이 있는 자연형성 풀장', '황우지해안1.jpg', '황우지해안2.jpg', '황우지해안3.jpg');
update t_tour_info set tour_open_yn ='y';


truncate t_food_info;
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0001', '은희네해장국', '제주특별자치도 서귀포시 516로 84(1층 토평동)', '63604', '064-767-0039', 'KFR', 'S', '06:00', '15:00', '제주도 1등 해장국맛집 은희네입니다.', '001_01.jpg', '001_02.jpg', '00_desc.jpg', '001_desc.jpg',  1, 4, 6);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0002', '제주김만복', '제주 서귀포시 월드컵로 117', '63604', '064-767-0039', 'KFR', 'S', '09:00', '21:00', '제주김만복은 색다르고 맛있는 김밥, 주먹밥, 뚝배기전복밥을 파는 매력적인 곳입니다.', '002_01.jpg', '002_02.jpg', '002_03.jpg', '002_desc.jpg',  2, 2, 3);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0003', '봄날카페', '제주 제주시 애월읍 애월리 2540', '63604', '064-799-4999', 'CF', 'W', '09:00', '22:00', '탁 트인 바다 풍경을 감상하며 커피 음료, 주스, 스낵류를 즐길 수 있는 매력적인 해변 카페입니다.', '003_01.jpg', '003_02.jpg', '003_03.jpg', '003_desc.jpg',  5, 3, 11);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like ) values
	('F0004', '몽상드애월카페', '제주 제주시 애월읍 애월리 2546', '63604', '064-799-0090', 'CF', 'W', '10:30', '20:30', '제주 노을이 가장 가까이 위치에 있는 바다 앞 카페.', '004_01.jpg', '004_02.jpg', '004_03.jpg', '004_desc.jpg',  0, 4, 10);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like)  values
	('F0005', '향토음식유리네한식', '제주 제주시 연북로 146', '63604', '064-748-0890', 'KJFR', 'N', '16:00', '17:30', '제주도 1등 갈치조림 맛집 유리네입니다.', '005_01.jpg', '005_02.jpg', '005_03.jpg', '005_desc.jpg',  1, 4, 1);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0006', '덕성원', '제주 서귀포시 서귀동 472-1 덕성원', '63604', '064-762-2402', 'CFR', 'S', '11:00', '21:00', '3대가 운영하는 전통 중국집으로 최고의 재료와 오래된 전통과 노하우의 중식요리를 고객에게 선보이고 있습니다.', '006_01.jpg', '006_02.jpg', '006_03.jpg', '006_desc.jpg',  2, 3, 4);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0007', '스시도모다찌', '제주 제주시 광양8길 1', '63604', '064-901-2888', 'JFR', 'N', '11:30', '21:30', '제주도 현지인이 추천하는 스시 맛집', '007_01.jpg', '007_02.jpg', '007_03.jpg', '007_desc.jpg',  0 , 3, 2);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0008', '원앤온리카페', '제주 서귀포시 안덕면 산방로 141', '63604', '064-1323-6186', 'CF', 'W', '09:00', '21:00', '전 세계 단 한곳뿐인 뷰와 분위기를 품다. 황우치해변을 홀로 품고 명승 산방산을 지붕삼은 유일한 곳', '008_01.jpg', '008_02.jpg', '008_03.jpg', '008_desc.jpg',  5, 5, 9);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0009', '연돈', '제주특별자치 서귀포시 일주서로 968-10', '63604', '064-1386-7060', 'KFR', 'W', '12:00', '16:00', '백종원골목식당 1등 맛집 연돈입니다.', '009_01.jpg', '009_02.jpg', '009_03.jpg', '009_desc.jpg',  1, 4, 50);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0010', '하하호호', '제주 제주시 우도면 우도해안길 532', '63604', '064-1344-1365', 'WFR', 'E', '11:00', '16:00', '2011년 시작한 하하호호는 흑돼지버거 원조 맛집입니다.', '010_01.jpg', '010_02.jpg', '010_03.jpg', '010_desc.jpg',  3, 4, 30);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0011', '우진해장국', '제주 제주시 서사로 11', '63604', '064-757-3393', 'KJFR', 'N', '06:00', '22:00', '제주산 고사리를 갈아 넣고 푹 끓여 갈색 빛깔이 나는 제주식 해장국을 만날 수 있는 한식당입니다. ', '011_01.jpg', '011_02.jpg', '011_03.jpg', '011_desc.jpg',  4.5, 3, 20);
insert into t_food_info (food_code, food_name, food_addr, food_zip, food_tel, food_type, food_area, food_open, food_close, food_detail, food_img1, food_img2, food_img3, food_desc,  food_score, food_review_cnt, food_like) values
	('F0012', '선흘곶', '	제주특별자치도 제주시 조천읍 동백로 102', '63604', '064-783-5753', 'KFR', 'E', '10:30', '20:00', '제주도 골프장 근처 대표 쌈밥집.', '012_01.jpg', '012_02.jpg', '012_03.jpg', '012_desc.jpg',  2.5, 4, 35);


/**======== 후기 (음식점, 여행지 ========= */
truncate t_reply_list; 

call sp_food_reply_insert('F0001','sora','맛있었어요',4);
call sp_food_reply_insert('F0002','test1','친절했어요',4);
call sp_food_reply_insert('F0003','test2','맛있었어요',3);
call sp_food_reply_insert('F0004','test3','친절했어요',4);
call sp_food_reply_insert('F0005','test4','맛있었어요',5);
call sp_food_reply_insert('F0006','test5','친절했어요',3);
call sp_food_reply_insert('F0007','test6','맛있고 친절했어요',3);
call sp_food_reply_insert('F0008','test7','맛있고 친절했어요',4);
call sp_food_reply_insert('F0009','test8','맛있고 친절했어요',5);
call sp_food_reply_insert('F0010','test9','맛있고 친절했어요',3);
call sp_food_reply_insert('F0011','test10','맛있고 친절했어요',2);
call sp_food_reply_insert('F0012','test11','맛있었어요',4);
call sp_food_reply_insert('F0001','test12','친절했어요',4);
call sp_food_reply_insert('F0002','sora','맛있었어요',3);
call sp_food_reply_insert('F0003','test1','친절했어요',4);
call sp_food_reply_insert('F0004','test2','맛있었어요',5);
call sp_food_reply_insert('F0005','test3','친절했어요',3);
call sp_food_reply_insert('F0006','test4','맛있고 친절했어요',3);
call sp_food_reply_insert('F0007','test5','맛있고 친절했어요',4);
call sp_food_reply_insert('F0008','test6','맛있고 친절했어요',5);
call sp_food_reply_insert('F0009','test7','맛있고 친절했어요',3);
call sp_food_reply_insert('F0010','test8','맛있고 친절했어요',2);
call sp_food_reply_insert('F0011','test9','맛있었어요',4);
call sp_food_reply_insert('F0012','test10','친절했어요',4);
call sp_food_reply_insert('F0001','test11','맛있었어요',3);
call sp_food_reply_insert('F0002','test12','친절했어요',4);
call sp_food_reply_insert('F0003','sora','맛있었어요',5);
call sp_food_reply_insert('F0004','test1','친절했어요',3);
call sp_food_reply_insert('F0005','test2','맛있고 친절했어요',3);
call sp_food_reply_insert('F0006','test3','맛있고 친절했어요',4);
call sp_food_reply_insert('F0007','test4','맛있고 친절했어요',5);
call sp_food_reply_insert('F0008','test5','맛있고 친절했어요',3);
call sp_food_reply_insert('F0009','test6','맛있고 친절했어요',2);
call sp_food_reply_insert('F0010','test7','맛있었어요',4);
call sp_food_reply_insert('F0011','test8','친절했어요',4);
call sp_food_reply_insert('F0012','test9','맛있었어요',3);


call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0001','sora','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0002','test1','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0003','test2','재밌었어요',3);
call sp_tour_reply_insert('T0004','test3','사람들이 너무 많았어요',2);
call sp_tour_reply_insert('T0005','test4','추천합니다',5);
call sp_tour_reply_insert('T0006','test5','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0007','test6','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0008','test7','재밌었어요',4);
call sp_tour_reply_insert('T0009','test8','사람들이 너무 많았어요',5);
call sp_tour_reply_insert('T0010','test9','추천합니다',3);
call sp_tour_reply_insert('T0011','test10','너무 이쁘고 아름답고 좋은 추억이 된거같아요',2);
call sp_tour_reply_insert('T0012','test11','사진찍기 좋아요',4);
call sp_tour_reply_insert('T0013','test12','재밌었어요',4);
call sp_tour_reply_insert('T0014','sora','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0015','test1','추천합니다',4);
call sp_tour_reply_insert('T0016','test2','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0017','test3','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0018','test4','재밌었어요',3);
call sp_tour_reply_insert('T0019','test5','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0020','test6','추천합니다',5);
call sp_tour_reply_insert('T0021','test7','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);
call sp_tour_reply_insert('T0022','test8','사진찍기 좋아요',2);
call sp_tour_reply_insert('T0023','test9','재밌었어요',4);
call sp_tour_reply_insert('T0024','test10','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0025','test11','추천합니다',3);
call sp_tour_reply_insert('T0026','test12','너무 이쁘고 아름답고 좋은 추억이 된거같아요',4);
call sp_tour_reply_insert('T0027','sora','사진찍기 좋아요',5);
call sp_tour_reply_insert('T0028','test1','재밌었어요',3);
call sp_tour_reply_insert('T0029','test2','사람들이 너무 많았어요',3);
call sp_tour_reply_insert('T0030','test3','추천합니다',4);
call sp_tour_reply_insert('T0031','test4','너무 이쁘고 아름답고 좋은 추억이 된거같아요',5);
call sp_tour_reply_insert('T0032','test5','사진찍기 좋아요',3);
call sp_tour_reply_insert('T0033','test6','재밌었어요',2);
call sp_tour_reply_insert('T0034','test7','사람들이 너무 많았어요',4);
call sp_tour_reply_insert('T0035','test8','추천합니다',4);
call sp_tour_reply_insert('T0036','test9','너무 이쁘고 아름답고 좋은 추억이 된거같아요',3);



call sp_h_reply_insert('20210623001', 'A0001', 'R0001', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623002', 'A0002', 'R0002', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210623003', 'A0003', 'R0003', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210623004', 'A0004', 'R0004', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210623005', 'A0005', 'R0005', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210623006', 'A0006', 'R0006', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210623007', 'A0007', 'R0007', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210623008', 'A0008', 'R0008', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623009', 'A0009', 'R0009', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210623010', 'A0010', 'R0010', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210623011', 'A0011', 'R0011', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210623012', 'A0012', 'R0012', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210623013', 'A0013', 'R0013', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210623014', 'A0014', 'R0014', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210623015', 'A0015', 'R0015', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210610001', 'A0016', 'R0016', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210610002', 'A0017', 'R0017', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210610003', 'A0018', 'R0018', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210610004', 'A0019', 'R0019', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210610005', 'A0020', 'R0020', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210610006', 'A0021', 'R0021', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210610007', 'A0022', 'R0022', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210610008', 'A0023', 'R0023', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210610009', 'A0024', 'R0024', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210702001', 'A0025', 'R0025', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210702002', 'A0026', 'R0026', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210702003', 'A0027', 'R0027', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210702004', 'A0028', 'R0028', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210702005', 'A0029', 'R0029', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210702006', 'A0030', 'R0030', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210702007', 'A0031', 'R0031', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210702008', 'A0032', 'R0032', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210702009', 'A0033', 'R0033', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210702010', 'A0034', 'R0034', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210702011', 'A0035', 'R0035', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803001', 'A0036', 'R0036', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803002', 'A0037', 'R0037', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803003', 'A0038', 'R0038', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803004', 'A0039', 'R0039', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803005', 'A0040', 'R0040', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210803006', 'A0041', 'R0041', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210803007', 'A0042', 'R0042', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210803008', 'A0043', 'R0043', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210803009', 'A0044', 'R0044', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210803010', 'A0045', 'R0045', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210803011', 'A0046', 'R0046', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803012', 'A0047', 'R0047', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803013', 'A0048', 'R0048', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803014', 'A0049', 'R0049', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210803015', 'A0050', 'R0050', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618001', 'A0051', 'R0051', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618002', 'A0052', 'R0052', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618003', 'A0053', 'R0053', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618004', 'A0054', 'R0054', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618005', 'A0055', 'R0055', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618006', 'A0056', 'R0056', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618007', 'A0057', 'R0057', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210618008', 'A0058', 'R0058', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210618009', 'A0059', 'R0059', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210618010', 'A0060', 'R0060', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210618011', 'A0061', 'R0061', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210623016', 'A0062', 'R0062', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210623017', 'A0063', 'R0063', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210623018', 'A0064', 'R0064', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623019', 'A0065', 'R0065', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623020', 'A0066', 'R0066', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623021', 'A0067', 'R0067', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623022', 'A0068', 'R0068', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623023', 'A0069', 'R0069', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623024', 'A0070', 'R0070', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623025', 'A0071', 'R0071', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623026', 'A0072', 'R0072', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623027', 'A0073', 'R0073', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623028', 'A0074', 'R0074', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623029', 'A0075', 'R0075', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210623030', 'A0076', 'R0076', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625001', 'A0077', 'R0077', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625002', 'A0078', 'R0078', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625003', 'A0079', 'R0079', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625004', 'A0080', 'R0080', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210625005', 'A0081', 'R0081', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210625006', 'A0082', 'R0082', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210625007', 'A0083', 'R0083', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210625008', 'A0084', 'R0084', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210625009', 'A0085', 'R0085', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210625010', 'A0086', 'R0086', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625011', 'A0087', 'R0087', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625012', 'A0088', 'R0088', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625013', 'A0089', 'R0089', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625014', 'A0090', 'R0090', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625015', 'A0091', 'R0091', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625016', 'A0092', 'R0092', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625017', 'A0093', 'R0093', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625018', 'A0094', 'R0094', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625019', 'A0095', 'R0095', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625020', 'A0096', 'R0096', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625021', 'A0097', 'R0097', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625022', 'A0098', 'R0098', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625023', 'A0099', 'R0099', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625024', 'A0100', 'R0100', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625025', 'A0101', 'R0101', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625026', 'A0102', 'R0102', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625027', 'A0103', 'R0103', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625028', 'A0104', 'R0104', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625029', 'A0105', 'R0105', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625030', 'A0106', 'R0106', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625031', 'A0107', 'R0107', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625032', 'A0108', 'R0108', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625033', 'A0109', 'R0109', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625034', 'A0110', 'R0110', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210625035', 'A0111', 'R0111', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210625036', 'A0112', 'R0112', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210625037', 'A0113', 'R0113', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210625038', 'A0114', 'R0114', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210625039', 'A0115', 'R0115', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210625040', 'A0116', 'R0116', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210923001', 'A0117', 'R0117', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923002', 'A0118', 'R0118', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923003', 'A0119', 'R0119', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923004', 'A0120', 'R0120', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923005', 'A0121', 'R0121', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923006', 'A0122', 'R0122', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923007', 'A0123', 'R0123', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923008', 'A0124', 'R0124', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923009', 'A0125', 'R0125', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923010', 'A0126', 'R0126', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923011', 'A0127', 'R0127', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923012', 'A0128', 'R0128', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923013', 'A0129', 'R0129', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923014', 'A0130', 'R0130', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923015', 'A0131', 'R0131', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923016', 'A0132', 'R0132', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923017', 'A0133', 'R0133', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923018', 'A0134', 'R0134', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923019', 'A0135', 'R0135', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923020', 'A0136', 'R0136', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923021', 'A0137', 'R0137', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923022', 'A0138', 'R0138', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923023', 'A0139', 'R0139', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923024', 'A0140', 'R0140', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923025', 'A0141', 'R0141', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923026', 'A0142', 'R0142', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923027', 'A0143', 'R0143', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923028', 'A0144', 'R0144', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923029', 'A0145', 'R0145', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923030', 'A0146', 'R0146', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210923031', 'A0147', 'R0147', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210923032', 'A0148', 'R0148', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210923033', 'A0149', 'R0149', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210923034', 'A0150', 'R0150', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210923035', 'A0151', 'R0151', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210923036', 'A0152', 'R0152', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923037', 'A0153', 'R0153', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923038', 'A0154', 'R0154', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923039', 'A0155', 'R0155', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210923040', 'A0156', 'R0156', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703001', 'A0157', 'R0157', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703002', 'A0158', 'R0158', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703003', 'A0159', 'R0159', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703004', 'A0160', 'R0160', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703005', 'A0161', 'R0161', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703006', 'A0162', 'R0162', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703007', 'A0163', 'R0163', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703008', 'A0164', 'R0164', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703009', 'A0165', 'R0165', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703010', 'A0166', 'R0166', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703011', 'A0167', 'R0167', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703012', 'A0168', 'R0168', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703013', 'A0169', 'R0169', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703014', 'A0170', 'R0170', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210703015', 'A0171', 'R0171', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210703016', 'A0172', 'R0172', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210703017', 'A0173', 'R0173', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210703018', 'A0174', 'R0174', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210703019', 'A0175', 'R0175', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210703020', 'A0176', 'R0176', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703021', 'A0177', 'R0177', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703022', 'A0178', 'R0178', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703023', 'A0179', 'R0179', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703024', 'A0180', 'R0180', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703025', 'A0181', 'R0181', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703026', 'A0182', 'R0182', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703027', 'A0183', 'R0183', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703028', 'A0184', 'R0184', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703029', 'A0185', 'R0185', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703030', 'A0186', 'R0186', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703031', 'A0187', 'R0187', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703032', 'A0188', 'R0188', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703033', 'A0189', 'R0189', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703034', 'A0190', 'R0190', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703035', 'A0191', 'R0191', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703036', 'A0192', 'R0192', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703037', 'A0193', 'R0193', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703038', 'A0194', 'R0194', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703039', 'A0195', 'R0195', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210703040', 'A0196', 'R0196', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704001', 'A0197', 'R0197', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704002', 'A0198', 'R0198', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704003', 'A0199', 'R0199', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704004', 'A0200', 'R0200', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704005', 'A0201', 'R0201', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704006', 'A0202', 'R0202', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704007', 'A0203', 'R0203', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704008', 'A0204', 'R0204', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704009', 'A0205', 'R0205', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704010', 'A0206', 'R0206', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704011', 'A0207', 'R0207', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210704012', 'A0208', 'R0208', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210704013', 'A0209', 'R0209', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210704014', 'A0210', 'R0210', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210704015', 'A0211', 'R0211', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210704016', 'A0212', 'R0212', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210704017', 'A0213', 'R0213', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704018', 'A0214', 'R0214', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704019', 'A0215', 'R0215', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704020', 'A0216', 'R0216', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704021', 'A0217', 'R0217', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704022', 'A0218', 'R0218', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704023', 'A0219', 'R0219', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704024', 'A0220', 'R0220', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704025', 'A0221', 'R0221', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704026', 'A0222', 'R0222', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704027', 'A0223', 'R0223', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704028', 'A0224', 'R0224', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704029', 'A0225', 'R0225', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704030', 'A0226', 'R0226', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704031', 'A0227', 'R0227', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704032', 'A0228', 'R0228', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704033', 'A0229', 'R0229', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704034', 'A0230', 'R0230', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704035', 'A0231', 'R0231', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704036', 'A0232', 'R0232', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704037', 'A0233', 'R0233', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704038', 'A0234', 'R0234', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704039', 'A0235', 'R0235', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704040', 'A0236', 'R0236', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704041', 'A0237', 'R0237', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704042', 'A0238', 'R0238', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704043', 'A0239', 'R0239', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704044', 'A0240', 'R0240', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704045', 'A0241', 'R0241', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704046', 'A0242', 'R0242', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704047', 'A0243', 'R0243', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704048', 'A0244', 'R0244', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704049', 'A0245', 'R0245', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210704050', 'A0246', 'R0246', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624001', 'A0247', 'R0247', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210624002', 'A0248', 'R0248', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210624003', 'A0249', 'R0249', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210624004', 'A0250', 'R0250', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210624005', 'A0251', 'R0251', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210624006', 'A0252', 'R0252', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210624007', 'A0253', 'R0253', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624008', 'A0254', 'R0254', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624009', 'A0255', 'R0255', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624010', 'A0256', 'R0256', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624011', 'A0257', 'R0257', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624012', 'A0258', 'R0258', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624013', 'A0259', 'R0259', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624014', 'A0260', 'R0260', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624015', 'A0261', 'R0261', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624016', 'A0262', 'R0262', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624017', 'A0263', 'R0263', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624018', 'A0264', 'R0264', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624019', 'A0265', 'R0265', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624020', 'A0266', 'R0266', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624021', 'A0267', 'R0267', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624022', 'A0268', 'R0268', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624023', 'A0269', 'R0269', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624024', 'A0270', 'R0270', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624025', 'A0271', 'R0271', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624026', 'A0272', 'R0272', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624027', 'A0273', 'R0273', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624028', 'A0274', 'R0274', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624029', 'A0275', 'R0275', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624030', 'A0276', 'R0276', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624031', 'A0277', 'R0277', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624032', 'A0278', 'R0278', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624033', 'A0279', 'R0279', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624034', 'A0280', 'R0280', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624035', 'A0281', 'R0281', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624036', 'A0282', 'R0282', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624037', 'A0283', 'R0283', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624038', 'A0284', 'R0284', 'sora', '경치가 너무 좋앗어요', 4);
call sp_h_reply_insert('20210624039', 'A0285', 'R0285', 'sora', '친절하고 방도 깨끗하고 추천하고싶어요', 4.5);
call sp_h_reply_insert('20210624040', 'A0286', 'R0286', 'sora', '바퀴벌.... x 가 나왔어요 정말 최악..', 1);
call sp_h_reply_insert('20210624041', 'A0287', 'R0287', 'sora', '층간소음이 조금 심하네요.. 다신 안갈래요', 2);
call sp_h_reply_insert('20210624042', 'A0288', 'R0288', 'sora', '방 업그레이드 해줘서 너무 좋았어요. 또 오고싶어요', 4.5);
call sp_h_reply_insert('20210624043', 'A0289', 'R0289', 'sora', '추천 왕추천합니다', 4);
call sp_h_reply_insert('20210624044', 'A0290', 'R0290', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624045', 'A0291', 'R0291', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624046', 'A0292', 'R0292', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624047', 'A0293', 'R0293', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624048', 'A0294', 'R0294', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624049', 'A0295', 'R0295', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624050', 'A0296', 'R0296', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624051', 'A0297', 'R0297', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624052', 'A0298', 'R0298', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624053', 'A0299', 'R0299', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624054', 'A0300', 'R0300', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624055', 'A0301', 'R0301', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624056', 'A0302', 'R0302', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624057', 'A0303', 'R0303', 'sora', '방이 너무 좋아요', 4.5);
call sp_h_reply_insert('20210624058', 'A0304', 'R0304', 'sora', '방이 너무 좋아요', 4.5);