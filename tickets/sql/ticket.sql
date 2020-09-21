--======================================================
-- Tickets
--======================================================
--관리자계정으로 tickets계정 생성

--create user tickets
--identified by tickets
--default tablespace users;
--
--grant connect, resource to tickets;
--show user;

--==================================================
--계정 삭제 후 다시 만들 때 사용할 것
--drop user dream tickets;

--=============== tickets계정으로 테이블 확인/삭제 ===============
--현재 계정 확인
--show user;

-- 계정 내 테이블/시퀀스/뷰 목록 확인
--select * from user_tables;
--select * from user_sequences;
--select * from user_views;

-- 테이블 삭제
DROP TABLE "THEATER" CASCADE CONSTRAINTS;
DROP TABLE "LOCATION" CASCADE CONSTRAINTS;
DROP TABLE "CATEGORY" CASCADE CONSTRAINTS;
DROP TABLE "MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "PERFORMANCE" CASCADE CONSTRAINTS;
DROP TABLE "REVIEW" CASCADE CONSTRAINTS;
DROP TABLE "WISHLIST" CASCADE CONSTRAINTS;
DROP TABLE "SCHEDULE" CASCADE CONSTRAINTS;
DROP TABLE "SEAT" CASCADE CONSTRAINTS;
DROP TABLE "TICKET" CASCADE CONSTRAINTS;
DROP TABLE "PAY" CASCADE CONSTRAINTS;

-- 시퀀스 삭제
DROP SEQUENCE "PERFORMANCE_SEQ";

-- 뷰 삭제
--DROP VIEW "";


--=============== tickets계정으로 테이블 생성 ===============

--Theater
create table theater(
    theater_no number,
    tot_theater_number number,
    theater_address varchar2(200),
    constraints pk_theater_no primary key(theater_no)
);

--Location
create table location(
    location_code varchar2(20),
    location_name varchar2(20),
    constraints pk_location_code primary key(location_code)
);

--Category
create table category(
    category_code varchar2(20) not null,
    category_name varchar2(30),
    category_level number default 1,
    category_ref number default 1,
    constraints pk_category_code primary key(category_code)
 ); 

--Member
create table member(
    member_id varchar2(15),
    password varchar2(300) not null,
    name varchar2(30) not null,
    email varchar2(100),
    phone char(11),
    address varchar2(200),
    member_role char(1)default 'U' not null,
    enroll_date date default sysdate,
    quit_yn char(1) default 'N' not null,
    constraints pk_member_id primary key(member_id),
    constraints ck_member_role check(member_role in ('U','A','C')),
    constraints ck_quit_yn check(quit_yn in ('N','Y'))
);

--Performance
create table performance(
    per_no number,
    member_id varchar2(15),
    category_code varchar2(20),
    location_code varchar2(20),
    per_title varchar2(100) not null,
    per_director varchar2(20),
    per_actor varchar2(300),
    per_address varchar2(200),
    per_content varchar2(2000),
    per_img_original_filename varchar(256),
    per_img_renamed_filename varchar(256),
    detail_img_original_filename varchar(256),
    detail_img_renamed_filename varchar(256),
    per_rating number,
    per_display char(1) default 'N',
    admin_approval char(1) default 'N',
    per_register_date date default sysdate,
    constraints pk_per_no primary key(per_no),
    constraints fk_member_id foreign key(member_id)
                            references member(member_id) on delete set null,
    constraints fk_category_code foreign key(category_code)
                            references category(category_code) on delete set null,
    constraints fk_location_code foreign key(location_code)
                            references location(location_code) on delete set null,
    constraints ck_per_rating check(per_rating in (0,8,15,18)),
    constraints ck_per_display check(per_display in ('N','Y')),
    constraints ck_admin_approval check(admin_approval in ('N','Y'))
    --    per_sale varchar2(20),
);

