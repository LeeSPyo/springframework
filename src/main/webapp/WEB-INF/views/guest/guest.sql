show tables;

create table guest2 (
	idx int not null auto_increment primary key,	/* 방명록 고유번호 */
	name varchar(20) not null,						/* 방문자 성명 */
	email varchar(60),								/* 이메일 주소 */
	homepage varchar(60),							/* 방문자의 홈페이지(블로그 주소) */
	vDate datetime default now(),					/* 방문일자/시간 */
	hostIp varchar(50) not null,					/* 방문자 IP */
	content text not null							/* 방문 소감 */
);

desc guest2;

insert into guest2 values (default,'관리자','oco141@naver.com','blog.daum.net/cjsk1126',default,'192.168.0.228','방명록 서비스를 시작합니다.');
insert into guest2 values (default,'이기자','lkj1234@naver.com','blog.daum.net/cjsk1126',default,'221.169.4.220','귀사의 번영을 기원합니다.');

select * from guest2;

desc reptilelog;
drop table reptilelog;

insert into reptileLog values(default,'admin','관리자','1234','관리자입니다 반갑습니다.',default);

select * from reptilelog;

create table reptilelog (
	idx int not null auto_increment,	/* 회원 고유번호 */
	mid varchar(20) not null,			/* 회원 아이디(중복불허) */
	pwd varchar(100) not null,			/* 비밀번호(암호화처리) */
	nickName varchar(20) not null,		/* 별명(중복불허) */
	name varchar(20) not null,			/* 회원 성명 */
	gender varchar(5) default '남자',		/* 성별 */
	birthday datetime default now(),	/* 생일 */
	tel varchar(15),					/* 전화번호(010-1234-5678) */
	address varchar(100),				/* 주소 */
	email varchar(50) not null,			/* 이메일(아이디/비밀번호 분실시 필요)-형식 체크할것 */
	homePage varchar(50),				/* 홈페이지(블로그) 주소 */
	job varchar(20),					/* 직업 */
	hobby varchar(60),					/* 취미 */
	photo varchar(100) default 'noimage.jpg', /* 회원사진 */
	content text,						/* 자기소개 */
	userInfor char(6) default '공개',		/* 회원정보 공개여부(공개/비공개) */
	userDel char(2) default 'NO',		/* 회원 탈퇴 신청 여부(OK:탈퇴신청한 회원, NO:현재가입중인 회원) */
	point int default 100,				/* 회원가입 포인트(최초 100, 방문시마다 1포인트 증가) */
	level int default 1,				/* 1:준회원, 2:정회원, 3:우수회원 (4:운영자) 0:관리자 */
	visitCnt int default 0,				/* 방문횟수 */
	startDate datetime default now(),	/* 최초 가입일 */
	lastDate datetime default now(),	/* 마지막 접속일 */
	todayCnt int default 0,				/* 오늘 방문한 횟수 */
	primary key(idx, mid)
);

insert into reptilelog values (default,'admin','1234','관리맨','관리자',default,'1995-01-18','010-2035-5716','청주시 사창동','oco141@naver.com','http://','백수','숨쉬기', default,'관리자 입니다.',default,default,default,default,default,default,default,default);