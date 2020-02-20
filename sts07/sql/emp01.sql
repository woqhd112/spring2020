CREATE TABLE emp01 (
  sabun int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  nalja datetime DEFAULT NULL,
  pay int(11) DEFAULT NULL,
  deptno int(11) DEFAULT NULL,
  PRIMARY KEY (sabun),
  KEY emp01_fk_idx (deptno),
  CONSTRAINT emp01_fk FOREIGN KEY (deptno) REFERENCES dept01 (deptno) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (1,'test1','2020-02-17 11:59:43',1000,1);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (2,'test2','2020-02-17 11:59:45',2000,3);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (3,'test3','2020-02-17 11:59:46',3000,1);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (4,'test4','2020-02-17 11:59:48',4000,2);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (10,'test5','2020-02-18 11:57:58',5555,3);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (11,'test6','2020-02-18 11:58:39',5555,3);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (15,'test7','2020-02-18 12:20:08',1234,1);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (16,'test7','2020-02-18 12:20:08',1234,1);
INSERT INTO `` (sabun,name,nalja,pay,deptno) VALUES (17,'test2','2020-02-18 14:59:38',1111,4);