--Review
create table review(
    review_no number,
    revies_content varchar2(200) not null,
    review_date date default sysdate,
    per_no number not null,
    member_id varchar2(15) not null,
    constraints pk_review_no primary key(review_no),
    constraints fk_per_no1 foreign key (per_no) references performance(per_no) on delete cascade,
    constraints fk_member_id1 foreign key (member_id) references member(member_id) on delete cascade
);
--Wishlist
create table wishlist(
    member_id varchar2(15),
    per_no number,
    wish_date date default sysdate,
    constraints pk_wishlist primary key(member_id,per_no),
    constraints fk_member_id2 foreign key(member_id) references member(member_id),
    constraints fk_per_no2 foreign key(per_no) references performance(per_no)
);
--Schedule
create table schedule(
    sch_no number,
    per_no number,
    sch_days varchar2(10),
    sch_time varchar2(7),
    constraints pk_sch_no primary key(sch_no),
    constraints fk_per_no4 foreign key(per_no) references performance(per_no)
);
--Seat
create table seat(
    seat_no varchar2(6),
    seat_issue char(1) default 'N',
    seat_price number,
    sch_no number,
    constraints pk_seat_no primary key(seat_no),
    constraints fk_sch_no1 foreign key(sch_no) references schedule(sch_no)
);
--Ticket
create table ticket(
    tic_no number,
    tic_price number,
    seat_no varchar2(6),
    sch_no number,
    constraints pk_tic_no primary key(tic_no),
    constraints fk_seat_no foreign key(seat_no) references seat(seat_no),
    constraints fk_sch_no2 foreign key(sch_no) references schedule(sch_no)
);

--Pay
create table pay(
    pay_no number,
    tot_price number,
    pay_option varchar2(20),
    pay_date date default sysdate,
    member_id varchar2(15),
    tic_no number,
    per_no number,
    pay_yn char(1) default 'N',
    cancel_yn char(1) default 'N',
    constraints pk_pay_no primary key(pay_no),
    constraints fk_member_id3 foreign key(member_id) references member(member_id),
    constraints fk_tic_no foreign key(tic_no) references ticket(tic_no),
    constraints fk_per_no3 foreign key(per_no) references performance(per_no)
);

--=============== tickets계정으로 시퀀스 생성 ===============
create sequence performance_seq
increment by 1
start with 1
minvalue 1
maxvalue 10000
cycle;

--=============== tickets계정으로 뷰 생성 ===============
--아직 없음

--=============== tickets계정으로 기본 insert 생성===============
--location
insert into 
    location
values (
    'L1',
    '서울'
);
insert into 
    location
values (
    'L2',
    '경기/인천'
);
insert into 
    location
values (
    'L3',
    '대전/충청/강원'
);
insert into 
    location
values (
    'L4',
    '부산/대구/경상'
);
insert into 
    location
values (
    'L5',
    '광주/전라/제주'
);

--category
insert into 
    category
values (
    'C1',
    '뮤지컬',
    default,
    default
);
insert into 
    category
values (
    'C2',
    '연극',
    default,
    default
);
insert into 
    category
values (
    'C3',
    '콘서트',
    default,
    default
);
insert into 
    category
values (
    'C4',
    '클래식',
    default,
    default
);
insert into 
    category
values (
    'C5',
    '전시',
    default,
    default
);

--member
insert into 
    member
values(
    'admin',
    '$2a$10$NtnZ2wyGQWt3akDFUfqTW.cUAsdZYDfshc1698R1zZlbTIZbMYMo2',
    '관리자',
    'admin@naver.com',
    '01075695421',
    '서울특별시 강남구 140-47 10동 9909호',
    'A',
    default,
    default
);
--admin 참고구문
--delete member where member_id = 'admin';
--update member set member_role = 'A' where member_id = 'admin'; 

insert into 
    member
values(
    'honggd',
    '$2a$10$Te9bO/6BuGCO3xY/Avis.emYCtKbYgZK3cM991zvKr2vWxo51jkd.',
    '홍길동',
    'honggd@naver.com',
    '01075695421',
    '서울특별시 한양구 경복동 112-7',
    'U',
    default,
    default
);

insert into 
    member
values(
    'company1',
    '$2a$10$3qCOl8BCyaloCmZQt4mGzuuf.XB2AtKov1slPxiZ0fPE7yoUhFKLa',
    '판매자1',
    'company1@naver.com',
    '01075695421',
    '서울특별시 종로구 혜화동 115-2',
    'C',
    default,
    default
);
--======================================================

--select * from theater;
--select * from location;
--select * from category;
--select * from member;
--select * from performance;
--select * from review;
--select * from wishlist;
--select * from schedule;
--select * from seat;
--select * from ticket;
--select * from pay;

--rollback;
commit;


