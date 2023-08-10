一、公司招聘信息表
CREATE TABLE `recruit` (
  `c_id` int unsigned NOT NULL,
  `company_type` varchar(50) NOT NULL DEFAULT '无',
  `company` varchar(100) NOT NULL DEFAULT '无',
  `position` varchar(50) NOT NULL DEFAULT '无',
  `position_require` varchar(100) NOT NULL DEFAULT '无',
  `job_duty` varchar(100) NOT NULL DEFAULT '无',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `job_place` varchar(100) NOT NULL DEFAULT '无'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
1.增加一条信息
INSERT INTO `recruit` (`c_id`, `company_type`, `company`, `position`, `position_require`, `job_duty`, `money`, `job_place`) VALUES
('1', 'IT', 'ABC公司', 'Java开发工程师', '本科及以上学历，精通Java编程，熟悉Spring、MyBatis等框架', '负责公司项目的开发和维护工作', '15K-20K', '北京市海淀区'),
('2', '金融', 'XYZ银行', '信用卡销售代表', '大专及以上学历，有销售经验者优先考虑', '负责银行信用卡的销售和推广工作', '底薪+提成', '上海市浦东新区'),
('3', '教育', 'EFG培训机构', '英语教师', '本科及以上学历，英语专业优先，有教学经验者优先考虑', '负责英语课程的教学和管理工作', '10K-15K', '广州市天河区');

2.更新一条招聘信息
UPDATE `recruit` SET `position_require`='本科及以上学历，有3年以上的工作经验' WHERE `c_id`=1;

3.删除一条招聘信息
DELETE FROM `recruit` WHERE `c_id`=1;
4.查询所有招聘信息
SELECT * FROM `recruit`;
5.按公司名称查询招聘信息
SELECT * FROM `recruit` WHERE `company`='ABC公司';
6.按职位名称和薪资范围查询招聘信息
SELECT * FROM `recruit` WHERE `position`='销售代表' AND `money`>=4000.00 AND `money`<=6000.00;


二、公司信息表
CREATE TABLE `com_infor` (
  `c_id` int unsigned NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_type` varchar(50) DEFAULT '无',
  `work_addr` varchar(100) DEFAULT '无',
  `c_tele` varchar(20) DEFAULT '无',
  `c_email` varchar(50) DEFAULT '无',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
以下是增删改查的 SQL 语句：

1. 添加一家公司信息
INSERT INTO `com_infor` (`c_id`, `c_name`, `c_type`, `work_addr`, `c_tele`, `c_email`) 
VALUES (1, 'ABC公司', '私营企业', '北京市朝阳区', '010-12345678', 'abc@example.com');
2. 更新一家公司信息
UPDATE `com_infor` SET `work_addr`='北京市海淀区' WHERE `c_id`=1;
3. 删除一家公司信息
DELETE FROM `com_infor` WHERE `c_id`=1;
4. 查询所有公司信息
SELECT * FROM `com_infor`;
5. 按公司名称查询公司信息
SELECT * FROM `com_infor` WHERE `c_name`='ABC公司';
6. 按公司类型和工作地点查询公司信息
SELECT * FROM `com_infor` WHERE `c_type`='外资企业' AND `work_addr`='北京市朝阳区';



三、求职者回应的招聘表
CREATE TABLE `applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `resume_status` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3

以下是增删改查的 SQL 语句：
1. 添加一份简历投递记录
INSERT INTO `applications` (`name`, `company`, `position`, `resume_status`) 
VALUES ('张三', 'ABC公司', '销售代表', '已投递');
2. 更新一份简历投递记录的状态
UPDATE `applications` SET `resume_status`='已面试' WHERE `id`=1;
3. 删除一份简历投递记录
DELETE FROM `applications` WHERE `id`=1;
4. 查询所有简历投递记录
SELECT * FROM `applications`;
5. 按姓名查询简历投递记录
SELECT * FROM `applications` WHERE `name`='张三';
6. 按公司和职位查询简历投递记录
SELECT * FROM `applications` WHERE `company`='ABC公司' AND `position`='销售代表';


求职者信息表
CREATE TABLE `jobseeker` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `education` varchar(50) NOT NULL,
  `graduate_institutions` varchar(50) NOT NULL,
  `work_experience` varchar(100) DEFAULT NULL,
  `skills` varchar(100) DEFAULT NULL,
  `intention` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3



四、管理员账户密码表
CREATE TABLE `admins` (
  `id` int NOT NULL,
  `type` varchar(10) DEFAULT '管理员',
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
以下是增删改查的 SQL 语句：
1. 添加一个管理员账户
INSERT INTO `admins` (`id`, `type`, `username`, `password`) 
VALUES (1, '管理员', 'admin', 'password123');
2. 更新管理员账户的密码
UPDATE `admins` SET `password`='newpassword123' WHERE `id`=1;
3. 删除一个管理员账户
DELETE FROM `admins` WHERE `id`=1;
4. 查询所有管理员账户
SELECT * FROM `admins`;
5. 按用户名查询管理员账户
SELECT * FROM `admins` WHERE `username`='admin';
6. 按账户类型查询管理员账户
SELECT * FROM `admins` WHERE `type`='管理员';


五、求职者账户密码表
CREATE TABLE `user_job_seekers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT '求职者',
  `job_seeker_name` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3
以下是增删改查的 SQL 语句：
1. 添加一份求职者信息
INSERT INTO `jobseeker` (`name`, `sex`, `email`, `phone`, `address`, `education`, `graduate_institutions`, `work_experience`, `skills`, `intention`, `status`) 
VALUES ('张三', '男', 'zhangsan@example.com', '13812345678', '北京市朝阳区', '本科', '清华大学', '3年工作经验', '熟练掌握Java编程', '软件开发工程师', 0);
2. 更新一份求职者信息
UPDATE `jobseeker` SET `work_experience`='5年工作经验' WHERE `id`=1;
3. 删除一份求职者信息
DELETE FROM `jobseeker` WHERE `id`=1;
4. 查询所有求职者信息
SELECT * FROM `jobseeker`;
5. 按姓名查询求职者信息
SELECT * FROM `jobseeker` WHERE `name`='张三';
6. 按学历和求职意向查询求职者信息
SELECT * FROM `jobseeker` WHERE `education`='本科' AND `intention`='软件测试工程师';

六、公司HR用户账户密码表
CREATE TABLE `user_hrs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT '公司HR',
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3

以下是增删改查的 SQL 语句：

1. 添加一个公司 HR 账户
INSERT INTO `user_hrs` (`type`, `username`, `password`, `company_name`, `status`) 
VALUES ('公司HR', 'hr@abc.com', 'password123', 'ABC公司', 1);
2. 更新公司 HR 账户的密码
UPDATE `user_hrs` SET `password`='newpassword123' WHERE `id`=1;
3. 删除一个公司 HR 账户
DELETE FROM `user_hrs` WHERE `id`=1;
4. 查询所有公司 HR 账户
SELECT * FROM `user_hrs`;
5. 按用户名查询公司 HR 账户
SELECT * FROM `user_hrs` WHERE `username`='hr@abc.com';
6. 按状态和公司名查询公司 HR 账户
SELECT * FROM `user_hrs` WHERE `status`=1 AND `company_name`='ABC公司';





