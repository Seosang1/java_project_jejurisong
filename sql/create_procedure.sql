use jejurisong;
 
/* ======= 숙박 평점 계산하는 프로시저 ========*/
drop procedure if exists sp_h_reply_reload;
delimiter $$
create procedure sp_h_reply_reload(hotelCode varchar(5), roomCode varchar(5))
begin
	-- 1. 방 평점 수정 
	update t_room_info set room_score = (select truncate(avg(reply_score),1) from t_reply_list where reply_code = roomCode) where room_code = roomCode;
    
	-- 2. 호텔 전체 평점/댓글개수 수정 
	update t_hotel_info set
		hotel_score = (select truncate(avg(reply_score),0) from t_reply_list where reply_code in (select room_code from t_room_info where hotel_code = hotelCode)  and reply_del_yn = 'n' ),
        hotel_review_cnt = (select count(reply_code)from t_reply_list where reply_code in (select room_code from t_room_info where hotel_code = hotelCode)  and reply_del_yn = 'n' )
	where hotel_code = hotelCode; 
    
end $$
delimiter ;
-- call sp_reply_reload('A0018', 'R0005'); 

/* ======= 숙박 후기 등록 프로시저 ========*/
drop procedure if exists sp_h_reply_insert;
delimiter $$
create procedure sp_h_reply_insert(rvCode varchar(11), hotelCode varchar(5), roomCode varchar(5), memId varchar(20), roomReContent text, roomReScore int)
begin
	-- 1. 후기 등록
	insert into t_reply_list (reply_type, reply_code, reply_rv_code, mi_id, reply_content, reply_score ) values ('A', roomCode, rvCode, memId, roomReContent, roomReScore);
	-- 2. 방 평점 수정 평점 리로드
	call sp_h_reply_reload(hotelCode, roomCode);
end $$
delimiter ;
-- call sp_h_reply_insert('20210623030', 'A0016', 'R0076', 'sora', '방 너무 좋아요', 4);
--  call sp_h_reply_insert('20210624010', 'A0016', 'R0256', 'sora', '별로에요', 2);
-- call sp_h_reply_insert('20210703040', 'A0016', 'R0196', 'sora', '잘 놀다가요', 5); 
 
/* ======= 숙박 후기 수정 프로시저 ========*/
drop procedure if exists sp_h_reply_update;
delimiter $$
create procedure sp_h_reply_update(rvCode varchar(11), hotelCode varchar(5), roomCode varchar(5), roomReContent text, roomReScore int, roomReIdx int)
begin
	-- 1. 후기 등록
    update t_reply_list set 
		reply_content = roomReContent, 
        reply_score = roomReScore 
	where reply_rv_code = rvCode;
    
    -- 2. 평점, 리뷰 개수 계산 후 리로드
	call sp_h_reply_reload(hotelCode, roomCode);
end $$
delimiter ;
-- call sp_h_reply_update('20210623001', 'A0001', 'R0001', '방 너무 좋아요', 3.5, 1);

/* ======= 후기 삭제 프로시저 ========*/
drop procedure if exists sp_h_reply_delete;
delimiter $$
create procedure sp_h_reply_delete(replyIdx int, rvCode varchar(11), hotelCode varchar(5), roomCode varchar(5), delId varchar(20))
begin
	-- 1. 후기 등록
    update t_reply_list set reply_score = 0, reply_del_yn = 'y', reply_del_date = now(), ai_id = delId where reply_idx = replyIdx;
    
    -- 2. 평점, 리뷰개수 계산 후 리로드
	call sp_h_reply_reload(hotelCode, roomCode);
end $$
delimiter ;
-- call sp_h_reply_delete(15, '20210623001', 'A0001', 'R0001', 'admin'); 


/* ======= 여행지 후기 평점 계산하는 프로시저 ========*/
drop procedure if exists sp_tour_reply_reload;
delimiter $$
create procedure sp_tour_reply_reload(tourCode varchar(5))
begin 
	update t_tour_info set
		tour_score = (select truncate(avg(reply_score),0) from t_reply_list where reply_code = tourCode  and reply_del_yn = 'n' ),
        tour_review_cnt = (select count(reply_code) from t_reply_list where reply_code = tourCode  and reply_del_yn = 'n' )
	where tour_code = tourCode; 
    
