drop database nmsm;

create database nmsm default character set utf8mb4 collate utf8mb4_general_ci;

use nmsm;

CREATE TABLE nmsm_user (
  iuser INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  u_nm VARCHAR(10) NOT NULL,
  u_email VARCHAR(30) UNIQUE NOT NULL,
  u_pw VARCHAR(60) NOT NULL,
  u_birth DATE,
  u_tel VARCHAR(11),
  auth TINYINT(1) comment '0 : 권한 없음, 1 : 권한 있음'
);

CREATE TABLE dog_info (
  idog INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  iuser INT UNSIGNED NOT NULL,
  d_type INT UNSIGNED NOT NULL comment '',
  d_breed INT UNSIGNED NOT NULL comment '',
  d_age INT UNSIGNED NOT NULL,
  d_nm VARCHAR(10) NOT NULL,
  d_weight FLOAT(4, 2) NOT NULL,
  d_gender TINYINT(1) UNSIGNED NOT NULL,
  d_regNum INT(12),
  d_neuter TINYINT(1) UNSIGNED NOT NULL,
  FOREIGN KEY (iuser) REFERENCES nmsm_user (iuser)
); -- 관련 설명 comment 필요

CREATE TABLE hotel_info (
    ihotel INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    iuser INT UNSIGNED,
    h_acceptable INT UNSIGNED NOT NULL,
    h_location VARCHAR(10) NOT NULL,
    h_address VARCHAR(50) NOT NULL,
    h_img VARCHAR(100) NOT NULL,
    h_price INT UNSIGNED NOT NULL,
    mapX decimal(20, 16) NOT NULL,
    mapY double(20, 16) NOT NULL,
    h_detail VARCHAR(500) NOT NULL,
    h_tel VARCHAR(11) NOT NULL,
    h_service INT,
    FOREIGN KEY (iuser) REFERENCES nmsm_user (iuser)
);

CREATE TABLE book_info (
    ibook INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    checkIN DATE NOT NULL,
    checkOUT DATE NOT NULL,
    ihotel INT UNSIGNED,
    iuser INT UNSIGNED,
    idog INT UNSIGNED,
    service INT UNSIGNED,
    FOREIGN KEY (ihotel) REFERENCES hotel_info (ihotel),
    FOREIGN KEY (iuser) REFERENCES nmsm_user (iuser),
    FOREIGN KEY (idog) REFERENCES dog_info (idog)
);

CREATE TABLE hotel_review (
    ireview INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    iuser INT UNSIGNED,
    ihotel INT UNSIGNED,
    review_star FLOAT(2, 1),
    review_cnt VARCHAR(100),
    review_img VARCHAR(100),
    review_regdt DATE DEFAULT NOW(),
    FOREIGN KEY (iuser) REFERENCES nmsm_user (iuser),
    FOREIGN KEY (ihotel) REFERENCES hotel_info (ihotel)
); -- img는 한 장만??

CREATE TABLE like_list (
  ihotel INT UNSIGNED,
  iuser INT UNSIGNED,
  PRIMARY KEY (ihotel, iuser)
);