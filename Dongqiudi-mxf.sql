create database Dongqiudi;
use Dongqiudi;
create table PLAYER
(
Season varchar(10),
Name varchar(20), 
Team_Name varchar(20), 
Number varchar(4), 
Position varchar(8),
Minutes varchar(5),
PTS varchar(8),
Assist varchar(8),
Rebound varchar(8),
Steal varchar(8),
Block_Shot varchar(8),
Turnover varchar(8),
Foul varchar(8),
FG varchar(5),
FT varchar(5), 
TP varchar(5),
primary	key ( Season,Number,Team_Name)
);

create table TEAM
(
Team_Name varchar(20) primary key,
Zone varchar(4) ,
Coach varchar(20),
Arena varchar(20),
PPG varchar(10),
APG varchar(10),
RPG varchar(10),
SPG varchar(10),
BPG varchar(10),
AFG varchar(5),
AFT varchar(5),
ATP varchar(5),
WINS int (15)
);

create	table	SCHEDULE 
(
Date_Time varchar (20),
Team_Name varchar (20), 
Opponent varchar (20), 
Result	varchar (5),		
Scores	varchar (10), 
Site	varchar (20),
primary	key ( Date_Time, Team_Name),
foreign	key  (Team_Name) references TEAM (Team_Name)
);

create table USER
(
User_Id int (20) primary key,
User_Name varchar (20) not null,
User_Password varchar (20) not null,
User_Email varchar (20) not null,
Telephone_Number int (20) not null
);





