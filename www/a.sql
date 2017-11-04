create table worker (
id int AUTO_INCREMENT PRIMARY KEY,
name varchar(255) not null,
passwork varchar(255) not null,
email varchar(255) UNIQUE
);

create table position (
id int AUTO_INCREMENT PRIMARY KEY,
latitude DOUBLE not null,
longitude DOUBLE not null,
worker varchar(255),
FOREIGN KEY (worker) REFERENCES worker(email) ON DELETE cascade
);

create table dangerous (
id int auto_increment primary key,
worker varchar(255),
degree int default 0,
FOREIGN KEY (worker) REFERENCES worker(email) ON DELETE cascade
);

create table sensors (
id int auto_increment primary key,
worker varchar(255),
temperature double default 37.00,
toxic int default 0,
moviment int default 0,
pulse int default 70,
FOREIGN KEY (worker) REFERENCES worker(email) ON DELETE cascade
);

use hackathonIBM;

INSERT INTO worker (name, email, passwork)  VALUES('agf','adriller_gf@hotmail.com', 'Adriller123@');
INSERT INTO worker (name, email, passwork)  VALUES('agf','adrillergf@hotmail.com', 'Adriller123@');
select * from worker;
select * from position;

drop table dangerous;

insert into dangerous (worker, degree) values( 'a@a.com', 1);

insert into dangerous (worker, degree) values( 'b@b.com', 2);

insert into dangerous (worker, degree) values( 'c@c.com', 0);

insert into dangerous (worker, degree) values( 'd@d.com', 3);
