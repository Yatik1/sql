use classicmodels;

drop table if exists payments;

create table if not exists payments(
	checkNumber varchar(50) not null,
    paymentDate datetime not null,
    amount double not null,
    customerNumber int(11) not null,
    primary key (checkNumber),
    foreign key (customerNumber) references customers (customerNumber)
);

desc payments;


INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('103','HQ336336','2004-10-19 00:00:00','6066.78');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('103','JM555205','2003-06-05 00:00:00','14571.44');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('103','OM314933','2004-12-18 00:00:00','1676.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('112','BO864823','2004-12-17 00:00:00','14191.12');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('112','HQ55022','2003-06-06 00:00:00','32641.98');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('112','ND748579','2004-08-20 00:00:00','33347.88');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('114','GG31455','2003-05-20 00:00:00','45864.03');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('114','MA765515','2004-12-15 00:00:00','82261.22');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('114','NP603840','2003-05-31 00:00:00','7565.08');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('114','NR27552','2004-03-10 00:00:00','44894.74');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('119','DB933704','2004-11-14 00:00:00','19501.82');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('119','LN373447','2004-08-08 00:00:00','47924.19');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('119','NG94694','2005-02-22 00:00:00','49523.67');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('129','DB889831','2003-02-16 00:00:00','50218.95');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('129','FD317790','2003-10-28 00:00:00','1491.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('129','KI831359','2004-11-04 00:00:00','17876.32');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('129','MA302151','2004-11-28 00:00:00','34638.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','AE215433','2005-03-05 00:00:00','101244.59');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','BG255406','2004-08-28 00:00:00','85410.87');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','CQ287967','2003-04-11 00:00:00','11044.3');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','ET64396','2005-04-16 00:00:00','83598.04');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','HI366474','2004-12-27 00:00:00','47142.7');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','HR86578','2004-11-02 00:00:00','55639.66');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','KI131716','2003-08-15 00:00:00','111654.4');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','LF217299','2004-03-26 00:00:00','43369.3');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','NT141748','2003-11-25 00:00:00','45084.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('125','DI925118','2003-01-28 00:00:00','10549.01');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('125','FA465482','2003-10-18 00:00:00','24101.81');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('125','FH668230','2004-03-24 00:00:00','33820.62');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('125','IP383901','2004-11-18 00:00:00','7466.32');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','DM826140','2004-12-08 00:00:00','26248.78');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','ID449593','2003-12-11 00:00:00','23923.93');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('124','PI42991','2003-04-09 00:00:00','16537.85');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('131','CL442705','2003-03-12 00:00:00','22292.62');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('131','MA724562','2004-12-02 00:00:00','50025.35');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('131','NB445135','2004-09-11 00:00:00','35321.97');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','AU364101','2003-07-19 00:00:00','36251.03');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','DB583216','2004-11-01 00:00:00','36140.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','DL460618','2005-05-19 00:00:00','46895.48');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','HJ32686','2004-01-30 00:00:00','59830.55');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','ID10962','2004-12-31 00:00:00','116208.4');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','IN446258','2005-03-25 00:00:00','65071.26');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','JE105477','2005-03-18 00:00:00','120166.58');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','JN355280','2003-10-26 00:00:00','49539.37');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','JN722010','2003-02-25 00:00:00','40206.2');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','KT52578','2003-12-09 00:00:00','63843.55');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','MC46946','2004-07-09 00:00:00','35420.74');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','MF629602','2004-08-16 00:00:00','20009.53');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('141','NU627706','2004-05-17 00:00:00','26155.91');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','IR846303','2004-12-12 00:00:00','36005.71');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','LA685678','2003-04-09 00:00:00','7674.94');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','CN328545','2004-07-03 00:00:00','4710.73');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','ED39322','2004-04-26 00:00:00','28211.7');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','HR182688','2004-12-01 00:00:00','20564.86');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('145','JJ246391','2003-02-20 00:00:00','53959.21');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('146','FP549817','2004-03-18 00:00:00','40978.53');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('146','FU793410','2004-01-16 00:00:00','49614.72');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('146','LJ160635','2003-12-10 00:00:00','39712.1');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('148','BI507030','2003-04-22 00:00:00','44380.15');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('148','DD635282','2004-08-11 00:00:00','2611.84');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('148','KM172879','2003-12-26 00:00:00','105743');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('148','ME497970','2005-03-27 00:00:00','3516.04');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('151','BF686658','2003-12-22 00:00:00','58793.53');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('151','GB852215','2004-07-26 00:00:00','20314.44');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('151','IP568906','2003-06-18 00:00:00','58841.35');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('151','KI884577','2004-12-14 00:00:00','39964.63');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('157','HI618861','2004-11-19 00:00:00','35152.12');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('157','NN711988','2004-09-07 00:00:00','63357.13');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('161','BR352384','2004-11-14 00:00:00','2434.25');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('161','BR478494','2003-11-18 00:00:00','50743.65');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('161','KG644125','2005-02-02 00:00:00','12692.19');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('161','NI908214','2003-08-05 00:00:00','38675.13');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('166','BQ327613','2004-09-16 00:00:00','38785.48');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('166','DC979307','2004-07-07 00:00:00','44160.92');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('166','LA318629','2004-02-28 00:00:00','22474.17');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('168','ED743615','2004-09-19 00:00:00','12538.01');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('168','GN228846','2003-12-03 00:00:00','85024.46');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('171','GB878038','2004-03-15 00:00:00','18997.89');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('171','IL104425','2003-11-22 00:00:00','42783.81');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('172','AD832091','2004-09-09 00:00:00','1960.8');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('172','CE51751','2004-12-04 00:00:00','51209.58');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('172','EH208589','2003-04-20 00:00:00','33383.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('173','GP545698','2004-05-13 00:00:00','11843.45');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('173','IG462397','2004-03-29 00:00:00','20355.24');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('175','CITI3434344','2005-05-19 00:00:00','28500.78');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('175','IO448913','2003-11-19 00:00:00','24879.08');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('175','PI15215','2004-07-10 00:00:00','42044.77');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('177','AU750837','2004-04-17 00:00:00','15183.63');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('177','CI381435','2004-01-19 00:00:00','47177.59');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','CM564612','2004-04-25 00:00:00','22602.36');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','GQ132144','2003-01-30 00:00:00','5494.78');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','OH367219','2004-11-16 00:00:00','44400.5');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','AE192287','2005-03-10 00:00:00','23602.9');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','AK412714','2003-10-27 00:00:00','37602.48');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','KA602407','2004-10-21 00:00:00','34341.08');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','AM968797','2004-11-03 00:00:00','52825.29');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','BQ39062','2004-12-08 00:00:00','47159.11');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','KL124726','2003-03-27 00:00:00','48425.69');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','BO711618','2004-10-03 00:00:00','17359.53');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('181','NM916675','2004-03-01 00:00:00','32538.74');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('198','FI192930','2004-12-06 00:00:00','9658.74');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('198','HQ920205','2003-07-06 00:00:00','6036.96');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('198','IS946883','2004-09-21 00:00:00','5858.56');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('202','DP677013','2003-10-20 00:00:00','23908.24');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('202','OO846801','2004-06-15 00:00:00','37258.94');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('202','HI358554','2003-12-18 00:00:00','36527.61');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('202','IQ627690','2004-11-08 00:00:00','33594.58');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('204','GC697638','2004-08-13 00:00:00','51152.86');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('204','IS150005','2004-09-24 00:00:00','4424.4');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('205','GL756480','2003-12-04 00:00:00','3879.96');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('205','LL562733','2003-09-05 00:00:00','50342.74');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('205','NM739638','2005-02-06 00:00:00','39580.6');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('209','BOAF82044','2005-05-03 00:00:00','35157.75');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('209','ED520529','2004-06-21 00:00:00','4632.31');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('209','PH785937','2004-05-04 00:00:00','36069.26');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('211','BJ535230','2003-12-09 00:00:00','45480.79');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('216','BG407567','2003-05-09 00:00:00','3101.4');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('216','ML780814','2004-12-06 00:00:00','24945.21');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('216','MM342086','2003-12-14 00:00:00','40473.86');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('219','BN17870','2005-03-02 00:00:00','3452.75');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('219','BR941480','2003-10-18 00:00:00','4465.85');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('227','MQ413968','2003-10-31 00:00:00','36164.46');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('227','NU21326','2004-11-02 00:00:00','53745.34');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('233','BOFA23232','2005-05-20 00:00:00','29070.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('233','II180006','2004-07-01 00:00:00','22997.45');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('233','JG981190','2003-11-18 00:00:00','16909.84');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('239','NQ865547','2004-03-15 00:00:00','80375.24');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('242','IF245157','2004-11-16 00:00:00','46788.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('242','JO719695','2004-03-28 00:00:00','24995.61');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('242','AF40894','2003-11-22 00:00:00','33818.34');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('242','HR224331','2005-06-03 00:00:00','12432.32');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('242','KI744716','2003-07-21 00:00:00','14232.7');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('249','IJ399820','2004-09-19 00:00:00','33924.24');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('249','NE404084','2004-09-04 00:00:00','48298.99');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('250','EQ12267','2005-05-17 00:00:00','17928.09');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('250','HD284647','2004-12-30 00:00:00','26311.63');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('250','HN114306','2003-07-18 00:00:00','23419.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('256','EP227123','2004-02-10 00:00:00','5759.42');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('256','HE84936','2004-10-22 00:00:00','53116.99');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('260','EU280955','2004-11-06 00:00:00','61234.67');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('260','GB361972','2003-12-07 00:00:00','27988.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('260','IO164641','2004-08-30 00:00:00','37527.58');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('260','NH776924','2004-04-24 00:00:00','29284.42');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('276','EM979878','2005-02-09 00:00:00','27083.78');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('276','KM841847','2003-11-13 00:00:00','38547.19');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('276','LE432182','2003-09-28 00:00:00','41554.73');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('276','OJ819725','2005-04-30 00:00:00','29848.52');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('278','BJ483870','2004-12-05 00:00:00','37654.09');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('278','GP636783','2003-03-02 00:00:00','52151.81');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('278','NI983021','2003-11-24 00:00:00','37723.79');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('282','IA793562','2003-08-03 00:00:00','24013.52');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('282','JT819493','2004-08-02 00:00:00','35806.73');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('282','OD327378','2005-01-03 00:00:00','31835.36');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('286','DR578578','2004-10-28 00:00:00','47411.33');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('286','KH910279','2004-09-05 00:00:00','43134.04');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('298','AJ574927','2004-03-13 00:00:00','47375.92');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('298','LF501133','2004-09-18 00:00:00','61402');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('298','AD304085','2003-10-24 00:00:00','36798.88');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('298','NR157385','2004-09-05 00:00:00','32260.16');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('314','DG336041','2005-02-15 00:00:00','46770.52');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('314','FA728475','2003-10-06 00:00:00','32723.04');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('314','NQ966143','2004-04-25 00:00:00','16212.59');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('314','LQ244073','2004-08-09 00:00:00','45352.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('314','MD809704','2004-03-03 00:00:00','16901.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('319','HL685576','2004-11-06 00:00:00','42339.76');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('319','OM548174','2003-12-07 00:00:00','36092.4');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('320','GJ597719','2005-01-18 00:00:00','8307.28');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('320','HO576374','2003-08-20 00:00:00','41016.75');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('320','MU817160','2003-11-24 00:00:00','52548.49');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('321','DJ15149','2003-11-03 00:00:00','85559.12');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('321','LA556321','2005-03-15 00:00:00','46781.66');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','AL493079','2005-05-23 00:00:00','75020.13');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','ES347491','2004-06-24 00:00:00','37281.36');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','HG738664','2003-07-05 00:00:00','2880');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','PQ803830','2004-12-24 00:00:00','39440.59');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','DQ409197','2004-12-13 00:00:00','13671.82');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','FP443161','2003-07-07 00:00:00','29429.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('323','HB150714','2003-11-23 00:00:00','37455.77');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('328','EN930356','2004-04-16 00:00:00','7178.66');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('328','NR631421','2004-05-30 00:00:00','31102.85');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('333','HL209210','2003-11-15 00:00:00','23936.53');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('333','JK479662','2003-10-17 00:00:00','9821.32');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('333','NF959653','2005-03-01 00:00:00','21432.31');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('335','CS435306','2005-01-27 00:00:00','45785.34');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('335','HH517378','2003-08-16 00:00:00','29716.86');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('335','LF737277','2004-05-22 00:00:00','28394.54');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('339','AP286625','2004-10-24 00:00:00','23333.06');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('339','DA98827','2003-11-28 00:00:00','34606.28');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('344','AF246722','2003-11-24 00:00:00','31428.21');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('344','NJ906924','2004-04-02 00:00:00','15322.93');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('347','DG700707','2004-01-18 00:00:00','21053.69');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('347','LG808674','2003-10-24 00:00:00','20452.5');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('350','BQ602907','2004-12-11 00:00:00','18888.31');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('350','CI471510','2003-05-25 00:00:00','50824.66');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('350','OB648482','2005-01-29 00:00:00','1834.56');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('353','CO351193','2005-01-10 00:00:00','49705.52');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('353','ED878227','2003-07-21 00:00:00','13920.26');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('353','GT878649','2003-05-21 00:00:00','16700.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('353','HJ618252','2005-06-09 00:00:00','46656.94');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('357','AG240323','2003-12-16 00:00:00','20220.04');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('357','NB291497','2004-05-15 00:00:00','36442.34');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('362','FP170292','2004-07-11 00:00:00','18473.71');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('362','OG208861','2004-09-21 00:00:00','15059.76');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('363','HL575273','2004-11-17 00:00:00','50799.69');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('363','IS232033','2003-01-16 00:00:00','10223.83');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('363','PN238558','2003-12-05 00:00:00','55425.77');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('379','CA762595','2005-02-12 00:00:00','28322.83');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('379','FR499138','2003-09-16 00:00:00','32680.31');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('379','GB890854','2004-08-02 00:00:00','12530.51');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('381','BC726082','2004-12-03 00:00:00','12081.52');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('381','CC475233','2003-04-19 00:00:00','1627.56');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('381','GB117430','2005-02-03 00:00:00','14379.9');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('381','MS154481','2003-08-22 00:00:00','1128.2');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('382','CC871084','2003-05-12 00:00:00','35826.33');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('382','CT821147','2004-08-01 00:00:00','6419.84');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('382','PH29054','2004-11-27 00:00:00','42813.83');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('385','BN347084','2003-12-02 00:00:00','20644.24');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('385','CP804873','2004-11-19 00:00:00','15822.84');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('385','EK785462','2003-03-09 00:00:00','51001.22');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('386','DO106109','2003-11-18 00:00:00','38524.29');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('386','HG438769','2004-07-18 00:00:00','51619.02');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('398','AJ478695','2005-02-14 00:00:00','33967.73');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('398','DO787644','2004-06-21 00:00:00','22037.91');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('398','JPMR4544','2005-05-18 00:00:00','615.45');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('398','KB54275','2004-11-29 00:00:00','48927.64');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('406','BJMPR4545','2005-04-23 00:00:00','12190.85');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('406','HJ217687','2004-01-28 00:00:00','49165.16');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('406','NA197101','2004-06-17 00:00:00','25080.96');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('412','GH197075','2004-07-25 00:00:00','35034.57');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('412','PJ434867','2004-04-14 00:00:00','31670.37');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('412','ER54537','2004-09-28 00:00:00','31310.09');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('424','KF480160','2004-12-07 00:00:00','25505.98');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('424','LM271923','2003-04-16 00:00:00','21665.98');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('424','OA595449','2003-10-31 00:00:00','22042.37');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('447','AO757239','2003-09-15 00:00:00','6631.36');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('447','ER615123','2003-06-25 00:00:00','17032.29');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('447','OU516561','2004-12-17 00:00:00','26304.13');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('447','FS299615','2005-04-18 00:00:00','27966.54');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('447','KR822727','2004-09-30 00:00:00','48809.9');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('450','EF485824','2004-06-21 00:00:00','59551.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('452','ED473873','2003-11-15 00:00:00','27121.9');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('452','FN640986','2003-11-20 00:00:00','15130.97');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('452','HG635467','2005-05-03 00:00:00','8807.12');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('455','HA777606','2003-12-05 00:00:00','38139.18');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('455','IR662429','2004-05-12 00:00:00','32239.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('456','GJ715659','2004-11-13 00:00:00','27550.51');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('456','MO743231','2004-04-30 00:00:00','1679.92');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('458','DD995006','2004-11-15 00:00:00','33145.56');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('458','NA377824','2004-02-06 00:00:00','22162.61');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('458','OO606861','2003-06-13 00:00:00','57131.92');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('462','ED203908','2005-04-15 00:00:00','30293.77');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('462','GC60330','2003-11-08 00:00:00','9977.85');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('462','PE176846','2004-11-27 00:00:00','48355.87');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('471','AB661578','2004-07-28 00:00:00','9415.13');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('471','CO645196','2003-12-10 00:00:00','35505.63');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('473','LL427009','2004-02-17 00:00:00','7612.06');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('473','PC688499','2003-10-27 00:00:00','17746.26');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('475','JP113227','2003-12-09 00:00:00','7678.25');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('475','PB951268','2004-02-13 00:00:00','36070.47');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('484','GK294076','2004-10-26 00:00:00','3474.66');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('484','JH546765','2003-11-29 00:00:00','47513.19');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('486','BL66528','2004-04-14 00:00:00','5899.38');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('486','HS86661','2004-11-23 00:00:00','45994.07');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('486','JB117768','2003-03-20 00:00:00','25833.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('487','AH612904','2003-09-28 00:00:00','29997.09');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('487','PT550181','2004-02-29 00:00:00','12573.28');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('487','OC773849','2003-12-04 00:00:00','22275.73');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('487','PO860906','2004-01-31 00:00:00','7310.42');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('495','BH167026','2003-12-26 00:00:00','59265.14');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('495','FN155234','2004-05-14 00:00:00','6276.6');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('496','EU531600','2005-05-25 00:00:00','30253.75');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('496','MB342426','2003-07-16 00:00:00','32077.44');
INSERT INTO `Payments` (`customerNumber`,`checkNumber`,`paymentDate`,`amount`) VALUES ('496','MN89921','2004-12-31 00:00:00','52166');

select * from payments;