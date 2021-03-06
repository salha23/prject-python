create database BKUni;
use BKUni;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `user_book_id_idx` (`user_id`),
  CONSTRAINT `user_book_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
  CREATE TABLE `book borrow record` (
  `borrow_id` int NOT NULL AUTO_INCREMENT,
  `b_id` int NOT NULL,
  `date_borrow` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `id_user` int NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`borrow_id`),
  KEY `user_borrow_id_idx` (`id_user`),
  KEY `book_id_idx` (`b_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`b_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `user_borrow_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `major` varchar(45) DEFAULT NULL,
  `level` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;