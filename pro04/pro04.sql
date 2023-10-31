USE haebeop;
CREATE DATABASE haebeop
DROP DATABASE haebeop

-- member
CREATE TABLE MEMBER(
       id VARCHAR(20) PRIMARY KEY,   -- (아이디)
       pw VARCHAR(300) NOT NULL,   -- (비밀번호)
       NAME VARCHAR(100) NOT NULL,   -- (이름)
       email VARCHAR(100) NOT NULL,   -- (이메일)
       tel VARCHAR(13),   -- (전화번호)
       addr1 VARCHAR(200),
       addr2 VARCHAR(100),
       postcode VARCHAR(10),
       regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (가입일)
       birth DATE, -- 생일
       POINT INT DEFAULT 0,   -- (포인트)
       grade INT DEFAULT 1-- 등급: 0 관리자, 1 학부모, 2 학생
);
insert into member(id, pw, name, email, tel, addr1, addr2, postcode) VALUES('admin', 1234, 'admin', 'sendjin1@naver.com', '010-1234-1234', 'add1', 'add2', 'postcode')
-- board
CREATE TABLE board(
      bno INT PRIMARY KEY AUTO_INCREMENT,   -- (게시글 번호) 자동 발생
      boardType varchar(15) NOT NULL,   -- 게시글 타입: notice, faq, forum, fileboard
      title VARCHAR(200) NOT NULL,   -- (게시글 제목)
      content VARCHAR(1000),   -- (게시글 내용)
      author VARCHAR(16) NOT NULL,   -- (작성자)
      relations VARCHAR(20) DEFAULT 'no', -- 관련 테이블. forum - dat 테이블, fileboard - file 테이블
      regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (등록일)
      visited INT DEFAULT 0   -- (조회수)
);

-- notice
CREATE TABLE notice(
       no INT PRIMARY KEY AUTO_INCREMENT,   -- (게시글 번호) 자동 발생
       title VARCHAR(200) NOT NULL,   -- (게시글 제목)
       content VARCHAR(1000),   -- (게시글 내용)
       regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (등록일)
       visited INT DEFAULT 0   -- (조회수)
);

INSERT INTO notice VALUES(DEFAULT, '제목1', '내용1', DEFAULT, DEFAULT);
commit

-- datgeul
CREATE TABLE dat(
        dno INT PRIMARY KEY AUTO_INCREMENT,   -- (댓글번호) 자동발생
        author VARCHAR(16) NOT NULL,   -- (댓글 작성자)
        content VARCHAR(1000) NOT NULL,   -- (댓글 내용)
        regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (댓글 등록일)
        par INT(11) NOT NULL   -- (해당 게시글 번호)
);

-- qna
CREATE TABLE qna(
        qno INT PRIMARY KEY AUTO_INCREMENT,   -- (문의번호) 자동발생
        title VARCHAR(100) NOT NULL,   -- (문의 제목)
        content VARCHAR(1000) NOT NULL,   -- (문의 내용)
        author VARCHAR(16),   -- (문의 작성자)
        regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),   -- (문의 등록)
        cnt INT DEFAULT 0,   -- (조회수)
        lev INT DEFAULT 0, -- 질문(0), 답변(1)
        par INT DEFAULT 0	-- 부모 글번호 -> 질문(자신 레코드의 qno), 답변(질문의 글번호)
);

-- 학습 자료실free
CREATE TABLE dataBoard(
      bno INT PRIMARY KEY AUTO_INCREMENT,                     -- (게시글 번호) 자동 발생
      title VARCHAR(200) NOT NULL,                            -- (게시글 제목)
      content VARCHAR(1000),                                  -- (게시글 내용)
      regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (등록일)
      visited INT DEFAULT 0,                                  -- (조회수)
      hasFile BOOLEAN DEFAULT false                           -- 프로필 사진
);

CREATE TABLE dataFile(
     fno INT primary KEY AUTO_INCREMENT, -- 파일 번호
     fileName VARCHAR(100),              -- 파일 원본 이름
     saveName VARCHAR(100),              -- 파일 저장 이름
     fileType VARCHAR(100),              -- 파일 타입
     saveFolder VARCHAR(100),            -- 파일 저장 폴더
     bno INT NOT NULL,                   -- 파일을 저장한 게시글 번호
     relations VARCHAR(20)               -- 파일을 저장한 게시판 타입
);

    COMMIT


-- 강의시스템 (온&오프라인)
CREATE TABLE lecture(
    ino INT PRIMARY KEY AUTO_INCREMENT,   -- (강의  번호) 자동 발생
    title VARCHAR(200) NOT NULL,   -- (강의 제목)
    content VARCHAR(1000),   -- (강의 내용)
    author VARCHAR(16) NOT NULL,   -- (작성자)
    exceed INT DEFAULT 0, 	-- (최대 신청 수)
    clas VARCHAR(200),	-- (강의 과목)
    regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (등록일)
    visited INT DEFAULT 0   -- (조회수)
        credit VARCHAR(200) NOT NULL,
);



CREATE TABLE files(
                      fno INT PRIMARY KEY AUTO_INCREMENT,   							-- 파일번호: 자동발생
                      par VARCHAR(1000) NOT NULL,   													-- 해당 게시글 번호
                      saveFolder VARCHAR(1000) NOT NULL,								-- 파일 저장 폴더
                      originNm VARCHAR(500) NOT NULL,									-- 파일 원래 이름
                      saveNm VARCHAR(500) NOT NULL,										-- 파일 저장 이름
                      fileType VARCHAR(100) NOT NULL,									-- 파일 확장자
                      uploadDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP	-- 파일 업로드 일자
);

CREATE TABLE fileboard(
                          bno INT PRIMARY KEY AUTO_INCREMENT,   							-- 게시글 번호 : 자동 발생
                          title VARCHAR(200) NOT NULL,   									-- 게시글 제목
                          content VARCHAR(1000),   											-- 게시글 내용
                          regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   	-- 등록일
                          visited INT DEFAULT 0   											-- 조회수
);

INSERT INTO MEMBER VALUES('admin', '$2a$10$oS1.3wpbnpIanIW4RoXxSOea/vGIijBMpLUBxZqurQqNjjMiJHgGa', '관리자', 'admin@haebeop.ed.kr', '010-2121-2121', '', '', '', DEFAULT, NULL, DEFAULT, DEFAULT);

SELECT * FROM files
DROP TABLE files
DROP TABLE fileboard
SELECT * FROM fileboard
