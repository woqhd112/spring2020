use class03;
drop table emp01;
drop table dept01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) NOT NULL,
  loc varchar(45) DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- alter table dept01 auto_increment=1;
INSERT INTO dept01 (dname,loc) VALUES ('영업부','서울');
INSERT INTO dept01 (dname,loc) VALUES ('총무부','부산');
INSERT INTO dept01 (dname,loc) VALUES ('회계부','대구');