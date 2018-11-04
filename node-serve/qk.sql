SET NAMES UTF8;
CREATE DATABASE qk CHARSET=UTF8;
USE qk;

#用户登录表
CREATE TABLE qk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd VARCHAR(32)
);
INSERT INTO qk_user VALUES
  (null,'dongdong','123'),
  (null,'dingding','123456');

#图片轮播表 qk_imagelist
CREATE TABLE qk_imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255), 
  title VARCHAR(50)
);
INSERT INTO qk_imagelist VALUES
  (NULL,'http://127.0.0.1:3000/index/banner01.png','图片1'),
  (NULL,'http://127.0.0.1:3000/index/banner02.png','图片2'),
  (NULL,'http://127.0.0.1:3000/index/banner03.png','图片3'),
  (NULL,'http://127.0.0.1:3000/index/banner04.png','图片4'),
  (NULL,'http://127.0.0.1:3000/index/banner05.png','图片5'),
  (NULL,'http://127.0.0.1:3000/index/banner06.png','图片6');
#首页导航
CREATE TABLE qk_nav(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255), 
  href VARCHAR(100),
  title VARCHAR(50)
);
INSERT INTO qk_nav VALUES
  (NULL,'http://127.0.0.1:3000/index/list01.png','home/details/List','国家精品'),
  (NULL,'http://127.0.0.1:3000/index/list02.png','home/details/List','考研'),
  (NULL,'http://127.0.0.1:3000/index/list03.png','home/details/List','理工补习'),
  (NULL,'http://127.0.0.1:3000/index/list04.png','home/details/List','计算机'),
  (NULL,'http://127.0.0.1:3000/index/list05.png','home/details/List','经济管理'),
  (NULL,'http://127.0.0.1:3000/index/list06.png','home/details/List','外语'),
  (NULL,'http://127.0.0.1:3000/index/list07.png','home/details/List','文学历史'),
  (NULL,'http://127.0.0.1:3000/index/list08.png','home/details/List','更多');

#首页内容
CREATE TABLE qk_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(500),
  img_url VARCHAR(100),
  href VARCHAR(100),
  avatar INT
);
INSERT INTO qk_product VALUES
  (NULL,"能帮你赚到钱的50节商业思维提升课","http://127.0.0.1:3000/index/ke01.jpg","home/details/DetailList?lid=1",1),
  (NULL,"25堂通识阅读课带你打破只是边界","http://127.0.0.1:3000/index/ke02.jpg","home/details/DetailList?lid=2",1),
  (NULL,"听得懂得金融思维课","http://127.0.0.1:3000/index/ke03.jpg","home/details/DetailList?lid=3",1),
  (NULL,"2018让你的年度计划有效实施","http://127.0.0.1:3000/index/ke04.jpg","home/details/DetailList?lid=4",1),
  (NULL,"和大白一起学PPT演讲","http://127.0.0.1:3000/index/ke05.jpg","home/details/DetailList?lid=5",1),
  (NULL,"高绩效精英的职场习惯","http://127.0.0.1:3000/index/ke06.jpg","home/details/DetailList?lid=6",1),
  (NULL,"躺着也能赚钱的基金投资课","http://127.0.0.1:3000/index/ke07.jpg","home/details/DetailList?lid=7",2),
  (NULL,"希尔叫你炒外汇","http://127.0.0.1:3000/index/ke08.jpg","home/details/DetailList?lid=8",2),
  (NULL,"跟简七学理财","http://127.0.0.1:3000/index/ke09.jpg","home/details/DetailList?lid=9",2),
  (NULL,"股市价值投资","http://127.0.0.1:3000/index/ke10.jpg","home/details/DetailList?lid=10",2);

#首页专题
CREATE TABLE qk_topic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(100),
  href VARCHAR(100)
);
INSERT INTO qk_topic VALUES
  (NULL,"http://127.0.0.1:3000/index/sub01.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/index/sub02.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/index/sub03.png","home/details/List"),
  (NULL,"http://127.0.0.1:3000/index/sub04.png","home/details/List");

