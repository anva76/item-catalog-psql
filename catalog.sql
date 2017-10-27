
BEGIN TRANSACTION;
CREATE TABLE category (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(80) NOT NULL, 
	last_updated TIMESTAMP

);
INSERT INTO "category" VALUES(5,'Video','2017-09-23 21:21:16.714619');
INSERT INTO "category" VALUES(7,'Photo','2017-09-23 23:01:31.892339');
INSERT INTO "category" VALUES(8,'Auto','2017-09-24 01:47:23.531872');
INSERT INTO "category" VALUES(9,'Home Appliances','2017-09-24 13:35:51.189503');
CREATE TABLE product (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(80) NOT NULL, 
	description VARCHAR(250), 
	last_updated TIMESTAMP, 
	picture_file VARCHAR(50), 
	category_id INTEGER,

	FOREIGN KEY(category_id) REFERENCES category (id)
);
INSERT INTO "product" VALUES(1,'Compact Cam','A compact video camera for travelers.','2017-09-24 13:15:48.125542','58dgh8sj596y.png',5);
INSERT INTO "product" VALUES(2,'Pro Camera','A professional video camera for TV broadcast companies.','2017-09-24 13:15:17.317097','fcpbcwadl6aj.png',5);
INSERT INTO "product" VALUES(3,'Urban Car','A mass market urban car for families.
','2017-09-24 13:04:06.894304','3pa9vzh56e14.png',8);
INSERT INTO "product" VALUES(4,'Sport Car','A luxury sport car.','2017-09-24 13:05:05.033453','wo25kidp2boa.png',8);
INSERT INTO "product" VALUES(5,'Pocket PhotoCam','A compact photo camera for tourists.
','2017-09-24 13:18:35.216865','cboqginm7g8q.png',7);
INSERT INTO "product" VALUES(6,'Pro PhotoCam','An advanced DSLR camera for professional photographers.','2017-09-24 13:17:28.479118','owmc4egpd0gl.png',7);
INSERT INTO "product" VALUES(7,'LCD TV','A high quality LCD TV.','2017-09-24 13:34:40.357404','xn5egu9fhoz3.png',9);
INSERT INTO "product" VALUES(8,'HiFi Audio','A HiFi audio system for music fans.','2017-09-24 13:48:41.874784','y3voul2j5oqh.png',9);
COMMIT;

select setval(pg_get_serial_sequence('category', 'id'), 20);
select setval(pg_get_serial_sequence('product', 'id'), 20);
