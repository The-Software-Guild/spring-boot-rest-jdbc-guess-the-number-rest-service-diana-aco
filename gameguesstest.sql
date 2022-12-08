Drop database if exists guessGameTest;
create database guessGameTest;
use guessGameTest;

create table game (
game_id int not null auto_increment,
answer varchar(10) not null,
isFinished boolean not null,
primary key (game_id)
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
