-- AsianGames Backup
DROP DATABASE IF EXISTS `AsianGames`;
CREATE DATABASE `AsianGames`;
USE AsianGames;

--
-- Table structure for table `Athletes`
--

DROP TABLE IF EXISTS `Athletes`;
CREATE TABLE `Athletes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idn` varchar(17) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `nationality` varchar(20) NOT NULL,
  `sports` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `Athletes`
--

LOCK TABLES `Athletes` WRITE;
INSERT INTO `Athletes`
(id, idn, name, gender, birthdate, age, height, weight, nationality, sports)
VALUES
(1,'3276012305930001','Haidar','m','1993-05-23',24,180,70,'Indonesia',1),
(2,'3215131306940004','Dono','m','1994-06-13',23,168,55,'Indonesia',2),
(3,'3301211106880003','Albert','m','1988-06-11',29,172,110,'Indonesia',3),
(4,'3172015208870004','Angel','f','1987-08-12',30,167,54,'Indonesia',4),
(5,'3374102105950001','Feri','m','1995-05-21',22,178,75,'Indonesia',5),
(6,'317305300993006','Fikri','m','1993-09-30',24,158,67,'Indonesia',6),
(7,'3519080508950001','Mifta','m','1995-08-05',22,165,56,'Indonesia',7),
(8,'3174040408890008','Fahri','m','1989-08-04',28,170,69,'Indonesia',8),
(9,'3173059049344007','Haekal','m','1993-04-19',24,178,90,'Indonesia',9),
(10,'3273260211950002','Dzaky','m','1995-11-02',22,167,48,'Indonesia',10),
(11,'3272046807830001','Nina','o','1983-07-28',34,150,45,'Indonesia',11),
(12,'3374101902870001','Oliver','o','1987-02-19',60,129,129,'Indonesia',12),
(13,'1234567890987654','Robot','o','2000-12-31',18,211,99,'Mars',1)
;
UNLOCK TABLES;

--
-- Table structure for table `Sports`
--

DROP TABLE IF EXISTS `Sports`;
CREATE TABLE `Sports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `athletes` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
);


--
-- Dumping data for table `Sports`
--

LOCK TABLES `Sports` WRITE;
INSERT INTO `Sports`
(id, branch, category, origin, athletes, description)
VALUES
(1, 'Coding', 'Mind', 'United States', 1, 'Mental sport that assigning code to something for the purposes of classification or identification, mostly creating software or application'),
(2, 'Running', 'Physical', 'Greece', 2, 'Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot'),
(3, 'Fishing', 'Fishing', 'Pacific Ocean', 3, 'Getting fish from the water'),
(4, 'Hiking', 'Endurance', 'United States', 4, 'Long, vigorous walk, usually on trails or footpaths in the countryside'),
(5, 'Jujitsu', 'Martial Arts', 'Japan', 5, 'Japanese martial art and a method of close combat for defeating an armed and armored opponent in which one uses no weapon or only a short weapon.'),
(6, 'Badminton', 'Net', 'England', 6, 'Racquet sport played using racquets to hit a shuttlecock across a net'),
(7, 'Football', 'Physical', 'England', 7, 'Football is a family of team sports that involve, to varying degrees, kicking a ball with a foot to score a goal'),
(8, 'Chess Boxing', 'Miscellaneous', 'Netherland', 8, 'Chess boxing, or chessboxing, is a hybrid fighting sport (or a hybrid board game) that combines two traditional pastimes: chess, a cerebral board game, and boxing, a physical sport.'),
(9, 'Carrom', 'Semi-Shooting', 'India', 9, 'Carrom is a "strike-and- pocket " tabletop game'),
(10, 'Gebuk Bantal', 'Semi-Wrestling','Indonesia',  10, 'Gebuk Bantal is a kind of fight sport on a bamboo above pool arena.'),
(11, 'Running', 'Endurance', 'Europe', 11, 'Running is a type of gait characterized by an aerial phase in which all feet are above the ground'),
(12, 'Basketball', 'Goal', 'United States', 12, 'Limited-contact sport played on a rectangular court. While most often played as a team sport with five players on each side, three-on-three, two-on-two, and one-on-one competitions are also common')
;
UNLOCK TABLES;
