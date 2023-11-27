

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  `updation_date` date NOT NULL
);


INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2023-04-04 20:31:45', '2023-04-17');


CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;



INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2023-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2023-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2023-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2023-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2023-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2023-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2023-04-11 19:35:19');



CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL
) ;



INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(6, 100, 5, 8000, 0, '2023-04-22', 5, 'Bachelor  of Technology', 10806121, 'Anuj', '', 'kumar', 'male', 8285703354, 'anuj.lpu1@gmail.com', 0, 'XYZ', 'Mother', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2023-04-16 08:24:09', ''),
(7, 100, 5, 8000, 1, '2023-06-17', 4, 'Bachelor of Engineering', 108061211, 'Test', 'test', 'kumar', 'male', 8467067344, 'test@gmail.com', 123456789, 'test', 'test', 1236547890, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2023-06-23 11:54:35', ''),
(8, 112, 3, 4000, 0, '2023-06-27', 5, 'Bachelor  of Science', 102355, 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2023-06-26 16:31:08', ''),



CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2023-04-11 22:45:43'),
(2, 2, 201, 6000, '2023-04-12 01:30:47'),
(3, 2, 200, 6000, '2023-04-12 01:30:58'),
(4, 3, 112, 4000, '2023-04-12 01:31:07'),
(5, 5, 132, 2000, '2023-04-12 01:31:15');



CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
);


INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');



CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2023-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2023-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2023-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:02:51'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:49:42'),
(9, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 07:17:32'),
(10, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 08:08:59');



CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
);



INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'Test', 'test', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2023-06-22 04:21:33', '10-06-2019 12:48:13', NULL),
(19, '102355', 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', '6786786786', '2023-06-26 16:33:36', '', ''),
(20, '586952', 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', '8596185625', '2023-06-26 16:40:07', '', '');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);


ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;


ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

SELECT course COUNT(*) AS student_count FROM registration GROUP BY course;


SELECT seater, COUNT(*) AS room_count, AVG(feespm) AS avg_fees FROM registration GROUP BY seater;

SELECT * FROM userlog WHERE loginTime > (SELECT loginTime FROM userlog WHERE useremail = 'liya@gmail.com');

DELIMITER //

CREATE TRIGGER after_reg_insert AFTER INSERT ON registration
FOR EACH ROW 
BEGIN 
	INSERT INTO userinfo (ussername, logged_in)
    VALUES (NEW.id, NOW());
END;

//

DELIMITER ;

DELIMITER //

CREATE FUNCTION CalculateTotalFees(IN student_id INT)
RETURNS INT
BEGIN
    DECLARE total_fees INT;

    SELECT SUM(feespm) INTO total_fees FROM registration WHERE id = student_id;

    RETURN total_fees;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GetStudentInfo(IN student_id INT)
BEGIN
    SELECT * FROM registration WHERE id = student_id;
END //

DELIMITER ;


SELECT
    r.firstName,
    r.regno,
    r.contactno,
    reg.roomno,
    reg.seater,
    reg.stayfrom
FROM
    registration reg
JOIN
    userregistration r ON reg.regno = r.regNo;