#课程列表
CREATE TABLE qk_list(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(100),
  href VARCHAR(100),
  title VARCHAR(30),
  detail VARCHAR(15),
  person INT,
  week VARCHAR(20)
);
INSERT INTO qk_list VALUES
  (NULL,"http://127.0.0.1:3000/study/ke01.png","home/details/DetailList?lid=1","Office高级应用","成都信息工程大学",66701,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke02.png","home/details/DetailList?lid=2","Python语言程序设计","北京理工大学",95863,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke03.png","home/details/DetailList?lid=3","金融学","中央财经大学",69959,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke04.png","home/details/DetailList?lid=4","大学日语","西安交通大学",12190,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke05.png","home/details/DetailList?lid=5","高等数学(一)","同济大学",220167,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke06.png","home/details/DetailList?lid=6","程序设计入门————C语言","浙江大学",101071,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke07.png","home/details/DetailList?lid=7","统计热力学","内蒙古大学",3021,"进行至第1周"),
  (NULL,"http://127.0.0.1:3000/study/ke08.png","home/details/DetailList?lid=8","探索心理学","西南交通大学",3653,"进行至第2周"),
  (NULL,"http://127.0.0.1:3000/study/ke09.png","home/details/DetailList?lid=9","土木工程I","哈尔滨工业大学",1181,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke10.png","home/details/DetailList?lid=10","画法几何","桂林理工大学",755,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke11.png","home/details/DetailList?lid=11","大学英语(口语)","国防科技大学",81045,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke12.png","home/details/DetailList?lid=12","沟通心理学","哈尔滨工业大学",58315,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke13.png","home/details/DetailList?lid=13","线性代数与空间解析几何","电子科技大学",1371,"2018-12-08开课"),
  (NULL,"http://127.0.0.1:3000/study/ke14.png","home/details/DetailList?lid=14","预防医学(二)","复旦大学",2325,"2018-12-08开课"),
  (NULL,"http://127.0.0.1:3000/study/ke15.png","home/details/DetailList?lid=15","物理化学(下)","武汉大学",1174,"2018-12-08开课"),
  (NULL,"http://127.0.0.1:3000/study/ke16.png","home/details/DetailList?lid=16","力学","吉林大学",1325,"2018-12-08开课"),
  (NULL,"http://127.0.0.1:3000/study/ke17.png","home/details/DetailList?lid=17","大学物理——相对论和量子物理","山东大学",3446,"2018-12-08开课"),
  (NULL,"http://127.0.0.1:3000/study/ke18.png","home/details/DetailList?lid=18","人人爱设计(下)","山东大学",9527,"进行至第1周"),
  (NULL,"http://127.0.0.1:3000/study/ke19.png","home/details/DetailList?lid=19","无机及分析化学(上)","华中农业大学",3386,"进行至第3周"),
  (NULL,"http://127.0.0.1:3000/study/ke20.png","home/details/DetailList?lid=20","游戏化教学法","爱课程",739,"2018-12-10开课"),
  (NULL,"http://127.0.0.1:3000/study/ke21.png","home/details/DetailList?lid=21","VisualBasic.NET程序设计","同济大学",1594,"进行至第2周"),
  (NULL,"http://127.0.0.1:3000/study/ke22.png","home/details/DetailList?lid=22","奇异的仿生学","吉林大学",788,"2018-12-12开课"),
  (NULL,"http://127.0.0.1:3000/study/ke23.png","home/details/DetailList?lid=23","高等数学(二)","同济大学",40830,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke24.png","home/details/DetailList?lid=24","艺术导论","西安交通大学",5045,"进行至第2周"),
  (NULL,"http://127.0.0.1:3000/study/ke25.png","home/details/DetailList?lid=25","电磁学和光学","山东大学",5411,"进行至第2周"),
  (NULL,"http://127.0.0.1:3000/study/ke26.png","home/details/DetailList?lid=26","传感与检测技术","武汉理工大学",2925,"进行至第3周"),
  (NULL,"http://127.0.0.1:3000/study/ke27.png","home/details/DetailList?lid=27","高速跌路概论","西南交通大学",1754,"2018-12-22开课"),
  (NULL,"http://127.0.0.1:3000/study/ke28.png","home/details/DetailList?lid=28","数据结构","浙江大学",89556,"进行至第10周"),
  (NULL,"http://127.0.0.1:3000/study/ke29.png","home/details/DetailList?lid=29","大数据算法","哈尔滨工业大学",89405,"进行至第12周"),
  (NULL,"http://127.0.0.1:3000/study/ke30.png","home/details/DetailList?lid=30","运筹学","中国人民解放军陆军工程大学",10904,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke31.png","home/details/DetailList?lid=31","品读道家智慧","西安交通大学",20946,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke32.png","home/details/DetailList?lid=32","新媒体素养","中山大学",10122,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke33.png","home/details/DetailList?lid=33","外国民商案例选读","东北大学",2391,"进行至第3周"),
  (NULL,"http://127.0.0.1:3000/study/ke34.png","home/details/DetailList?lid=34","走进地理学","南京大学",7311,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke35.png","home/details/DetailList?lid=35","管理心理学","电子科技大学",8136,"进行至第周"),
  (NULL,"http://127.0.0.1:3000/study/ke36.png","home/details/DetailList?lid=36","程序设计基础","哈尔滨工业大学",10836,"进行至第7周"),
  (NULL,"http://127.0.0.1:3000/study/ke37.png","home/details/DetailList?lid=37","古文字学","武汉大学",9954,"进行至第7周"),
  (NULL,"http://127.0.0.1:3000/study/ke38.png","home/details/DetailList?lid=38","数学建模","厦门大学",15392,"进行至第7周"),
  (NULL,"http://127.0.0.1:3000/study/ke39.png","home/details/DetailList?lid=39","管理会计学","西南财经大学",11978,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke40.png","home/details/DetailList?lid=40","土木工程施工基本原理","同济大学",7362,"进行至第3周"),
  (NULL,"http://127.0.0.1:3000/study/ke41.png","home/details/DetailList?lid=41","数据库系统概论(高级篇)","中国人民大学",7616,"进行至第9周"),
  (NULL,"http://127.0.0.1:3000/study/ke42.png","home/details/DetailList?lid=42","C编程方法学","武汉理工大学",11412,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke43.png","home/details/DetailList?lid=43","思想道德修养与法律基础","武汉大学",13598,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke44.png","home/details/DetailList?lid=44","针灸学导论","背景中医药大学",11316,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke45.png","home/details/DetailList?lid=45","《论语》的智慧","西安交通大学",11846,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke46.png","home/details/DetailList?lid=46","现场生命急求知识与技能","南昌大学",12416,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke47.png","home/details/DetailList?lid=47","老子的人生智慧","东北大学",9453,"进行至第6周"),
  (NULL,"http://127.0.0.1:3000/study/ke48.png","home/details/DetailList?lid=48","走进创业","南京大学",8234,"进行至第4周"),
  (NULL,"http://127.0.0.1:3000/study/ke49.png","home/details/DetailList?lid=49","微积分","哈尔滨工业大学",3974,"进行至第5周"),
  (NULL,"http://127.0.0.1:3000/study/ke50.png","home/details/DetailList?lid=50","航天、人文与艺术","南京航空航天大学",2628,"进行至第8周");



