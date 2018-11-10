SET NAMES UTF8;
CREATE DATABASE qk CHARSET=UTF8;
USE qk;

#用户登录表
CREATE TABLE qk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd VARCHAR(32),
  cpwd VARCHAR(32)
);
INSERT INTO qk_user VALUES
  (null,'dongdong','147258','147258'),
  (null,'dingding','123456','123456');

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
  avatar INT,
  detail VARCHAR(5000),
  per INT,
  make VARCHAR(25)
);
INSERT INTO qk_product VALUES
  (NULL,"能帮你赚到钱的50节商业思维提升课","http://127.0.0.1:3000/index/ke01.jpg","home/details/DetailList?lid=1",1,'<span>生活实战，学了就能用，这可能是第一个能帮你赚到钱的商业提升课。<br><br>课程经多次打磨面世，从接地气的生活经济现象入手，留意从未发现过的小细节，从中发现大格局；向商界大佬们取经，筑成全新的思维方式；在新的思维方式的刺激下，落实到日常工作，着手于提高工作效率、职场升职加薪及增收方法；最后通过理财实现买房买车，甚至更高目标。<br><br>4大维度，11大主题，50节商业思维提升课，开启全新学习体验！<br><br>【购课指南】<br>1.课程连载：截止10月29日，课程已更新1节导读+13节视频课，后续每周更新1-2节，共50节；<br>2.课程服务：就在你身边的理财顾问，答疑解惑，化解焦虑&nbsp;(添加课程顾问小高微信Tgss01备注“云课堂”，进入学员群)<br>3.有效期：课程一次购买，视频永久有效，可自行安排学习，不限时间次数；<br>4.关注小维老师公众号【维小维生素】后台回复“财商”获取惊喜福利~<br>5.听课两种方式：①下载网易云课堂APP，点击查看我的订单&nbsp;2、②关注网易云课堂公众号，进入公众号，点击查看课程</span>',1150,'北京大学'),
  (NULL,"25堂通识阅读课带你打破只是边界","http://127.0.0.1:3000/index/ke02.jpg","home/details/DetailList?lid=2",1,'<span>七大经典通识领域精华领读&nbsp;&nbsp;&nbsp;这门课程帮助你从阅读中理解世界。<br><br>＞＞＞如果你不知道想读一点经典的书应该读什么？<br>——这门课程可以告诉你，它是一门七大经典通识领域阅读指南，从不知道到知道经典领域的通知知识，帮助你建立通识阅读框架<br><br>＞＞＞如果你不知道遇到喜欢的领域应该怎么读？<br>——在这里，从不爱读不会读到培养阅读兴趣、，这是从0开始的自我通识阅读课。<br><br>＞＞＞如果你疑惑读了很多书会有什么用？<br>——罗文益用通识阅读的经历告诉你，最有价值的阅读是帮助你多元化视角看待世界，通过多领域阅读带来不一样的解决问题和思维方式！<br><br>【课程内容包括】<br>&nbsp;·&nbsp;25堂精品视频课&nbsp;永久观看&nbsp;不限次数；<br>&nbsp;·&nbsp;7大经典领域模块导读：经济学、社会学、心理学、政治学、金融学、哲学和数学；<br>·&nbsp;88本落地书单推荐：不只是列列书名，而是告诉你一个可操作的阅读路径；<br>·&nbsp;包括书单和阅读建议以及N+关于如何看待世界角度的思维；<br><br>【学习指南】<br>1.课程内容：课程全部视频已发布上线，共25节；<br>2.有效期：课程一次购买，视频永久有效，可自行安排学习，不限时间次数；<br>3.欢迎在讨论区和评论区留言互动，也可以关注罗文益老师公众号「罗文益」（ID：wenyidehua）进行互动</span>',2501,'南京理工大学'),
  (NULL,"听得懂得金融思维课","http://127.0.0.1:3000/index/ke03.jpg","home/details/DetailList?lid=3",1,'<span>25节听得懂的金融思维课&nbsp;，零基础，人人用得上！<br>帮你快速入门金融学，建立财富观，开启有收益的人生！<br><br>【为什么学这门课？】<br>生活中听不懂新闻里金融名词？——这门课帮助你了解金融概念，摸清金融脉络<br>年轻人没建立起财富观不知道怎样开始？——课程帮助你培养金融思维与自我财富意识<br>普通人不知如何开启个人投资之路？——这里会讲金融投资那些事儿，帮助你玩转个人投资<br>职场人要做管理层或创业但不了解相关知识？——这里有用得上的公司决策，帮你看清趋势<br><br>【讲师介绍】<br>文豪&nbsp;福布斯精英（30岁以下创业精英榜）&nbsp;&nbsp;<br>纽约大学商学院毕业&nbsp;剑桥大学商学院MBA<br>华尔街投行分析师&nbsp;文豪金融创始人&nbsp;<br><br>【课程包括】<br>25堂精品课（先发布音频，陆续配视频字幕，11月底前全部制作完毕）&nbsp;永久观看&nbsp;不限次数！<br>涵盖金融思维、金融工具、个人投资、公司决策、未来趋势5大章节<br>25个通俗易懂的金融案例切入及评析<br>每节一个练习思考，帮助你实操锻炼<br>N+关于提升金融思维的点拨！<br><br>【价格说明】<br>原价199，课程未连载完毕前，限时特价！<br>更新完毕，随即涨价，越早加入越划算！<br><br>【加群交流】<br>助教微信：18801076695&nbsp;，加入文豪金融群，每周一次金融解读，不定期彩蛋，文豪老师也在，一起交流！</span>',1023,'湖南大学'),
  (NULL,"2018让你的年度计划有效实施","http://127.0.0.1:3000/index/ke04.jpg","home/details/DetailList?lid=4",1,'<span>经常有很多朋友询问：“您的图表看起来漂亮、专业、高大上，我非常想学习您的课程，但我&nbsp;Excel&nbsp;只会一点点，能够学会吗？”<br><br>ExcelPro&nbsp;商业图表系列课程，专注在基于&nbsp;Excel&nbsp;的商业数据可视化，属于中高级程度，对比较基础的&nbsp;Excel&nbsp;知识不会详细讲解。因此，对于&nbsp;Excel&nbsp;的&nbsp;0&nbsp;基础、入门级用户来说，是有一定难度的，需要先行补充基础达到初级程度。<br><br>经过认真甄选，我选择了刘伟老师的3门课程，编排成为本课程，作为图表课程的配套基础课程。如果你觉得自己属于0基础或入门级程度，或者在学习图表课程时觉得有困难，都建议先学习此课程。<br><br>为什么叫“从入门到忘记”？因为&nbsp;Excel&nbsp;就是一个办公的工具，当你学会熟练使用一个工具的时候，应该早已忘记有关它的“知识”，自然而然地运用它去完成你的任务。课程包括入门基础、函数公式、透视表3个部分，建议学习时间为3天~3周之内。使用2010版本演示，适合于2007~2016各版本。<br><br>本课程也可以作为通用的&nbsp;Excel&nbsp;入门课程，任何需要使用&nbsp;Excel&nbsp;的人士都可以学习。</span>',2304,'浙江理工大学'),
  (NULL,"和大白一起学PPT演讲","http://127.0.0.1:3000/index/ke05.jpg","home/details/DetailList?lid=5",1,'<span>我相信你一定遇到过这些困惑：<br>-想进入一个新行业，但不知道自己的选择是不是对的，或者不知道怎么用自己的行业洞察，去打动面试官<br>-到了新岗位，束手束脚，很容易在项目中被边缘化<br>-只知道埋头干活，身边的新机会完全看不见<br><br>成功人士和平庸的职场人，最大的区别，就在于对新机会的把握。把握新机会，要懂得提炼行业洞察、善于表达自我、用行之有效的方式管理好项目；屠老师在职场近15年的打拼，结合自己的观察和总结，沉淀出了这套行之有效的职场新机会管理方法，涵盖了进入新行业、新岗位，到新项目等职场常见的各种工作场景。<br><br>【购买须知】<br>1.更新：课程已上线第一章，后期每两周更新两章。<br>2.内容：包括27道思考题+数个麦肯锡思维工具。<br>3.有效期：课程一次购买，视频永久有效，可自行安排时间进行学习，不限时间、次数。<br>&nbsp;<br>希望通过这门课的学习，让你不断找到职场新机会，获得职场和人生的成功！</span>',3210,'河海大学'),
  (NULL,"高绩效精英的职场习惯","http://127.0.0.1:3000/index/ke06.jpg","home/details/DetailList?lid=6",1,'<span>【课程亮点】<br>一张全脑优势脑图，可视化你的天赋优势；<br>一套DISC行为理论，让你看懂自己更懂他人；<br>三条发展路线，锁定你的修炼方向；<br>六层晋升金字塔，带你看透组织框架，<br>十二字真言，祝你砥砺前行；<br>近百道作业，结合理论落地实操；<br>老师指点，一对一作业辅导。<br>【学习须知】<br>1.&nbsp;统一在【微信群】交流，陪伴同学们一起学习成长。<br>购买成功后请添加助理微信ID：mike-huazai，<br>报上网易云订单号后获得学号，用以进群和提交作业之用。<br>2.&nbsp;建议学习方式：<br>第一轮，网易云课堂APP上的离线观看。<br>第二轮，电脑网页端在线观看并记录笔记。<br>第三轮，整体了解之后，再来提交作业。<br>3.收费课程带有作业，以作业交流的方式，个性优化成长。<br>（务必联系助理登记学号）</span>',1652,'哈尔滨工业大学'),
  (NULL,"躺着也能赚钱的基金投资课","http://127.0.0.1:3000/index/ke07.jpg","home/details/DetailList?lid=7",2,'<span>你是否经历过以下的扎心瞬间：<br>-工作一段时间以来，总被人说，自己思维不够成熟，甚至还带着学生思维。<br>-遇到老板布置的不同的职场问题，不知道该“怎么想”<br>-重要的汇报、面对老板的反驳，不知道该“怎么说”；<br>-要想提升自己业绩，成为老板眼中的高绩效员工，不知道该“怎么做”<br><br>其实，老板也是需要管理的。你需要管理你对他的认知、管理他的期望、管理和他的沟通过程等等。<br><br>职场，有一套独特的游戏规则。而这些背后的规则和套路，你的老板，往往不会告诉你；学校，更不会教给你。<br><br>管理你的老板，就是你必须掌握的，第一个职场规则。希望这门课的，可以让你掌握一套管理老板的方法论，搞定老板，就是这么简单，一起加入吧！<br><br>【购买须知】<br>1.更新：课程已全部上线，后期不定期根据新规更新或迭代。<br>2.有效期：课程一次购买，视频永久有效，可自行安排时间进行学习，不限时间、次数。<br>3.有任何想法，欢迎加小编的微信：jiaoyuzhuanjia2018</span>',1632,'深圳大学'),
  (NULL,"希尔叫你炒外汇","http://127.0.0.1:3000/index/ke08.jpg","home/details/DetailList?lid=8",2,'<span>各位小伙伴你们好，我是古厄木<br><br>在出这套课之前，很多小伙伴找到我，希望我出一课关于高级人像后期的内容，但说实话，这还真不是一两节课就能修炼的一门技术<br><br>其实相关的内容不是没有，但其要么片面，因为教学者并没有从业经验，要么非常昂贵...所以用了1年多时间，这套课我终于完成了<br><br>作为一名爱好者到专业从业者，再到现在的教学编著者，相信我一定懂你们正在经历或将要经历的困惑，其实人像的拍和修同等重要，很多小伙伴花大价钱买了器材，但拍出来的人像仍效果一般，这其中有技术、审美上的欠缺，更重要的是后期技法和思路的欠缺<br><br>这套课帮大家打通了人像高级修图的技法、思路、原理，甚至是一些从业、经验相关的花边内容也有讲到，相信大家学完这套课，不但能具备化废片为大片的能力，同时能做到在拍摄时心中有数<br><br>之所以出这套课，并且以这么低的价格提供给大家，更多是因为遥想当初，如果有这样一套教学，我定会少走很多弯路，而现在的你们，或许就是当年那个迷茫的我，然而知识的价值在于可以为更多的人所用，那样，我就放心了</span>',1542,'成都信息工程大学'),
  (NULL,"跟简七学理财","http://127.0.0.1:3000/index/ke09.jpg","home/details/DetailList?lid=9",2,'<span id="auto-id-1541421618730">学完本门课程，我们相信，你将不再为这些问题苦恼：<br><br>【1】大家都很忙，为啥有的人一年能看200本书？<br>【2】工作忙到飞起，如何挤出时间阅读？<br>【3】碎片化阅读到底是真有效还是拉低智商？<br>【4】同样一本书，为何有人说好，有人说没干货？<br>【5】书店买书划算还是网店买书划算？<br>【6】好书千千万，如何快速选到自己需要的那一本？<br>【7】看一手知识经典好，还是先看入门科普书？<br>【8】读书到底应该读快一点，还是慢一点？<br>【9】看完书就很容易忘，怎样阅读才有实效？<br>......<br><br>想想看，现在教你读一本书的节目太多了，为何你不尝试学习一下系统掌握学习的方法？<br><br>学完这门课，你将掌握三大移动互联网时代阅读神技能。<br><br>【1】聪明人都在利用碎片化时间阅读！<br>【2】在短时间内抓住一本书的关键信息！<br>【3】有效内化一本书的知识并输出分享！<br><br>想成为古典老师、秋叶大叔这样的阅读高手，秘密都在这门课中。<br><br><br>购买课程后，有需要请随时联系宝宝哥（微信号BMbabe4)，备注“阅读课”，宝宝哥才会通过验证噢~</span>',1620,'西南交通大学'),
  (NULL,"股市价值投资","http://127.0.0.1:3000/index/ke10.jpg","home/details/DetailList?lid=10",2,'<span id="auto-id-1541421670311">你平均每年读多少本书？<br>全世界每年阅读书籍数量排名第一的是犹太人，平均每人一年读书64本。而中国13亿人口出去教科书，平均每人一年读书1本都不到。一个爱读书的民族，自然是优秀的。<br><br>在职场上，相信每个人都曾经有过很见那的时候，度过这种煎熬，有一个法宝就是躲进书中，躲进自己的精神世界里。第二天再精神饱满地去上班，继续奋斗。<br><br>在你工作过程中陷入瓶颈，找不到人生方向，不妨在上班路上听听卡尔·纽波特的《深度工作》之后，可以充实自信和方向。<br>因为每天听过一本书，明天将成为你升职加薪的筹码。<br><br>陈药师：说书名家<br>前《芭莎男士》杂志报道总监<br>青年学者，财经作家、管理学讲师。毕业于外交学院；<br>人民大学金融学在职硕士；<br>日本早稻田大学访问学者，外交学院国际关系客座讲师。<br><br>他将会把各个领域的必读经典书浓缩出来，通过简明易懂的事例、经典知识的串讲搭配风趣幽默的讲解风格，帮你快速打开认知的疆界。</span>',1721,'华中农业大学');

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



