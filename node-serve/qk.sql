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

#首页内容
CREATE TABLE qk_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(500),
  img_url VARCHAR(100),
  href VARCHAR(100),
  avatar INT
);
INSERT INTO qk_product VALUES
  (NULL,"能帮你赚到钱的50节商业思维提升课","http://127.0.0.1:3000/img/index/ke01.jpg","home/details/DetailList?lid=1",1),
  (NULL,"25堂通识阅读课带你打破只是边界","http://127.0.0.1:3000/img/index/ke02.jpg","home/details/DetailList?lid=2",1),
  (NULL,"听得懂得金融思维课","http://127.0.0.1:3000/img/index/ke03.jpg","home/details/DetailList?lid=3",1),
  (NULL,"2018让你的年度计划有效实施","http://127.0.0.1:3000/img/index/ke04.jpg","home/details/DetailList?lid=4",1),
  (NULL,"和大白一起学PPT演讲","http://127.0.0.1:3000/img/index/ke05.jpg","home/details/DetailList?lid=5",1),
  (NULL,"高绩效精英的职场习惯","http://127.0.0.1:3000/img/index/ke06.jpg","home/details/DetailList?lid=6",1),
  (NULL,"躺着也能赚钱的基金投资课","http://127.0.0.1:3000/img/index/ke07.jpg","home/details/DetailList?lid=7",2),
  (NULL,"希尔叫你炒外汇","http://127.0.0.1:3000/img/index/ke08.jpg","home/details/DetailList?lid=8",2),
  (NULL,"跟简七学理财","http://127.0.0.1:3000/img/index/ke09.jpg","home/details/DetailList?lid=9",2),
  (NULL,"股市价值投资","http://127.0.0.1:3000/img/index/ke10.jpg","home/details/DetailList?lid=10",2);

#首页专题
CREATE TABLE qk_topic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(100),
  href VARCHAR(100)
);
INSERT INTO qk_topic VALUES
  (NULL,"http://127.0.0.1:3000/img/index/sub01.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/img/index/sub02.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/img/index/sub03.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/img/index/sub04.png","home/details/List");