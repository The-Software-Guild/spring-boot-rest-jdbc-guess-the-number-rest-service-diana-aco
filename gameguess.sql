drop database if exists guessgame;
create database guessgame;
use guessgame;

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(10) NOT NULL,
  `isFinished` tinyint(1) NOT NULL,
  PRIMARY KEY (`game_id`)
);

drop table if exists round;
 
create table round (
round_id int not null auto_increment,
game_id int not null,
guess_time timestamp null default current_timestamp,
guess varchar(10) not null,
result varchar(10) not null,
primary key (round_id),
key fk_game_id (game_id),
constraint fk_gameId foreign key (game_id) references game(game_id)
);

INSERT INTO `game` VALUES (1,'3290',0),(2,'9807',1),(3,'1290',1),(4,'4352',1),(5,'9876',1),(6,'1254',0),(7,'2689',0),(8,'5087',0),(9,'2383',0),(10,'6835',0);
INSERT INTO `round` VALUES (1,1,'2021-08-10 13:20:11','1254','e:4:p:0'),(2,2,'2021-04-11 08:47:31','5181','e:0:p:0'),(3,3,'2021-05-15 04:36:59','9876','e:4:p:0'),(4,4,'2021-01-31 10:03:01','1254','e:4:p:0'),(5,5,'2021-10-01 17:55:02','1259','e:1:p:1'),(6,6,'2021-08-04 10:20:49','4352','e:4:p:0');