end $$
delimiter ;
-- call sp_tour_reply_reload('T0001'); 

/* ======= 여행지 후기 등록 프로시저 ========*/
drop procedure if exists sp_tour_reply_insert;
delimiter $$
create procedure sp_tour_reply_insert(replyCode varchar(5), memId varchar(20), replyContent text, replyScore int)
begin
	-- 1. 후기 등록
	insert into t_reply_list (reply_type, reply_code, mi_id, reply_content, reply_score ) values ('T', replyCode, memId, replyContent, replyScore);
	-- 2. 평점 리로드
	call sp_tour_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_tour_reply_insert('T0001', 'sora', '너무 이뻐요', 4); 

/* ======= 여행지 후기 삭제 프로시저 ========*/
drop procedure if exists sp_tour_reply_delete;
delimiter $$
create procedure sp_tour_reply_delete(replyIdx int, replyCode varchar(5), delId varchar(20))
begin
	-- 1. 후기 등록
    update t_reply_list set reply_score = 0, reply_del_yn = 'y', reply_del_date = now(), ai_id = delId where reply_idx = replyIdx;
    
    -- 2. 평점 리로드
	call sp_tour_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_tour_reply_delete(9, 'T0001', 'sora'); 


/* ======= 여행지 후기 수정 프로시저 ========*/
drop procedure if exists sp_tour_reply_update;
delimiter $$
create procedure sp_tour_reply_update(replyCode varchar(5), replyContent text, replyScore int, replyIdx int)
begin
	-- 1. 후기 등록
    update t_reply_list set 
		reply_content = replyContent, 
        reply_score = replyScore 
	where reply_idx = replyIdx;
    
	call sp_tour_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_tour_reply_update('T0001', '잘 보고왔어요', 2, 2); 



/* ======= 음식점 후기 평점 계산 =======*/
drop procedure if exists sp_food_reply_reload;
delimiter $$
create procedure sp_food_reply_reload(foodCode varchar(5))
begin 
	update t_food_info set
		food_score = (select truncate(avg(reply_score),0) from t_reply_list where reply_code = foodCode  and reply_del_yn = 'n' ),
        food_review_cnt = (select count(reply_code) from t_reply_list where reply_code = foodCode  and reply_del_yn = 'n' )
	where food_code = foodCode; 
    
end $$
delimiter ;
-- call sp_food_reply_reload('T0001'); 

/* ======= 음식점  후기 등록 프로시저 ========*/
drop procedure if exists sp_food_reply_insert;
delimiter $$
create procedure sp_food_reply_insert(replyCode varchar(5), memId varchar(20), replyContent text, replyScore double)
begin
	-- 1. 후기 등록
	insert into t_reply_list (reply_type, reply_code, mi_id, reply_content, reply_score ) values ('F', replyCode, memId, replyContent, replyScore);
	-- 2. 평점 리로드
	call sp_food_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_food_reply_insert('T0001', 'sora', '너무 이뻐요', 4); 

/* =======음식점 후기 삭제 프로시저 ========*/
drop procedure if exists sp_food_reply_delete;
delimiter $$
create procedure sp_food_reply_delete(replyIdx int, replyCode varchar(5), delId varchar(20))
begin
	-- 1. 후기 등록
    update t_reply_list set reply_score = 0, reply_del_yn = 'y', reply_del_date = now(), ai_id = delId where reply_idx = replyIdx;
    
    -- 2. 평점 리로드
	call sp_food_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_food_reply_delete(9, 'T0001', 'sora'); 


/* ======= 음식점 후기 수정 프로시저 ========*/
drop procedure if exists sp_food_reply_update;
delimiter $$
create procedure sp_food_reply_update(replyCode varchar(5), replyContent text, replyScore double, replyIdx int)
begin
	-- 1. 후기 등록
    update t_reply_list set 
		reply_content = replyContent, 
        reply_score = replyScore 
	where reply_idx = replyIdx;
    
	call sp_food_reply_reload(replyCode);
end $$
delimiter ;
-- call sp_food_reply_update('T0001', '잘 보고왔어요', 2, 2); 