# Host: localhost  (Version: 5.5.40)
# Date: 2017-06-10 19:35:34
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "cms_about"
#

CREATE TABLE `cms_about` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "cms_about"
#

INSERT INTO `cms_about` VALUES (28,0,'关于我们','','','/upload/2017/05/17/591c5cf4779de.png','','','',2,1,NULL,'admin',1493871385,0,0,'<p style=\"color:#666666;font-family:Arial, \'Microsoft Yahei\', 微软雅黑;background-color:#FFFFFF;\">\r\n\t<br />\r\n</p>\r\n<p>\r\n\t&nbsp; &nbsp; 嘉应学院前身是创办于1913年的梅州女子师范学校。2000年原嘉应大学和嘉应教育学院合并组建嘉应学院并升格为本科院校。\r\n</p>\r\n<p>\r\n\t&nbsp; &nbsp; 学校位于广东梅州。梅州在<a target=\"_blank\" href=\"https://baike.so.com/doc/400870-424490.html\">清朝</a>时曾称<a target=\"_blank\" href=\"https://baike.so.com/doc/3974811.html\">嘉应州</a>，学校由此取名嘉应学院。粤闽赣周边地区及全梅州市(含<a target=\"_blank\" href=\"https://baike.so.com/doc/6068274.html\">梅江区</a>、<a target=\"_blank\" href=\"https://baike.so.com/doc/8894202.html\">梅县区</a>、兴宁市、<a target=\"_blank\" href=\"https://baike.so.com/doc/1389231.html\">五华县</a>、<a target=\"_blank\" href=\"https://baike.so.com/doc/5566717.html\">丰顺县</a>、<a target=\"_blank\" href=\"https://baike.so.com/doc/6068184.html\">大埔县</a>、<a target=\"_blank\" href=\"https://baike.so.com/doc/6068251.html\">平远县</a>、<a target=\"_blank\" href=\"https://baike.so.com/doc/6069327.html\">蕉岭县</a>等6县2区就读。\r\n</p>\r\n<p>\r\n\t&nbsp; &nbsp; 截止到2013年，学校占地面积1625亩，设置19个二级学院、2个公共教学部、40多个研究所。开设80多个本、专科专业;有来自17个省(区)全日制在校生22118人。\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\t<br />\r\n</p>');

#
# Structure for table "cms_admin"
#

