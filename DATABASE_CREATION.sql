DROP DATABASE IF EXISTS `walk_in_system`;
CREATE DATABASE `walk_in_system`; 
USE `walk_in_system`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

-- USERS TABLE
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `resume_path` varchar(255) NOT NULL,
  `profile_picture_path` varchar(255) NOT NULL,
  `portfolio_url` varchar(255) DEFAULT NULL,
  `send_via_email` boolean NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- USER REFERENCE TABLE
CREATE TABLE `user_references` (
  `user_reference_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `refered_by_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_reference_id`),
  KEY `FK_user_id_1` (`user_id`),
  CONSTRAINT `FK_user_id_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- JOB ROLES TABLE
CREATE TABLE `job_roles` (
  `job_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`job_role_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- USER PREFERENCES ID
CREATE TABLE `user_preferences` (
  `user_preferences_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job_role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_preferences_id`),
  KEY `FK_user_id_2` (`user_id`),
  KEY `FK_job_role_id_1` (`job_role_id`),
  CONSTRAINT `FK_user_id_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_job_role_id_1` FOREIGN KEY (`job_role_id`) REFERENCES `job_roles` (`job_role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- USER EDUCATIONAL QUALIFICATION
CREATE TABLE `user_educational_qualification` (
  `user_educational_qualification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `aggregate_percentage` decimal(2,2) NOT NULL,
  `year_of_passing` date NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `stream` varchar(255) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `college_location` varchar(255) NOT NULL,
  PRIMARY KEY (`user_educational_qualification_id`),
  KEY `FK_user_id_3` (`user_id`),
  CONSTRAINT `FK_user_id_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- USER PROFESIONAL QUALIFICATION
CREATE TABLE `user_profesional_qualification` (
  `user_profesional_qualification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `applicant_type` boolean NOT NULL,
  `year_of_experiance` int(2) DEFAULT '0',
  `current_ctc` decimal(9,2) DEFAULT '0.0',
  `expected_ctc` decimal(9,2) DEFAULT '0.0',
  `in_notice_period` boolean DEFAULT false,
  `notice_period_end_date` date DEFAULT NULL,
  `notice_period_in_month` int(2) DEFAULT NULL,
  `any_test_by_zues` boolean DEFAULT false,
  `applied_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_profesional_qualification_id`),
  KEY `FK_user_id_4` (`user_id`),
  CONSTRAINT `FK_user_id_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- USER TECHNOLOGIES EXPERTISE TABLE
CREATE TABLE `user_technology_expertise` (
  `user_technology_expertise_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `technology_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_technology_expertise_id`),
  KEY `FK_user_id_5` (`user_id`),
  CONSTRAINT `FK_user_id_5` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- USER TECHNOLOGIES EXPERTISE TABLE
CREATE TABLE `user_technology_familier` (
  `user_technology_familier_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `technology_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_technology_familier_id`) ,
  KEY `FK_user_id_6` (`user_id`),
  CONSTRAINT `FK_user_id_6` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK INS TABLE
CREATE TABLE `walk_ins` (
  `walk_in_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  PRIMARY KEY (`walk_in_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN GENERAL INSTRUCTOINS
CREATE TABLE `walk_in_general_insrtuctions` (
  `walk_in_general_insrtuction_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`walk_in_general_insrtuction_id`) ,
  KEY `FK_walk_in_id_1` (`walk_in_id`),
  CONSTRAINT `FK_walk_in_id_1` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- WALK IN SYSTEM INSTRUCTOINS
CREATE TABLE `walk_in_system_insrtuctions` (
  `walk_in_system_insrtuction_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`walk_in_system_insrtuction_id`) ,
  KEY `FK_walk_in_id_2` (`walk_in_id`),
  CONSTRAINT `FK_walk_in_id_2` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN MINIMUM SYSTEM REQUIREMENT
CREATE TABLE `walk_in_minimum_system_requirements` (
  `walk_in_minimum_system_requirements_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`walk_in_minimum_system_requirements_id`) ,
  KEY `FK_walk_in_id_3` (`walk_in_id`),
  CONSTRAINT `FK_walk_in_id_3` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN SYSTEM PROCESS
CREATE TABLE `walk_in_system_processes` (
  `walk_in_system_process_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`walk_in_system_process_id`), 
  KEY `FK_walk_in_id_4` (`walk_in_id`),
  CONSTRAINT `FK_walk_in_id_4` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN SYSTEM PROCESS
CREATE TABLE `walk_in_time_slots` (
  `walk_in_time_slot_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `from_time` DATETIME NOT NULL,
  `to_time` DATETIME NOT NULL,
  PRIMARY KEY (`walk_in_time_slot_id`) ,
  KEY `FK_walk_in_id_5` (`walk_in_id`),
  CONSTRAINT `FK_walk_in_id_5` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN JOB ROLES
CREATE TABLE `walk_in_job_roles` (
  `walk_in_job_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `walk_in_id` int(11) NOT NULL,
  `job_role_id` int(11) NOT NULL,
  `package` decimal(9,2) NOT NULL,
  `role_description` varchar(255) NOT NULL,
  `role_requirement` varchar(255) NOT NULL,
  PRIMARY KEY (`walk_in_job_role_id`) ,
  KEY `FK_walk_in_id_6` (`walk_in_id`),
  KEY `FK_job_role_id_2` (`job_role_id`),
  CONSTRAINT `FK_walk_in_id_6` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_job_role_id_2` FOREIGN KEY (`job_role_id`) REFERENCES `job_roles` (`job_role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN USER REGISTRATIONS
CREATE TABLE `walk_in_user_regitrasions` (
  `walk_in_user_registration_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `walk_in_id` int(11) NOT NULL,
  PRIMARY KEY (`walk_in_user_registration_id`),
  KEY `fk_user_id_7` (`user_id`),  
  KEY `FK_walk_in_id_7` (`walk_in_id`),
  CONSTRAINT `fk_user_id_7` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_walk_in_id_7` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- WALK IN USER PREFERENCES
CREATE TABLE `walk_in_user_preferences` (
  `walk_in_user_preference_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `walk_in_id` int(11) NOT NULL,
  `job_role_id` int(11) NOT NULL,
  `walk_in_time_slot_id` int(11) NOT NULL,
  PRIMARY KEY (`walk_in_user_preference_id`),
  KEY `fk_user_id_8` (`user_id`),  
  KEY `FK_walk_in_id_8` (`walk_in_id`),
  KEY `FK_job_role_id_3` (`job_role_id`),
  KEY `FK_walk_in_time_slot_id` (`walk_in_time_slot_id`),
  CONSTRAINT `fk_user_id_8` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_walk_in_id_8` FOREIGN KEY (`walk_in_id`) REFERENCES `walk_ins` (`walk_in_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_job_role_id_3` FOREIGN KEY (`job_role_id`) REFERENCES `job_roles` (`job_role_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_walk_in_time_slot_id` FOREIGN KEY (`walk_in_time_slot_id`) REFERENCES `walk_in_time_slots` (`walk_in_time_slot_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
