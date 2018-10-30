SET NAMES UTF8;
CREATE DATABASE qk CHARSET=UTF8;
USE qk;

#用户登录表
CREATE TABLE qk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd VARCHAR(32)
);
INSERT INTO qk_user VALUES(null,'Tom',md5('123'));
INSERT INTO qk_user VALUES(null,'dongdong',md5('123'));
INSERT INTO qk_user VALUES(null,'jerry',md5('123'));

#图片轮播表 qk_imagelist
CREATE TABLE qk_imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255), 
  title VARCHAR(50)
);
INSERT INTO qk_imagelist VALUES
  (NULL,'http://127.0.0.1:3000/img/index/banner01.png','图片1'),
  (NULL,'http://127.0.0.1:3000/img/index/banner02.png','图片2'),
  (NULL,'http://127.0.0.1:3000/img/index/banner03.png','图片3'),
  (NULL,'http://127.0.0.1:3000/img/index/banner04.png','图片4'),
  (NULL,'http://127.0.0.1:3000/img/index/banner05.png','图片5'),
  (NULL,'http://127.0.0.1:3000/img/index/banner06.png','图片6');