CREATE TABLE `cms_admin` (
  `admin_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `lastloginip` varchar(15) DEFAULT '0',
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "cms_admin"
#

INSERT INTO `cms_admin` VALUES (8,'admin','9f24445952d45f7138a1b54eb74a2fdd','0',1497093578,'2855240636@qq.com','胡彦斌',1),(9,'hensen','08bd6182e70b8ef109d2c5050d5ecf80','0',1493622851,'','许潇洒',-1);

#
# Structure for table "cms_banner"
#

CREATE TABLE `cms_banner` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_banner"
#

INSERT INTO `cms_banner` VALUES (31,0,'','',NULL,'/upload/2017/05/17/591c5e652c306.jpg','','','',1,1,NULL,'admin',1494143285,0,0,NULL,NULL),(32,0,'','',NULL,'/upload/2017/05/17/591c5e5a713a3.jpg','','','',2,1,NULL,'admin',1494143313,0,0,NULL,NULL),(33,0,'','',NULL,'/upload/2017/05/11/59146e0964df0.png','','','',0,-1,NULL,'admin',1494507910,0,0,NULL,NULL),(34,0,'','',NULL,'/upload/2017/05/17/591c5ddb19ac3.jpg','','','',0,1,NULL,'admin',1494508387,0,0,NULL,NULL),(35,0,'','',NULL,'/upload/2017/05/11/59146f1242061.jpg','','','',0,-1,NULL,'admin',1494511391,0,0,NULL,NULL),(36,0,'','',NULL,'/upload/2017/05/17/591c5e6ec8a37.jpg','','','',2,1,NULL,'admin',1495031408,0,0,NULL,NULL);

#
# Structure for table "cms_career"
#

CREATE TABLE `cms_career` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_career"
#


#
# Structure for table "cms_course"
#

CREATE TABLE `cms_course` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_course"
#

INSERT INTO `cms_course` VALUES (28,0,'加强基层组织建设.doc','韩老师推荐','','/upload/2017/05/05/590bd69618acc.doc','','','',0,1,NULL,'admin',1493871385,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','刘霞'),(29,0,'加强基层组织建设.doc','王老师推荐',NULL,'/upload/2017/05/05/590bd62b709df.doc','','','',1,1,NULL,'admin',1493874073,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','曹馨蕾'),(30,0,'加强基层组织建设 夯实党的执政基础.doc','韩老师推荐',NULL,'/upload/2017/05/05/590bd68a6fa9c.doc','','','',2,1,NULL,'admin',1493943889,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>','美女'),(32,0,'Java 集合学习指南.pdf','韩老师推荐',NULL,'/upload/2017/05/08/590f4940a980d.pdf','','','',0,-1,NULL,'admin',1494174036,0,0,'<p style=\"text-align:justify;\">\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\n</p>\n<p style=\"text-align:justify;\">\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\n</p>\n<p style=\"text-align:justify;\">\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\n</p>\n<p style=\"text-align:justify;\">\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\n</p>\n',NULL);

#
# Structure for table "cms_job"
#

CREATE TABLE `cms_job` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_job"
#

INSERT INTO `cms_job` VALUES (28,0,'如何写出好简历','手把手教你撰写出色简历','','/upload/2017/05/04/590ab22d6b7ad.png','','','',0,-1,NULL,'admin',1493871385,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','刘霞'),(29,0,'“川农杯”就业知识竞赛圆满落幕','就业知识竞赛',NULL,'/upload/2017/05/04/590ab57899662.png','','','',1,1,NULL,'admin',1493874073,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','曹馨蕾'),(30,0,'就业知识竞赛','就业知识竞赛',NULL,'/upload/2017/05/05/590bc637407dc.png','','','',2,1,NULL,'admin',1493943889,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','美女');

#
# Structure for table "cms_menu"
#

CREATE TABLE `cms_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` varchar(20) NOT NULL DEFAULT '',
  `c` varchar(20) NOT NULL DEFAULT '',
  `f` varchar(20) NOT NULL DEFAULT '',
  `data` varchar(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`f`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "cms_menu"
#

INSERT INTO `cms_menu` VALUES (1,'菜单管理',0,'admin','menu','index','',90,1,1),(3,'Android',0,'home','cat','index','',3,-1,0),(6,'课程简介',0,'admin','content','index','',70,1,1),(8,'PHP',0,'home','cat','index','',0,-1,0),(9,'教学团队',0,'admin','teach','index','',60,1,1),(10,'教学课件',0,'admin','course','index','',50,1,1),(11,'基本管理',0,'admin','basic','index','',6,1,1),(12,'iOS',0,'home','cat','index','',0,-1,0),(13,'用户管理',0,'admin','admin','index','',7,1,1),(18,'1232',0,'admin','index','index','',0,-1,0),(19,'微视频',0,'admin','video','index','',40,1,1),(20,'职业测评',0,'admin','career','index','',30,1,1),(21,'经验分享',0,'admin','share','index','',20,1,1),(22,'专题介绍',0,'admin','theme','index','',10,1,1),(23,'就业知识',0,'admin','job','index','',9,1,1),(24,'轮播图',0,'admin','banner','index','',80,1,1),(25,'关于我们',0,'admin','about','index','',8,1,1);

#
# Structure for table "cms_news"
#

CREATE TABLE `cms_news` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "cms_news"
#

INSERT INTO `cms_news` VALUES (28,0,'大学生职业发展与就业指导课现阶段','','','/upload/2017/05/04/590aaae1b0d4a.png','','','',1,1,NULL,'admin',1493871385,0,0,'<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n\t<b> </b> \r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:28pt;\">\r\n\t<b> 大学生职业发展与就业指导课现阶段作为公共必修课，既强调职业在人生发展中的重要地位，又关注学生的全面发展和终身发展。通过激发大学生职业生涯发展的自主意识，树立正确的就业观，促使大学生理性地规划自身未来的发展，并努力在学习过程中自觉地提高就业能力和生涯管理能力。<span></span> </b> \r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:28pt;\">\r\n\t<b>在课程设置方面，实现生涯指导四年不断线。在本科一年级开展《大学生职业启蒙教育》模块教学，指导学生认知自己，认知专业，初步树立职业意识，并结合本专业的职业要求规划自己的大学生活；在本科二年级开展《大学生职业发展与规划教育》模块教学，指导学生进行科学的职业规划、探索自己的职业定位、提高职业能力；在本科三年级开展《大学生就业指导教育》模块教学，帮助学生明确职业方向，了解就业政策和就业流程，掌握求职策略，提高就业能力；在本科四年级开展《大学生就业形势与政策教育》模块教学，了解当前就业形势，提升求职、创业意识，帮助学生了解毕业、就业必要程序和相关政策。</b> \r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:28pt;\">\r\n\t<b>在课程目标方面，通过课程教学，大学生应当在态度、知识和技能三个层面均达到以下目标。<span>1.</span>态度层面：通过本课程的教学，大学生应当树立起职业生涯发展的自主意识，树立积极正确的人生观、价值观和就业观念，把个人发展和国家需要、社会发展相结合，确立职业的概念和意识，愿意为个人的生涯发展和社会发展主动付出积极的努力。<span>2.</span>知识层面：通过本课程的教学，大学生应当基本了解职业发展的阶段特点；较为清晰地认识自己的特性、职业的特性以及社会环境；了解就业形势与政策法规；掌握基本的劳动力市场信息、相关的职业分类知识以及创业的基本知识。<span>3.</span>技能层面：通过本课程的教学，大学生应当掌握自我探索技能、信息搜索与管理技能、生涯决策技能、求职技能等，还应该通过课程提高学生的各种通用技能，比如沟通技能、问题解决技能、自我管理技能和人际交往技能等。<span></span> </b> \r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:28pt;\">\r\n\t<b>在教学模式方面，采用理论与实践相结合、讲授与训练相结合的方式进行。教学可采用课堂讲授、典型案例分析、情景模拟训练、小组讨论、角色扮演、社会调查、实习见习等方法。在教学的过程中，要充分利用各种资源。除了教师和学生自身的资源之外，还需要使用相关的职业生涯与发展规划工具，包括职业测评、相关图书资料等；可以调动社会资源，采取与外聘专家、成功校友、职场人物专题讲座和座谈相结合的方法。是集理论课、实务课和经验课为一体的综合课程。<span></span>&nbsp;</b><b><br />\r\n&nbsp;</b> \r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\">\r\n\t<b><b> </b> </b> \r\n</p>\r\n<p>\r\n\t<br />\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\">\r\n\t<b></b> \r\n</p>');

#
# Structure for table "cms_news_content"
#

CREATE TABLE `cms_news_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` mediumint(8) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "cms_news_content"
#

INSERT INTO `cms_news_content` VALUES (7,17,'&lt;p&gt;\r\n\tgsdggsgsgsgsg\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\tsgsg\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\tgsdgsg \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n\t       ggg\r\n&lt;/p&gt;',1455756856,0),(8,18,'&lt;p&gt;\r\n\t你好\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t我很好dsggfg\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\tgsgfgdfgd\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\tgggg\r\n&lt;/p&gt;',1455756999,0),(9,19,'111',1456673467,0),(10,20,'111',1456674909,0),(11,21,'<p>\r\n\t<span style=\"font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;font-size:16px;line-height:32px;\">&nbsp; &nbsp; &nbsp; 3月13日下午，中共中央总书记、国家主席、中央军委主席习近平出席十二届全国人大四次会议解放军代表团全体会议，并发表重要讲话。</span>\r\n</p>\r\n<p>\r\n\t<span style=\"font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;font-size:16px;line-height:32px;\"><img src=\"/upload/2016/03/13/56e519acb12ee.png\" alt=\"\" /><br />\r\n</span>\r\n</p>',1457854896,0),(12,22,'&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\r\n\t&amp;nbsp; &amp;nbsp; “部长通道”是今年两会一大亮点，成为两会开放透明和善待媒体的一个象征。在这个通道上，以往记者拉着喊着部长接受采访的场景不见了，变为部长主动站出来回应关切，甚至变成部长排队10多分钟等着接受采访。媒体报道称，两会前李克强总理接连两次“发话”，要求各部委主要负责人“要积极回应舆论关切”。部长主动放料，使这个通道上传出了很多新闻，如交通部长对拥堵费传闻的回应，人社部部长称网传延迟退休时间表属误读等。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\r\n\t&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;img src=&quot;/upload/2016/03/13/56e51b7fcd445.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\r\n\t&amp;nbsp; &amp;nbsp; &amp;nbsp; 记者之所以喜欢跑两会，原因之一是两会上高官云集，能“堵”到、“逮”到、“抢”到很多大新闻--现在不需要堵、逮和抢，部长们主动曝料，打通了各种阻隔，树立了开明开放的政府形象。期待“部长通道”不只在两会期间存在，最好能成为一种官媒交流、官民沟通的常态化新闻通道。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\r\n\t&lt;span style=&quot;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;font-size:16px;line-height:32px;&quot;&gt;部长们多面对媒体多发言，不仅能提高自身的媒介素养，也带动部门新闻发言人，更加重视与媒体沟通。部长直接面对媒体回应关切，还能直接读到民情民生民意，而不是看别人的舆情汇报。&lt;/span&gt;\r\n&lt;/p&gt;',1457855362,0),(13,23,'&lt;p&gt;\r\n\t&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', 微软雅黑, SimSun, 宋体, \'Arial Narrow\', serif;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 2016年3月13日，2016年中超联赛第2轮：重庆力帆vs河南建业，主场美女球迷争芳斗艳。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;span style=&quot;color:#666666;font-family:\'Microsoft Yahei\', 微软雅黑, SimSun, 宋体, \'Arial Narrow\', serif;font-size:14px;line-height:28px;background-color:#FFFFFF;&quot;&gt;&lt;img src=&quot;/upload/2016/03/13/56e51cb17542e.png&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2016/03/13/56e51cb180f8a.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;',1457855680,0),(14,24,'<p>\r\n\t<br />\r\n</p>\r\n<p>\r\n\t新浪体育讯　　北京时间2016年3月12日晚7点35分，2016年中超联赛第2轮的一场比赛在天津水滴体育场进行。由天津泰达主场对阵广州富力。上半场双方机会都不多，<strong>下半场第57分钟，常飞亚左路护住皮球回做，汪嵩迎球直接远射世界波破门。随后天津泰达尽管全力进攻，但伊万诺维奇和迪亚涅都浪费了近在咫尺的机会</strong>，最终不得不0-1主场告负。\r\n</p>\r\n<p>\r\n\t<img src=\"/upload/2016/03/13/56e51f63a5742.png\" alt=\"\" width=\"474\" height=\"301\" title=\"\" align=\"\" /> \r\n</p>\r\n<p>\r\n\t由于首轮中超对阵北京国安的比赛延期举行，因此本场比赛实际上是天津泰达本赛季的首次亮相。新援蒙特罗领衔锋线，两名外援中后卫均首发出场。另一方面，在首轮主场不敌中超新贵河北华夏之后，本赛季球员流失较多的广州富力也许不得不早早开始他们的保级谋划。本场陈志钊红牌停赛，澳大利亚外援吉安努顶替了上轮首发的肖智。\r\n</p>\r\n<p>\r\n\t广州富力显然更快地适应了比赛节奏。第3分钟，吉安努前插领球大步杀入禁区形成单刀，回防的赞纳迪内果断放铲化解险情。第8分钟，雷纳尔迪尼奥左路踩单车过人后低平球传中，约万诺维奇伸出大长腿将球挡出底线。第14分钟，富力队左路传中到远点，聂涛头球解围险些失误，送出本场比赛第一个角球。\r\n</p>\r\n<p>\r\n\t天津队中场的配合逐渐找到一些感觉。第23分钟，天津队通过一连串小配合打到左路，周海滨下底传中被挡出底线。角球被富力队顶出后天津队二次将球传到禁区前沿，蒙特罗转身后射门但软弱无力被程月磊得到。第27分钟，约万诺维奇断球后直塞蒙特罗，蒙特罗转身晃开后卫在禁区外大力轰门打高。第29分钟，瓦格纳任意球吊入禁区，程月磊出击失误没有击到球，天津队后点将球再次传中，姜至鹏在对方夹击下奋力将球顶出底线。\r\n</p>\r\n<p>\r\n\t双方都没有太好的打开僵局的办法，开始陷入苦战。第33分钟，常飞亚左路晃开空档突然起脚，皮球擦着近门柱稍稍偏出底线。第43分钟，白岳峰被雷纳尔迪尼奥断球得手，后者利用速度甩开约万诺维奇，低平球传中又躲过了赞纳迪内的滑铲，但吉安努门前近在咫尺的推射被杨启鹏神奇地单腿挡出！双方半场只得0-0互交白卷。\r\n</p>\r\n<p>\r\n\t中场休息双方都没有换人。第47分钟，蒙特罗前场扣过多名对方队员后将球交给周海滨，但周海滨传中时禁区内的胡人天越位在先。第51分钟，王嘉楠右路晃开聂涛下底，但传中球又高又远。第54分钟，雷纳尔迪尼奥中场拿球挑过李本舰，后者无奈将其放倒吃到黄牌。第57分钟，常飞亚左路护住皮球回做，汪嵩迎球直接远射，杨启鹏鞭长莫及，皮球呼啸着直挂远角！世界波！富力队客场1-0取得领先。\r\n</p>\r\n<p>\r\n\t第62分钟，瓦格纳任意球吊到禁区，程月磊再次拿球脱手，幸亏张耀坤将球踢出了边线。天津队率先做出调整，迪亚涅和周通两名前锋登场换下郭皓和瓦格纳。第64分钟，天津队右路传中，周通禁区内甩头攻门，程月磊侧扑将球得到。富力队并未保守。第66分钟，常飞亚左路连续盘带杀入禁区，小角度射门打偏。不过一分钟，雷纳尔迪尼奥禁区右角远射，皮球在门前反弹后稍稍偏出。\r\n</p>\r\n<p>\r\n\t第71分钟，吉安努禁区角上回做，常飞亚跟进远射，杨启鹏单掌将球托出。天津队马上打出反击，蒙特罗禁区内转身将球分到右路，胡人天的传中找到后排插上的周海滨，但后者的大力头球顶得太正被程月磊侯个正着。富力队肖智换下卢琳。第74分钟，迪亚涅依靠强壮的身体杀入禁区直塞，蒙特罗停球后射门被密集防守的后卫挡出。\r\n</p>\r\n<p>\r\n\t于洋换下雷纳尔迪尼奥，富力队加强防守。第81分钟，天津队角球开出，迪亚涅甩头攻门顶偏。天津队连续得到角球机会。第85分钟，天津队角球二次进攻，周通传中，蒙特罗后点头球回做，约万诺维奇离门不到两米处转身扫射竟然将球踢飞！\r\n</p>\r\n<div id=\"ad_33\" class=\"otherContent_01\" style=\"margin:10px 20px 10px 0px;padding:4px;\">\r\n\t<iframe width=\"300px\" height=\"250px\" frameborder=\"0\" src=\"http://img.adbox.sina.com.cn/ad/28543.html\">\r\n\t</iframe>\r\n</div>\r\n<p>\r\n\t天津队范柏群换下李本舰。富力队用宁安换下常飞亚。第88分钟，胡人天战术犯规吃到黄牌。天津队久攻不下，第90分钟，赞纳迪内40米开外远射打偏。第93分钟，蒙特罗左路传中，迪亚涅头球争顶下来之后顺势扫射，皮球贴着横梁高出。广州富力最终将优势保持到了终场取得三分。\r\n</p>\r\n<p>\r\n\t进球信息：\r\n</p>\r\n<p>\r\n\t天津泰达：无。\r\n</p>\r\n<p>\r\n\t广州富力：第58分钟，卢琳左路回做，汪嵩跟上远射破网。\r\n</p>\r\n<p>\r\n\t黄牌信息：\r\n</p>\r\n<p>\r\n\t天津泰达：第54分钟，李本舰。第88分钟，胡人天。\r\n</p>\r\n<p>\r\n\t广州富力：无。\r\n</p>\r\n<p>\r\n\t红牌信息：\r\n</p>\r\n<p>\r\n\t无。\r\n</p>\r\n<p>\r\n\t双方出场阵容：\r\n</p>\r\n<p>\r\n\t天津泰达（4-5-1）：29-杨启鹏，23-聂涛、3-赞纳迪内、5-约万诺维奇、19-白岳峰，6-周海滨、7-李本舰（86分钟，28-范柏群）、8-胡人天、11-瓦格纳（63分钟，9-迪亚涅）、22-郭皓（63分钟，33-周通），10-蒙特罗；\r\n</p>\r\n<p>\r\n\t广州富力（4-5-1）：1-程月磊，11-姜至鹏、5-张耀坤、22-张贤秀、28-王嘉楠，7-斯文森、21-常飞亚（88分钟，15-宁安）、23-卢琳（73分钟，29-肖智）、31-雷纳尔迪尼奥（77分钟，3-于洋）、33-汪嵩，9-吉安努。\r\n</p>\r\n<p>\r\n\t（卢小挠）\r\n</p>\r\n<div>\r\n</div>\r\n<div style=\"font-size:0px;\">\r\n</div>\r\n<p>\r\n\t<br />\r\n</p>',1457856460,0),(15,25,'123123',1467394957,0),(16,26,'12312',1493569270,0),(17,27,'<img src=\"/upload/2017/05/01/5906166106d51.jpg\" alt=\"\" /><img src=\"/upload/2017/05/01/59061662a4b4a.jpg\" alt=\"\" /><img src=\"/upload/2017/05/01/5906167600f91.png\" alt=\"\" />',1493571206,0);

#
# Structure for table "cms_position"
#

CREATE TABLE `cms_position` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` char(100) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "cms_position"
#

INSERT INTO `cms_position` VALUES (3,'小图推荐',1,'小图推荐位',1456665873,0),(5,'右侧广告位',1,'右侧广告位',1457873143,0),(12,'大图推荐',1,'大图推荐位',1467784467,0);

#
# Structure for table "cms_position_content"
#

CREATE TABLE `cms_position_content` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` int(5) unsigned NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT NULL,
  `news_id` mediumint(8) unsigned NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

#
# Data for table "cms_position_content"
#

INSERT INTO `cms_position_content` VALUES (32,5,'2015劳伦斯国际体坛精彩瞬间','./upload/2016/07/06/577d0ffd82d69.jpg','http://sports.sina.com.cn/laureus/moment2015/',0,0,1,1457873220,0),(33,5,'singwa老师教您如何学PHP','./upload/2016/07/06/577d0fe768caa.jpg','http://t.imooc.com/space/teacher/id/255838',0,0,1,1457873435,0),(34,3,'习近平今日下午出席解放军代表团全体会议','./upload/2016/07/02/5777becac0cb2.jpg',NULL,21,0,-1,1457854896,0),(35,3,'李克强让部长们当第一新闻发言人','./upload/2016/07/06/577d0ee461c32.png','',22,5,1,1457855362,0),(38,12,'李克强让部长们当第一新闻发言人','./upload/2016/07/06/577d0e634a2ec.gif','',22,0,1,1467784496,0),(39,3,'李克强让部长们当第一新闻发言人','./upload/2016/07/02/5777becac0cb2.jpg',NULL,22,0,-1,1467784918,0),(40,3,'重庆美女球迷争芳斗艳','./upload/2016/07/06/577d0ef1e7594.png','',23,10,1,1467784918,0),(41,3,'中超-汪嵩世界波制胜 富力客场1-0力擒泰达','./upload/2016/07/06/577d0ed864f7d.png','',24,6,1,1467784918,0),(42,5,'12312313','./upload/2016/07/06/577d100d7c4f5.jpg','http://www.imooc.com/course/list?c=android',0,0,1,1467813921,0),(43,5,'http://www.imooc.com/course/li','./upload/2016/07/06/577d102ca949f.jpg','http://www.imooc.com/course/list?c=android',0,0,1,1467813936,0),(44,5,'http://www.imooc.com/course/li','./upload/2016/07/06/577d1042cec4c.jpg','http://www.imooc.com/course/list?c=android',0,0,1,1467813958,0);

#
# Structure for table "cms_share"
#

CREATE TABLE `cms_share` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_share"
#

INSERT INTO `cms_share` VALUES (28,0,'如何写好经验交流材料','如何写好经验交流材料','','/upload/2017/05/04/590ab22d6b7ad.png','','','',0,1,NULL,'admin',1493871385,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','刘霞'),(29,0,'如何写好经验交流材料','如何写好经验交流材料',NULL,'/upload/2017/05/04/590ab57899662.png','','','',1,1,NULL,'admin',1493874073,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','曹馨蕾'),(30,0,'如何写好经验交流材料','如何写好经验交流材料',NULL,'/upload/2017/05/05/590bc637407dc.png','','','',0,1,NULL,'admin',1493943889,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','美女');

#
# Structure for table "cms_teach"
#

CREATE TABLE `cms_teach` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_teach"
#

INSERT INTO `cms_teach` VALUES (28,0,'许英俊','助教','','/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1493871385,0,0,'<div class=\"content-item content-text-item\" style=\"margin:0px 0px 0.18rem;padding:0px;border:0px;vertical-align:baseline;text-align:justify;\">\r\n\t许英俊，1988年生，经济学硕士，助教。现任嘉应学院经济与管理学院辅导员。从事学生就业指导工作3年。<br />\r\n</div>\r\n','刘霞'),(29,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1493874073,0,0,'<div class=\"content-item content-text-item\" style=\"margin:0px 0px 0.18rem;padding:0px;border:0px;vertical-align:baseline;text-align:justify;\">\t\t许英俊，<span>1989</span>年生，木材科学与技术硕士，助教。现任嘉应学院经济与管理学院辅导员。从事学生就业指导工作<span>2</span>年，<span>2015</span>年参加“广东高校第<span>79</span>期思想政治教育骨干培训班”培训。思政专项项目《社会主义核心价值观融入大学生核心素养培育体系研究》获嘉应学院立项，指导学生参加大学生创新创业项目获得省级立项。曾获“嘉应学院优秀社团指导老师”称号。<span></span>\r\n</div>\r\n','曹馨蕾'),(30,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1493943889,0,0,'<p style=\"text-align:justify;\">\r\n\t许英俊，<span>1984</span>年生，教育经济与管理专业硕士，助教。现任嘉应学院文学院辅导员。从事学生就业指导工作<span>6</span>年，<span>2011</span>年参加“广东省高校思想政治教育骨干暨新上岗辅导员培训班”、“高等学校教师岗前培训”；<span>2017</span>年“嘉应学院创新创业教育教学师资”培训。曾获“嘉应学院党风廉政建设工作先进个人”、“嘉应学院优秀共产党员”等称号。\r\n</p>','美女'),(31,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1493946957,0,0,'<span style=\"color:#999999;font-family:宋体, Arial, sans-serif;line-height:22px;\">\r\n<p class=\"MsoNormal\">\r\n\t许英俊，<span>1986</span>年生，体育教育训练学专业硕士，讲师。现任嘉应学院电子信息工程学院辅导员。从事学生就业指导工作<span>4</span>年，<span>2016</span>年<span>11</span>月参加了广东省团干主题培训班，<span>2016</span>年<span>5</span>月参加了嘉应学院创新创业教育师资培训。发表论文<span>6</span>篇：《创新创业背景下大学生创业类课程体系的探究》、《大学生创业教育课程体系现状与对策探析<span>-</span>以广东嘉应学院为例》、《专业化视野下广东省高校辅导员工作方法体系构建》、《新时期高校辅导员工作方法浅析》、《 手机媒体对高校辅导员工作的影响及其对策研究\r\n》、《新媒体视域下民办高校党建工作新模式研究》。曾获“嘉应学院<span>2015-2016</span>年度党风廉政建设工作先进个人”、“嘉应学院<span>2015-2016</span>学年度考核优秀”等称号。\r\n</p>\r\n</span>',NULL),(32,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1493947132,0,0,'<span style=\"color:#999999;font-family:宋体, Arial, sans-serif;line-height:22px;\">\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:27.45pt;background:white;\">\r\n\t许英俊， <span>1982</span>年生，硕士，德育讲师，现任学生处宿管科科长，<span>2007</span>年起至今一直担任大学生就业指导相关课程。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:27.45pt;background:white;\">\r\n\t2007年<span>9</span>月至今担任《大学生职业生涯规划与就业指导》、《大学职业素养提升与拓展》、《形势与政策》等课程的教学工作，累计达<span>600</span>多学时，曾多次获嘉应学院课堂教学质量优秀奖，取得较好的教学效果，受到师生的一致好评。<span>2006</span>年至今在各级学报、刊物上发表关于工作理论和实践的论文<span>10</span>篇，参编就业指导教材《大学生职业教育与就业指引》、《求职攻略》、《大学生职业发展与就业指导实务》三部。主持省级课题<span>2</span>项，校级课题<span>1</span>项。指导大学生创新创业国家级课题<span>1</span>项，省级课题<span>2</span>项。<span></span>\r\n</p>\r\n</span>',NULL),(33,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241269,0,0,'<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:28pt;\">\r\n\t许英俊，<span>1989</span>年生，应用心理专业硕士，助教。现任嘉应学院文学院辅导员。从事学生就业指导工作<span>2</span>年，<span>2015</span>年参加广东省高校思想政治教育骨干暨<span>2015</span>年新上岗辅导员培训；<span>2016</span>年参加高等学校教师岗前培训；<span>2017</span>年参加嘉应学院创新创业教育教学师资培训。<span></span>\r\n</p>',NULL),(34,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241302,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，<span>1979</span>年生，文艺学专业硕士，讲师。现任体育学院辅导员。从事学生就业指导工作<span>11</span>年，发表论文多篇。曾获“广东省学生工作先进个人”、“嘉应学院优秀共产党员”等称号。<span></span>\r\n</p>',NULL),(35,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241335,0,0,'<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n\t许英俊，<span>1988</span>年生，教育领导科学专业硕士，助教。现任嘉应学院地理科学与旅游学院辅导员。从事学生就业指导工作<span>3</span>年。发表论文《“学长制”在新生教育中的实践与探索》、《高校“学长制”教育管理模式初探》。曾获“嘉应学院优秀社团指导老师<span>”</span>、<span>“</span>嘉应学院党风廉政先进个人<span>”</span>称号、广东省第三届辅导员职业能力大赛三等奖。 <span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n\t<span>&nbsp;</span>\r\n</p>',NULL),(36,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241373,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，<span>1985</span>年生，微生物学专业硕士，讲师。现任美术学院辅导员。从事学生就业指导工作<span>6</span>年，发表论文《新形势下高校二级学院学生党建工作机制创新研究》、《新形势下创新地方高校辅导员师德建设的思考》、《\r\n孵化创业型高级人才的地方高校大学生创业生态圈建设\r\n》、《新形势下增强大学生求职安全教育的思考》。曾获“嘉应学院优秀共产党员”“嘉应学院廉政建设工作先进个人”等称号，所授就业指导课程多次被学校评为课堂教学质量优秀课程。<span></span>\r\n</p>',NULL),(37,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241416,0,0,'<p class=\"MsoNormal\" style=\"text-indent:28.0pt;\">\r\n\t许英俊，<span>1985</span>年生，思想政治教育专业硕士，讲师。现任嘉应学院土木工程学院辅导员。从事学生就业指导工作<span>5</span>年，<span>2011</span>年参加“广东省思想政治教育骨干暨新上岗辅导员”培训；<span>2012</span>年参加“广东省高等学校教师岗前培训”；<span>2013</span>年参加“<span>LZD</span>就业指导模式师资培训”；<span>2014</span>年参加“首期广东高校二级院（系）团委（总支）书记培训”。目前主持省级课题<span>2</span>项：《广东地方高校学生协同创新能力培养平台建设研究》、《高校学生党员培养教育管理机制研究－基于“中国梦”的社会主义核心价值观融入大学生党员教育路径研究》；主持校级课题<span>2</span>项：《新媒体视域下的大学生协同创新能力培养》、《地方性高校大学生协同创新能力培养平台建设研究》。发表论文<span>8</span>篇：《社会主义核心价值观融入大学生党员教育路径研究——“中国梦”视域下的创新探索》、《运用“移情”提高辅导员思想政治教育工作有效性》、《高校培养大学生协同创新能力途径探析》、《协同教育模式在大学生就业指导课中的运用》及《利用新媒体搭建高校培养大学生协同创新能力平台》等。曾获“<span>2016</span>年广东省大中专学生志愿者暑期文化科技卫生“三下乡”社会实践活动先进个人”、“梅州市优秀团干部”、“嘉应学院教学质量优秀奖”、“嘉应学院年度考核优秀”、“嘉应学院党风廉政建设先进个人”等荣誉。<span></span>\r\n</p>',NULL),(38,0,'许英俊','副教授',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241451,0,0,'<p class=\"MsoNormal\" style=\"text-indent:28.0pt;\">\r\n\t许英俊，1982年生，教育学硕士，副教授。现任嘉应学院江南校区辅导员。从事学生就业指导工作7年，系统讲授《大学生职业生涯规划与就业指导》等课程，教学效果良好，开展与本学科相关的研究。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:28.0pt;\">\r\n\t主要成果如下：\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:28.0pt;\">\r\n\t1.教材（副主编）：大学生职业教育与就业指引[M].杭州:浙江大学出版社,2011；\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:28.0pt;\">\r\n\t2.教材（编委）：大学生职业发展与就业指导实务[M].北京:北京师范大学出版社,2016.\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:28.0pt;\">\r\n\t3.论文\r\n</p>\r\n<p class=\"MsoNormal\">\r\n\t大学生就业核心竞争力：构成要素与培育路径[J].嘉应学院学报,2012(9);\r\n</p>\r\n<p class=\"MsoNormal\">\r\n\t伯顿·克拉克“创业型大学”思想述评[J].嘉应学院学报,2010(9);\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0cm;text-indent:28.0pt;\">\r\n\t4.完成课题\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n\t2015年嘉应学院“高等教育改革课题”：地方性特色大学创建视域下大学生就业竞争力培育和提升的路径研究（课题编号：JYJG20150117）。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n\t&nbsp;&nbsp;\r\n2010 年梅州市社会科学界联合会、嘉应学院联合人文社科科研项目：（课题编号：知识管理：地方本科院校大学生就业竞争力提升路径探究（课题编号:2010SKA03）\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:28.0pt;\">\r\n\t5.获奖情况：2010—2011学年度，2011－2012学年度分别获课堂教学质量优秀奖。\r\n</p>',NULL),(39,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241488,0,0,'许英俊，男，广东梅县人，1987年生，广东外语外贸大学思想政治教育专业毕业，研究生学历，硕士学位。现任计算机学院辅导员。从事学生就业指导工作4年，2012年参加“广东省普通高校第四十九期思想政治教育骨干暨2012年新上岗辅导员培训”培训；2013年参加嘉应学院LZD就业指导模式师资培训班开班仪式暨就业指导课程培训。曾获2015——2016学年度课堂教学质量优秀奖。',NULL),(40,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241557,0,0,'许英俊，1988年生，学科教学（语文）专业硕士，讲师。现任嘉应学院数学学院辅导员。从事学生就业指导工作4年。发表论文《加强就业指导课课程训练,提升学生学习的积极性——以嘉应学院为例》、《深入了解学生内在需求,提升就业指导课课程质量》、《就业力提升视域下高校毕业生求职简历的制作探讨》等8篇。',NULL),(41,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241589,0,0,'<p class=\"MsoNormal\">\r\n\t&nbsp; &nbsp;&nbsp;许英俊，1981年生，教育学专业硕士，德育讲师。现任经济与管理学院辅导员。从事学生就业指导工作8年。曾荣获“广东省挂职团干部标兵”、“嘉应学院就业工作先进个人”、“年度考核优秀”、“嘉应学院优秀辅导员”、“优秀共产党员”等称号。\r\n</p>',NULL),(42,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241614,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，1989年生，电子科学与技术专业硕士，助教。现任嘉应学院政法学院辅导员。从事学生就业指导工作1年，2015年参加“广东高校第79期思想政治教育骨干暨新上岗辅导员培训班”培训；2016年参加“广东省高等学校教师岗前培训”。\r\n</p>',NULL),(43,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241643,0,0,'<p class=\"MsoNormal\" align=\"left\">\r\n\t&nbsp; &nbsp;&nbsp;许英俊，1987年生，中国古典文献学硕士，助教。现任嘉应学院文学院辅导员，从事学生就业指导工作3年。2014年参加“广东省高校思想政治教育骨干暨新上岗辅导员”培训；2014年参加“广东省高等学校教师岗前”培训；2017年参加嘉应学院“创新创业教育教学师资”培训。曾获2015-2016年度嘉应学院“党风廉政建设工作先进个人”称号。\r\n</p>',NULL),(44,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241679,0,0,'<p class=\"MsoNormal\" align=\"left\">\r\n\t许英俊，<span>1981</span>年生，科学技术史专业硕士。现任党委办公室校长办公室综合科科长。从事学生就业指导工作<span>7</span>年，<span>2009</span>年参加<span>“</span>广东省辅导员发展辅导资格认证<span>”</span>培训；主持嘉应学院思政课题<span>1</span>项，参与<span>3</span>项课题研究。曾获“嘉应学院教学质量优秀奖<span>2</span>次”、“嘉应学院就业工作先进个人”、 “优秀班主任<span>3</span>次”、“第二届广东省高校辅导员职业技能竞赛优胜奖”、“嘉应学院辅导员职业能力大赛二等奖”、“嘉应学院年度考核优秀奖”、“嘉应学院优秀共产党员<span>”</span>、“嘉应学院邓振龙基金优秀教育工作者”等称号。<span></span>\r\n</p>',NULL),(45,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241718,0,0,'<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n\t许英俊，1990年生，日语语言文学硕士，助教。现任嘉应学院外国语学院辅导员。从事学生就业指导工作1年，2016年8月参加“广东省辅导员发展辅导资格认证”培训；2016年7月参加全省高等学校教师资格证培训；2016年11月参加嘉应学院辅导员职业能力培训。2017年4月参加创新创业教育师资培训。\r\n</p>',NULL),(46,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241743,0,0,'<p class=\"MsoNormal\">\r\n\t&nbsp; &nbsp;&nbsp;许英俊，<span>1990</span>年生，汉语国际教育硕士，助教。现任嘉应学院体育学院辅导员。从事学生就业指导工作<span>3</span>年，发表论文《体验式教学在大学生职业发展课程中的应用》、《辅导员工作定位及其工作创新研究》。曾获“嘉应学院党风廉政先进个人”称号。<span></span>\r\n</p>',NULL),(47,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241775,0,0,'<p class=\"MsoNormal\" style=\"text-indent:28.0pt;\">\r\n\t许英俊，1986年生，声乐专业硕士，讲师。现任嘉应学院生命科学学院辅导员，从事学生就业指导工作5年，2012年参加广东省普通高校第49期思想政治教育骨干培训；2013年参加高等学校教师岗前培训；2016年参加广东高校辅导员科研能力提升专题培训。在五邑大学学报、嘉应学院学报等发表论文共5篇，主持嘉应学院思政重点科研项目1项，参与省级党建课题1项，参与思政一般科研项目1项，，主持省级创新创业项目立项2项，主持梅州市委统战项目3项，指导学生获得省级奖项3项。曾获“考研优秀班主任”称号。\r\n</p>',NULL),(48,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241806,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，<span>1987</span>年生，中外政治制度专业硕士，讲师，现任嘉应学院外国语学院辅导员。从事学生就业指导工作<span>4</span>年。发表论文《地方高校<大学生就业指导课>MOOC应用与实践》、《基于<span>MOOC</span>模式的高校党员教育培训的创新探索》、《地方高校二级学院教学质量监控的研究》、《研读党的经典著作，提升党性修养》，主持嘉应学院第十二批教学改革重点项目《高校就业指导课实践教学体系探索创新》（已结题）和广东省高校党建研究会一般项目《高校党员教育培训工作研究——知识转型视角下<span>MOOC</span>模式党校教育创新实践》（已结题），曾获<span>2014-2015</span>学年度课堂教学质量评比奖、<span>2014-2015</span>学年年度考核优秀、嘉应学院首届辅导员职业能力竞赛二等奖、<span>2014</span>年思想政治工作学术研讨会征文三等奖。<span></span>\r\n</p>',NULL),(49,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241832,0,0,'<p class=\"MsoNormal\">\r\n\t<b>许英俊，<span>1984</span>年生，应用心理学硕士，讲师，现于嘉应学院创新创业教育与就业指导教研室从事学生就业指导教育工作，先后承担《大学生心理健康教育》《学校心理辅导》《大学生职业发展与就业指导》等课程教学工作，主持广东高校共青团工作研究课题、嘉应学院第十一批高等教育教学改革项目等课题，发表专业论文<span>7</span>篇，曾获“嘉应学院优秀共产党员”、“嘉应学院党风廉政建设工作先进个人”、“心理健康教育与咨询工作实务研讨会一等奖”等奖项。<span></span></b>\r\n</p>',NULL),(50,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241880,0,0,'<p class=\"MsoNormal\" style=\"text-indent:21.75pt;\">\r\n\t许英俊，<span>1989</span>年生，外国语言学及应用语言学硕士研究生，助教。现任嘉应学院音乐与舞蹈学院辅导员。<span>2015</span>年参加广东省高校辅导员培训；<span>2016</span>年参加广东省高校教师岗前培训。发表论文《“中国梦”视域下高校统战工作机制创新研究》。<span></span>\r\n</p>',NULL),(51,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241919,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，1983年生，哲学硕士，讲师。现任嘉应学院音乐学院辅导员。从事大学生就业指导工作5年，2012年参加“广东省第49期辅导员岗前培训；2014年参加韩山师范学院高校教师资格培训。2016年参加嘉应学院辅导员职业培训。发表论文《高校资助体育的育人功能》、《高校学生党建工作的实效性探索》、《 就业指导课程的实效性研究》、《高校网络思想政治教育实施方法研究—以嘉应学院为例》、《高校团学干部的培养方式研究》。曾获“广东省高校学生工作优秀团队”、“共青团广东省优秀挂职干部”“广东省优秀驻村干部”等称号。\r\n</p>',NULL),(52,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241945,0,0,'<p class=\"MsoNormal\" style=\"margin-left:56.6pt;text-indent:-35.6pt;\">\r\n\t许英俊，<span>1987</span>年生，音乐与舞蹈学硕士，助教。现任嘉应学院音乐与舞蹈学院辅导员。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n\t从事学生就业指导工作<span>1</span>年，<span>2016</span>年参加“广东省辅导员发展辅导资格认证”培训；<span>2016</span>年参加全省高等学校教师资格证培训；嘉应学院辅导员能力培训。<span>2017</span>年参加创新创业教育培训。承担项目《大数据时代新媒体对高校统战工作创新的多维研究》；发表论文《浅析城乡中学音乐教育实施新课标中的对比与存在问题》、《音乐课堂教学语言的艺术化》、《浅析音乐类非物质文化在校园环境中传承与保护的必要性》、《文化视野下高师声乐教学中民族素养培养的必要性》等。<span></span>\r\n</p>',NULL),(53,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494241978,0,0,'<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n\t许英俊，<span>1985</span>年生，体育教训训练学硕士，助教。现任嘉应学院经济与管理学院辅导员。从事学生就业指导<span>5</span>年，主持嘉应学院思政专项《大学生创新创业教育模式》（在研），主持嘉应学院教改项目《客家文化驱动下的大学生创新创业教育研究》（在研）。指导大学生创业训练项目<span>4</span>项，其中获省级立项<span>2</span>项。发表创新创业教育相关论文<span>3</span>篇。<span></span>\r\n</p>',NULL),(54,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242005,0,0,'<p class=\"MsoNormal\" style=\"text-indent:32.0pt;\">\r\n\t许英俊，1982年生，思想政治教育专业学士，德育讲师。现任嘉应学院经济与管理学院辅导员。从事学生就业指导工作12年。在省级刊物公开发表论文《高校学生国家助学贷款违约原因分析及对策建议——以嘉应学院国家助学贷款工作为例》、《高校学生党员责任区党的群众路线践行研究》等五篇。曾获广东省学生资助工作先进个人、嘉应学院就业工作先进个人、学校优秀辅导员、课堂教学质量优秀、年度考核优秀等称号。\r\n</p>',NULL),(55,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242070,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，<span>1985</span>年生，植物保护专业硕士，思政讲师。现任嘉应学院生命科学学院辅导员。从事学生就业指导工作近<span>6</span>年，<span>2011</span>年参加“广东省辅导员发展辅导资格认证”培训。主持1项省级党建立项、2项校级科研立项和2项市统战课题，参与1项省级党建立项。发表论文《基于第二课堂的大学生创新创业能力研究》、《新常态下大学生创新创业的资源支持研究》、《地方性院校大学生创新创业教育探索》、《中国梦”与高校党员理想信念教育研究》、《刍议高校辅导员的师德建设》、《以思想政治为引领，扎实走好党的群众路线》等。曾获“2015—2016、2014-2015学年度课堂教学质量优秀奖”、“2013-2015年度嘉应学院优秀共产党员”、“广东省高校党建研究会本科分会2016年年会论文三等奖”等荣誉。\r\n</p>',NULL),(56,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242112,0,0,'<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:35pt;\">\r\n\t许英俊，<span>1987</span>年生，应用数学专业硕士，助教。现任嘉应学院文学院辅导员。从事学生就业指导工作<span>4</span>年，<span>2013</span>年<span>8</span>月参加“广东省高校思想政治教育骨干暨新上岗辅导员培训班”、<span>2015</span>年<span>7</span>月参加“高等学校教师岗前培训”；<span>2017</span>年<span>4</span>月参加“嘉应学院创新创业教育教学师资”培训。<span></span>\r\n</p>',NULL),(57,0,'许英俊','助教',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242145,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，1989年生，化学工程专业硕士，助教。现任嘉应学院土木工程学院辅导员。从事学生就业指导工作3年，2014年参加“广东省思想政治教育骨干暨新上岗辅导员”培训；2015年参加“广东省高等学校教师岗前培训”。发表论文《家庭经济困难新生认定中存在的问题与对策》、《以广东梅州为例探讨社工组织介入农村留守儿童问题的可行性》、《由某高校学生宿舍内盗案例引发的思考》、《发挥学生党员在高校“精准资助”中的先锋作用》。曾获“广东省高校学生资助工作优秀个人”、“嘉应学院2015-2016学年课堂教学质量优秀奖”、“嘉应学院土木工程学院2016年优秀共产党员”等称号。\r\n</p>',NULL),(58,0,'许英俊','讲师',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242177,0,0,'<p class=\"MsoNormal\" align=\"left\">\r\n\t许英俊， 1984年生，软件工程硕士，德育讲师，2006年7月至 2015年1月期间担任辅导员，现任学生处思教科科长，累积有11年的学生工作经验。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n\t2007年9月至今：担任《大学生职业生涯规划与就业指导》、《职业启蒙教育》等课程的教学工作，累计达480多学时，曾4次获《嘉应学院课堂教学质量优秀奖》，取得较好的教学效果，受到师生的一致好评。2006年至今在各级学报、刊物上发表关于工作理论和实践的论文8篇，参编就业指导教材2部。主持校级课题1项，参与教育部和省级课题3项等。曾获两次学校年度考核优秀、两次学校优秀班主任称号、学校“陈惠娜奖教金优秀辅导员”二等奖、学校优秀共产党员、广东省辅导员职业技能大赛三等奖、广东省辅导员年度人物入围奖、方直卓越教育工作者等各项荣誉共计20多项。\r\n</p>',NULL),(59,0,'许英俊','讲师/教授',NULL,'/upload/2017/06/10/593bd7cc9b453.jpg','','','',0,1,NULL,'admin',1494242205,0,0,'<p class=\"MsoNormal\">\r\n\t许英俊，1988年生，理学硕士，讲师。现任嘉应学院生命科学学院辅导员。从事学生就业指导工作5年，2012年广东省普通高校第53期思想政治教育骨干培训；2013年高等学校教师岗前培训。在开封教育学院学报、湖北函授大学学报等省级刊物上发表论文5篇。主持校级思政重点项目1项、校级教改课题1项，参与省党建课题、市人文社科课题、校统战课题6项，获校级奖项6项，指导学生科研项目6项，指导学生获省市校级奖项9项。\r\n</p>',NULL);

#
# Structure for table "cms_theme"
#

CREATE TABLE `cms_theme` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_theme"
#

INSERT INTO `cms_theme` VALUES (28,0,'如何写出好简历','手把手教你撰写出色简历','','/upload/2017/05/04/590ab22d6b7ad.png','','','',0,1,NULL,'admin',1493871385,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','刘霞'),(29,0,'如何修好简历','手把手教你写出出色简历',NULL,'/upload/2017/05/04/590ab57899662.png','','','',1,1,NULL,'admin',1493874073,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','曹馨蕾'),(30,0,'教你写好好文章哦','教你写好好文章哦',NULL,'/upload/2017/05/05/590bc637407dc.png','','','',0,1,NULL,'admin',1493943889,0,0,'<p style=\"text-align:justify;\">\r\n\t《隧道工程》是土木工程、交通工程学科的主要技术基础课，本、专科学生每年听课人数达1000多人。本课程自建校之初开课至今已有50多年的历史，伴随新中国隧道及地下工程的大量兴建、国内外隧道工程技术的不断提高，本课程也不断更新发展，为培养一批能适应现场需要、能解决实际工程问题的隧道工程师、技术人才做出了重要贡献。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t隧道是一种埋置于地层中的工程建筑物，隧道周围的地层(围岩)既对隧道结构产生作用，又是隧道承受荷载的体系之一。隧道结构与围岩的相互作用，决定了隧道工程受围岩条件影响显著，由于地层情况千变万化，地层特性错综复杂，这种相互影响关系还没有被充分认识，现有的理论体系也还不能完善的解释工程实际问题，因而目前隧道设计常常需要理论分析与工程类比相结合，而目前大量出现的隧道新结构、新方法、新技术又需要从理论上加以认识、总结和提高，故本课程需要理论与实践高度结合，课程内容也需要不断更新和发展，它也是工程地质学、结构设计理论与岩土力学及各种工程新技术的综合体。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t本课程从隧道的概念、种类出发，介绍了交通类隧道设计原则和构造；阐述了围岩工程特性、围岩压力及围岩分级；讲解了隧道支护、衬砌结构设计原理和不同工程条件下的设计方法；不仅介绍传统矿山法和现代新奥法的施工方法及工艺，还结合目前隧道工程建设的发展，介绍不良地质和特殊地段隧道施工、隧道掘进机新技术；也介绍了隧道施工必备的风、水、电等辅助施工作业以及隧道运营通风方法与设计。\r\n</p>\r\n<p style=\"text-align:justify;\">\r\n\t    本课程理论与实践并重，经典理论、方法与现代新技术、新方法相结合，引导学生活学活用理论知识，注重解决实际工程技术问题能力的培养。课程内容丰富、信息量大、知识结构系统。为适应教学需要，本课程的任课教师都经过博士、硕士阶段的教育培养，具有深厚的理论基础和较强的教学和科研能力，工作中特别强调参与国内重点隧道工程的科研攻关，将科研成果和探索体会融入教学中，从而提高教学质量，因而本方向毕业生解决实际工程技术问题的能力比较强，在现场颇受好评。\r\n</p>\r\n','美女');

#
# Structure for table "cms_video"
#

CREATE TABLE `cms_video` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "cms_video"
#

INSERT INTO `cms_video` VALUES (29,0,'iOS开发-全面解析iOS蓝牙BLE4.0开发','手把手教你写出出色简历',NULL,'/upload/2017/05/05/590c6f7cb5267.mp4','','','',1,1,NULL,'admin',1493874073,0,0,'<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t求职简历要以简明、个性突出为重点，内容不能过长，过长的简历会让面试官觉得你过于罗嗦，没有重点，所以你的求职简历所包含的的信息只须要符合雇主的需要，并且能突出你适合此职位的原因。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t求职英语的第一重点在于，全面了解招聘公司需要的信息是十分关键的，你的某些背景可能比其他东西更对公司的胃口。你可以针对特定的职位要求修改自己的简历，尽量让自己提供的信息与公司的需要相符合。对所应聘的公司做一番调查，仔细阅读招聘广告，然后加强简历内容与职位要求的相关性。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t求职英语的第二个重点在于，举出一些你所获成就的相关实例，让你看起来是完全满足他们招聘要求的那个人。展示你个人技能的可传授性，告诉招聘者如何将你的个人才智发挥到工作中去。重点介绍你的各种技能，每个技能后加上简要介绍。招聘者可直接浏览此目录，而面试时你也可以更深入地谈谈这些技能。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t求职英语的第三个重点在于，哪些东西是可以舍弃的，哪些东西不需要出现在简历中也是非常重要的一个问题。先确定哪些是相关信息，然后去掉剩下的那些。比如，与应聘职位不相关的兼职经历;信仰，除非你应聘关宗教职位;讨厌前任老板或同事的原因等等。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:SimSun;\">\r\n\t总之， 求职简历就是求职者的一份自荐信 ，能否吸引HR挑剔眼光，就要看求职者的那份洋洋洒洒的求职信 是否够一见倾心了。求职英语考的不只是你的写作能力，更是你的情商。\r\n</p>','曹馨蕾'),(31,0,'iOS开发-全面解析iOS蓝牙BLE4.0开发','',NULL,'/upload/2017/05/05/590c6f7cb5267.mp4','','','',0,1,NULL,'admin',1493985201,0,0,NULL,NULL);
