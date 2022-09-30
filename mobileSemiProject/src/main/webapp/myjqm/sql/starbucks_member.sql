--개인 세미프로젝트(모바일용)

CREATE TABLE starbucks_member (
userid VARCHAR2(50) NOT NULL PRIMARY KEY,
passwd VARCHAR2(50) NOT NULL,
name VARCHAR2(50) NOT NULL,
email VARCHAR2(50)  NOT NULL,
tel VARCHAR2(50) NOT NULL,
birth VARCHAR2(50) NOT NULL,
address1 varchar2(200) NOT NULL,
address2 varchar2(200),
join_date DATE DEFAULT sysdate
);

INSERT INTO starbucks_member (userid,passwd,name,email,tel,birth, address1) VALUES ('hong1', 'hong1234!' ,'홍길동', 'hong1@naver.com', '010-1234-5678', '950101', '서울시 강남구');
INSERT INTO starbucks_member (userid,passwd,name,email,tel,birth, address1) VALUES ('you1', 'you1234!' ,'유관순', 'you1@naver.com', '010-2222-3344', '930313', '서울시 강북구');
INSERT INTO starbucks_member (userid,passwd,name,email,tel,birth, address1) VALUES ('admin1', 'admin1234!' ,'관리자', 'admin1@gmail.com', '010-5555-7788', '950418', '서울시 노원구');


SELECT * FROM starbucks_member order by join_date;

COMMIT;

--로그인 처리
select name from starbucks_member
where userid='admin1' and passwd='admin1234!';