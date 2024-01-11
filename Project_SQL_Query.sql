--Creating products table
CREATE TABLE products (
					   product_id CHAR(1) PRIMARY KEY,
						product_name VARCHAR(7)
						);--DONE

--Inserting values into the products table
INSERT INTO products (product_id, product_name)
VALUES (1,'Basic'),
	   (2, 'Expert');

--Viewing the products table
SELECT *
FROM products;


--Creating frontend event definitions table
CREATE TABLE frontend_event_definitions (
										 event_id CHAR(1) PRIMARY KEY,
										 description VARCHAR(40),
										 event_type VARCHAR(20)
										 );--DONE

--Inserting values into frontend event definitions table
INSERT INTO frontend_event_definitions (event_id, description, event_type)
VALUES (1, 'Viewed Help Center Page', 'Customer Support'),
	   (2, 'Clicked on Help Center FAQS', 'Customer Support'),
	   (3, 'Clicked Contact Customer Support', 'Customer Support'),
	   (4, 'Submitted Help Ticket', 'Customer Support'),
	   (5, 'Clicked link inside Email', 'Marketing'),
	   (6, 'Clicked CTA on Landing page', 'Marketing');
	   
--Viewing the frontend_event_definitions
SELECT *
FROM frontend_event_definitions;

--Creating cancelations table
CREATE TABLE cancelations (
						   subscription_id CHAR(5) PRIMARY KEY,
						   cancel_date DATE,
						   cancelation_reason_1 VARCHAR(25),
						   cancelation_reason_2 VARCHAR(25),
						   cancelation_reason_3 VARCHAR(25)
						  );--DONE
						  
						  
--Inserting values into cancelations table
INSERT INTO cancelations (subscription_id, cancel_date, cancelation_reason_1, cancelation_reason_2, cancelation_reason_3)
VALUES (38499, '2022-03-27', 'Expensive', 'null', 'null'),
	   (72882, '2023-01-01', 'Not useful', 'Went to a competitor', 'null'),
	   (44467, '2022-05-19', 'Went to a competitor', 'Expensive', 'Bad customer service'),
	   (12622, '2022-02-01', 'Not useful', 'Went to a competitor', 'null'),
	   (99332, '2023-07-08', 'Not useful', 'Went to a competitor', 'null'),
	   (93330, '2023-02-03', 'Expensive', 'Bad customer service', 'null');
	   
	   
--Viewing the cancelations table
SELECT *
FROM cancelations;



--Creating status definition table
CREATE TABLE status_definition (
								status_id INTEGER PRIMARY KEY,
								description VARCHAR(25)
								   );--DONE

--Inserting values into status_definition
INSERT INTO status_definition (status_id, description)
VALUES (0, 'Error'),
	   (1, 'Payment Widget Opened'),
	   (2, 'Payment Entered'),
	   (3, 'Payment Submitted'),
	   (4, 'Payment Success'),
	   (5, 'Complete');
	   
--Viewing status definition
SELECT *
FROM status_definition;

--Creating the customers table
CREATE TABLE customers (
						customer_id CHAR(5),
						customer_name VARCHAR(45)
						);
						
--Inserting values into customers table
INSERT INTO customers (customer_id, customer_name)
VALUES (44538, 'Big Star Collectibles'),
       (33222, 'H+ Sport'),
	   (28333, 'Nadias Garden'),
	   (93888, 'Roux Academy'),
	   (55533, 'Two Trees Olive Oil'),
	   (76338, 'Hansel & Petal'),
	   (29335, 'Binaryville Robots'),
	   (33663, 'Orange Valley community Arts Association'),
	   (38822, 'SAMOCA'),
	   (18226, 'Wisdom Pet Medicine'),
	   (99402, 'Blue Sky Kites'),
	   (11627, 'KinetEco Inc.'),
	   (33667, 'Red30 Tech'),
	   (38822, 'Landon Tech'),
	   (82772, 'Explore California'),
	   (23561, 'Pixelford Photography'),
	   (76338, 'Globe Bank International');
	   
--Viewing the customers table
SELECT *
FROM customers;

--Creating the user table
CREATE TABLE users (
					user_id CHAR(4) PRIMARY KEY,
					user_name VARCHAR(20),
					department VARCHAR(15),
					email VARCHAR(25),
					customer_id CHAR(5),
					admin_id CHAR(4),
					FOREIGN KEY (admin_id) REFERENCES users(user_id)  
					);--DONE
					
--Inserting values into users table
INSERT INTO users (user_id, user_name, department, email, customer_id, admin_id)			
VALUES ('U738', 'Rebecca Turner', 'Data Analytics', 'rturner27@google.co.uk',76338, 'U429'),
       ('U429', 'Carol Shaw', 'Data Analytics', 'cshaw2e@marriott.com', 76338, 'U429'),
	   ('U192', 'Ruby Morgan', 'HR', 'rmorgan1n@narod.ru', 76338, 'U429'),
	   ('U837', 'Annie Hansen', 'Data Analytics', 'ahansen7@furl.net',38822, 'U172'),
	   ('U102', 'Anne Alvarez', 'Marketing', 'aalvarez1y@mlb.com', 38822, 'U172'),
	   ('U172', 'Dorothy Kennedy', 'Data Analytics', 'dkennedy23@unblog.fr', 38822, 'U172'),
	   ('U473', 'Shawn Sanchez', 'Strategy', 'ssanchezy@texas.edu', 55533, 'U473');
			
--Viewing the users table
SELECT *
FROM users;
					
					
--Creating frontend event log
CREATE TABLE frontend_event_log (
								 event_log_id CHAR(6) PRIMARY KEY,
								 user_id CHAR(4),
								 event_id INTEGER,
							     event_timestamp TIMESTAMP,
								 FOREIGN KEY (user_id) REFERENCES users(user_id)
								)
						
--Inserting values into frontend event log table
INSERT INTO frontend_event_log (event_log_id, user_id, event_id, event_timestamp)
VALUES (000132, 'U837', 1, '2023-04-12 12:12:42.0'),
	   (000237, 'U837', 2, '2023-05-12 11:12:42.0'),
	   (000392, 'U837', 3, '2023-05-12 11:15:42.0'),
	   (000312, 'U837', 4, '2023-05-12 11:16:13.0'),
	   (000342, 'U837', 5, '2023-08-12 11:16:12.0'),
	   (000384, 'U837', 5, '2023-08-12 11:16:29.0'),
	   (000322, 'U837', 5, '2023-08-12 11:16:12.0'),
	   (000585, 'U837', 1, '2023-04-29 12:12:22.0'),
	   (000511, 'U837', 1, '2023-04-29 13:12:22.0'),
	   (000512, 'U837', 1, '2023-04-30 13:45:19.0'),
	   (000364, 'U837', 3, '2023-04-30 13:59:09.0'),
	   (000102, 'U837', 4, '2023-04-30 13:59:50.0'),
	   (000829, 'U172', 1, '2023-04-30 01:41:20.0'),
	   (000922, 'U172', 3, '2023-01-30 10:11:20.0'),
	   (000965, 'U172', 4, '2023-01-30 10:12:09.0'),
	   (000273, 'U738', 5, '2023-07-03 12:37:00.0'),
	   (000446, 'U192', 5, '2023-05-13 11:11:11.0'),
	   (000218, 'U102', 5, '2023-06-12 10:12:10.0'),
	   (000219, 'U192', 5, '2023-07-03 23:36:00.0'),
	   (000485, 'U102', 5, '2023-07-06 10:20:34.0'),
	   (000394, 'U473', 5, '2023-07-07 13:12:06.0'),
	   (000657, 'U429', 5, '2023-07-04 14:12:03.0'),
	   (000128, 'U429', 6, '2023-07-04 14:12:03.0');

--Viewing the frontend_event_log
SELECT *
FROM frontend_event_log;
	  	 						
--Creating subscriptions table
CREATE TABLE subscriptions (
							subscription_id	CHAR(5) PRIMARY KEY,
							customer_id CHAR(5),
							product_id CHAR(1),
							number_of_users INTEGER,
							current_status INTEGER,
							revenue INTEGER,
							order_date DATE,
							expiration_date DATE,
							active INTEGER,
							FOREIGN KEY (product_id) REFERENCES products(product_id))
							
--Inserting values into subscriptions table
INSERT INTO subscriptions (subscription_id, customer_id, product_id, number_of_users, current_status, revenue, order_date, expiration_date, active)
VALUES (99332, 33667, 1, 100, 3, 500, '2022-12-08', '2023-12-08', 1),
       (51992, 82772, 1, 300, 2, 1000, '2022-06-04', '2023-06-04', 1),
	   (84475, 33222, 1, 25, 1, 2000, '2022-10-01', '2023-10-01', 1),
	   (73733, 33222, 2, 300, 5, 3000, '2022-11-02', '2023-11-02', 1),
	   (87636, 11627, 2, 500, null, 5000, '2022-01-30', '2022-01-30', 1),
	   (74773, 76338, 2, 500, 5, 5000, '2022-08-09', '2023-08-09', 1),
	   (39444, 29335, 2, 50, null, 4000, '2022-06-17', '2023-06-17', 0),
	   (93357, 38822, 1, 500, 1, 8000, '2022-09-18', '2023-09-18', 0),
	   (12622, 76338, 1, 1200, 5, 16000, '2022-01-01', '2023-01-01', 0),
	   (38499, 33663, 1, 1000, 2, 10000, '2021-04-27', '2022-04-27', 0),
	   (72882, 33663, 2, 750, 1, 6000, '2022-08-08', '2023-08-08', 0),
	   (44467, 38822, 2, 500, 3, 5000, '2021-07-13', '2022-07-13', 0),
	   (33748, 99402, 1, 1000, 5, 8000, '2022-10-09', '2023-10-09', 0),
	   (92888, 93888, 2, 5000, 1, 25000, '2023-02-07', '2024-02-07', 1),
	   (12226, 82772, 2, 5000, 1, 18000, '2022-09-03', '2023-09-03', 1),
	   (33227, 44538, 2, 1500, 1, 17000, '2022-07-18', '2023-07-18', 1),
	   (88833, 44538, 1, 1500, 0, 17000, '2022-07-25', '2023-07-25', 1),
	   (38844, 33667, 2, 1500, 5, 17000, '2022-07-03', '2023-07-03', 1),
	   (76598, 55533, 1, 5000, null, 15000, '2022-08-16', '2022-08-16', 1),
	   (44528, 11627, 1, 800, 2, 12000, '2022-01-16', '2023-01-16', 1),
	   (85574, 23561, 2, 1200, 5, 12000, '2022-07-25', '2023-07-25', 1),
	   (93330, 23561, 1, 500, 0, 11000, '2022-03-09', '2023-03-09', 1),
	   (90037, 28333, 2, 1000, 5, 11000, '2022-01-25', '2023-01-25', 1),
	   (84999, 18226, 2, 1000, 5, 10000, '2022-10-16', '2023-10-16', 1),
	   (19988, 55533, 2, 12000, 1, 10000, '2022-06-22', '2023-06-22', 1),
	   (58557, 99402, 2, 1000, 5, 8000, '2022-06-13', '2023-06-13', 1),
	   (83339, 18226, 1, 1000, 5, 8000, '2022-06-03', '2023-06-03', 1),
	   (44555, 28333, 1, 50, 0,7000, '2022-10-18', '2023-10-18', 1);
	   
--Viewing the subscriptions table
SELECT subscription_id
FROM subscriptions;
	   
	   
--Creating the payment status log table
CREATE TABLE payment_status_log (
								 status_movement_id VARCHAR(9) PRIMARY KEY,
								 subscription_id CHAR(5),
								 status_id INTEGER,
								 movement_date TIMESTAMP,
								 FOREIGN KEY (status_id) REFERENCES status_definition(status_id)
								);	 						

--Inserting values into payment status log table
INSERT INTO payment_status_log (status_movement_id, subscription_id, status_id, movement_date)
VALUES (7011158, 12622, 3, '2023-04-12 12:13:49.0'),
       (95039052, 99332, 3, '2023-01-14 03:06:45.0') ,
	   (70881636, 38499, 3, '2023-06-25 17:08:28.0'),
	   (95908054, 51992, 3, '2023-07-14 05:16:47.0'),
	   (61140347, 51992, 3, '2023-07-14 05:16:13.0'),
	   (34918217, 74773, 3, '2023-11-18 10:46:41.0'),
	   (72873301, 74773, 3, '2023-11-18 10:47:27.0'),
	   (6509309, 44467, 3, '2023-03-11 11:12:49.0'),
	   (98731025, 44467, 3, '2023-03-11 11:13:19.0'),
	   (54404672, 84999, 3, '2023-06-30 08:20:03.0'),
	   (8341161, 33748, 3, '2023-06-07 05:20:17.0'),
	   (5503300, 73733, 3, '2023-01-03 04:00:34.0'),
	   (67435387, 44555, 3, '2023-02-18 08:04:49.0'),
	   (7005108, 88833, 3, '2023-02-16 03:14:30.0'),
	   (53176031, 38844, 3, '2023-12-02 02:33:29.0'),
	   (31401200, 38844, 3, '2023-12-02 02:33:51.0'),
	   (30523727, 83339, 3, '2023-07-28 03:09:37.0'),
	   (66968875, 83339, 3, '2023-07-28 03:10:50.0'),
	   (80472247, 58557, 3, '2023-06-01 04:09:19.0'),
	   (33261617, 58557, 3, '2023-06-01 04:09:44.0'),
	   (46331940, 90037, 3, '2023-08-14 02:04:45.0'),
	   (35091130, 85574, 3, '2023-08-28 15:02:41.0'),
	   (47250864, 12622, 2, '2023-04-12 12:03:40.0'),
	   (60927099, 44528, 2, '2023-07-11 09:20:00.0'),
	   (44001417, 99332, 2, '2023-01-14 03:06:06.0'),
	   (88355012, 38499, 2, '2023-06-25 17:08:15.0'),
	   (2413479, 51992, 2, '2023-07-14 05:16:38.0'),
	   (86225472, 51992, 2, '2023-07-14 05:17:01.0'),
	   (36816002, 74773, 2, '2023-11-18 10:46:33.0'),
	   (70756797, 74773, 2, '2023-11-18 10:47:23.0'),
	   (87233678, 44467, 2, '2023-03-11 11:12:19.0'),
	   (77450870, 44467, 2, '2023-03-11 11:13:10.0'),
	   (16912058, 84999, 2, '2023-06-30 08:19:45.0'),
	   (12897160, 33748, 2, '2023-06-07 05:20:09.0'),
	   (15311752, 73733, 2, '2023-01-03 04:00:28.0'),
	   (96059130, 19988, 2, '2023-06-28 05:26:23.0'),
	   (39043422, 44555, 2, '2023-02-18 08:03:59.0'),
	   (56507895, 88833, 2, '2023-02-16 03:14:12.0'),
	   (13223956, 38844, 2, '2023-12-02 02:33:22.0'),
       (59634923, 38844, 2, '2023-12-02 02:33:46.0'),
	   (34333389, 83339, 2, '2023-07-28 03:09:22.0'),
       (49773211, 83339, 2, '2023-07-28 03:10:41.0'),
	   (10319895, 58557, 2, '2023-06-01 04:09:15.0'),
	   (46528232, 58557, 2, '2023-06-01 04:09:33.0'),
	   (68990582, 90037, 2, '2023-08-14 02:04:33.0'),
	   (58476811, 85574, 2, '2023-08-28 15:02:34.0'),
	   (717057, 12622, 5, '2023-04-12 12:15:03.0'),
	   (88010742, 51992, 5, '2023-07-14 15:16:34.0'),
	   (30874531, 74773, 5, '2023-11-18 10:46:58.0'),
	   (76054536, 74773, 5, '2023-11-18 10:47:39.0'),
	   (24536948, 44467, 5, '2023-03-11 11:13:29.0'),
	   (78647904, 84999, 5, '2023-06-30 08:26:09.0'),
	   (40251415, 33748, 5, '2023-06-07 05:20:49.0'),
	   (51796310, 73733, 5, '2023-01-03 04:01:33.0'),
	   (78460513, 38844, 5, '2023-12-02 02:33:55.0'),
	   (81532063, 83339, 5, '2023-07-28 03:10:15.0'),
	   (15052393, 83339, 5, '2023-07-28 03:11:20.0'),
	   (16364540, 58557, 5, '2023-06-01 04:09:59.0'),
	   (48530404, 90037, 5, '2023-08-14 02:05:21.0'),
	   (22869227, 85574, 5, '2023-08-28 15:02:53.0'),
	   (95400139, 84475, 1, '2023-05-12 16:52:43.0'),
	   (22102686, 12622, 1, '2023-04-12 12:12:42.0'),
	   (76766882, 44528, 1, '2023-07-11 09:12:09.0'),
	   (52171708, 99332, 1, '2023-01-14 02:56:33.0'),
	   (94216758, 38499, 1, '2023-06-25 17:08:04.0'),
	   (35526282, 51992, 1, '2023-07-14 05:16:18.0'),
	   (3185769, 93330, 1, '2023-07-14 05:16:11.0'),
	   (8786706, 74773, 1, '2023-11-18 10:46:28.0'),
	   (93670310, 92888, 1, '2023-08-18 17:14:30.0'),
	   (85216217, 72882, 1, '2023-02-07 07:12:30.0'),
	   (32129096, 44467, 1, '2023-03-11 11:12:14.0'),
	   (14364548, 84999, 1, '2023-06-30 08:19:22.0'),
	   (33104590, 33748, 1, '2023-06-07 05:20:00.0'),
	   (64867511, 73733, 1, '2023-01-03 04:00:09.0'),
	   (10151254, 19988, 1, '2023-06-28 05:26:14.0'),
	   (77165018, 44555, 1, '2023-02-18 08:03:49.0'),
	   (11682468, 88833, 1, '2023-02-16 03:14:02.0'),
	   (39112775, 38844, 1, '2023-12-02 02:33:13.0'),
	   (57158749, 33227, 1, '2023-09-11 06:04:08.0'),
	   (98247822, 83339, 1, '2023-07-28 03:09:11.0'),
	   (45652148, 12226, 1, '2023-05-18 10:04:08.0'),
	   (87067215, 93357, 1, '2023-11-30 05:00:00.0'),
	   (25910045, 58557, 1, '2023-06-01 04:09:09.0'),
	   (25949916, 90037, 1, '2023-08-14 02:04:24.0'),
	   (5243588, 85574, 1, '2023-08-28 15:02:22.0'),
	   (79408761, 12622, 4, '2023-04-12 12:14:30.0'),
	   (5680014, 38499, 4, '2023-06-25 17:08:34.0'),
	   (17240537, 51992, 4, '2023-07-14 05:16:29.0'),
	   (94836278, 74773, 4, '2023-11-18 10:46:49.0'),
	   (22547752, 74773, 4, '2023-11-18 10:47:36.0'),
	   (427989, 44467, 4, '2023-03-11 11:13:26.0'),
	   (85760528, 84999, 4, '2023-06-30 08:25:25.0'),
	   (34679519, 33748, 4, '2023-06-07 05:20:38.0'),
	   (36186419, 73733, 4, '2023-01-03 04:01:12.0'),
	   (74333292, 88833, 4, '2023-02-16 03:14:40.0'),
	   (94425726, 38844, 4, '2023-12-02 02:33:53.0'),
	   (35902288, 83339, 4, '2023-07-28 03:09:58.0'),
	   (65873704, 83339, 4, '2023-07-28 03:10:54.0'),
	   (87264363, 58557, 4, '2023-06-01 04:09:53.0'),
	   (62847462, 90037, 4, '2023-08-14 02:04:56.0'),
	   (18629986, 85574, 4, '2023-08-28 15:02:49.0'),
	   (18485604, 99332, 0, '2023-01-14 03:06:59.0'),
	   (89814395, 38499, 0, '2023-06-25 17:08:45.0'),
	   (55526751, 51992, 0, '2023-07-14 05:16:53.0'),
	   (73876309, 74773, 0, '2023-11-18 10:47:10.0'),
	   (83286155, 44467, 0, '2023-03-11 11:12:55.0'),
	   (57673306, 44555, 0, '2023-02-18 08:04:57.0'),
	   (81193727, 88833, 0, '2023-02-16 03:14:58.0'),
	   (1694206, 38844, 0, '2023-12-02 02:33:31.0'),
	   (34237706, 83339, 0, '2023-07-28 03:10:33.0'),
	   (49044791, 58557, 0, '2023-06-01 04:09:28.0');
	   
--Viewing the payment status log
SELECT *
FROM payment_status_log;


--Creating the Subscriptions product table 1
CREATE TABLE subscriptions_product_1 (
	subscription_id CHAR(5) PRIMARY KEY,
	customer_id CHAR(5),
	order_date DATE ,
	expiration_date DATE,
	active INTEGER	
)

--Inserting values into the Subscriptions product table 1
INSERT INTO subscriptions_product_1 (subscription_id, customer_id, order_date, expiration_date, active)
VALUES (12622, 76338, '2022-01-01', '2023-01-01', 0),
	   (44528, 11627, '2023-09-07', '2024-09-07', 1),
	   (99332, 33667, '2022-12-08', '2023-12-08', 1),
	   (38499, 38822, '2021-04-27', '2022-04-27', 0),
	   (51992, 82772, '2022-06-04', '2023-06-04', 1),
	   (93330, 23561, '2022-03-09', '2023-03-09', 1)
	   
--Viewing the Subscriptions product table 1
SELECT *
FROM subscriptions_product_1;
	   
	  
--Creating the Subscriptions product table 2
CREATE TABLE subscriptions_product_2 (
	subscription_id CHAR(5) PRIMARY KEY,
	customer_id CHAR(5),
	order_date DATE ,
	expiration_date DATE,
	active INTEGER	
)

--Inserting values into the Subscriptions product table 2
INSERT INTO subscriptions_product_2 (subscription_id, customer_id, order_date, expiration_date, active)
VALUES (74773, 76338, '2022-09-09', '2023-09-09', 1),
	   (92888, 55533, '2023-11-07', '2024-11-07', 1),
	   (72882, 33663, '2022-02-08', '2023-02-08', 0),
	   (44467, 38822, '2021-07-13', '2022-07-13', 0),
	   (84999, 18226, '2022-10-16', '2023-10-16', 1),
	   (33748, 99402, '2022-05-09', '2023-05-09', 0)
	   
--Viewing the Subscriptions product table 1
SELECT *
FROM subscriptions_product_2;

--Creating the sales table
CREATE TABLE sales  (
		sale_id CHAR(3),
		sale_employee_id VARCHAR(4),
		sale_date VARCHAR(12),
		sale_amount VARCHAR(6)
	)
	
--Inserting values into sales table
INSERT INTO sales(sale_id, sale_employee_id, sale_date, sale_amount)
VALUES (122, 'E738', '2023-01-04', 18000),
	   (453, 'E738', '2023-03-18', 10000),
	   (922, 'E738', '2023-07-16', 12000),
	   (489, 'E738', '2023-03-26', 5000),
	   (827, 'E738', '2023-04-16', 1000),
	   (364, 'E738', '2023-07-28', 11000),
	   (283, 'E429', '2023-01-30', 4000),
	   (844, 'E429', '2023-04-03', 7000),
       (736, 'E429', '2023-07-13', 10000),
	   (840, 'E192', '2023-02-09', 14000),
	   (451, 'E192', '2023-03-14', 9000),
	   (374, 'E192', '2023-05-16', 16000),
	   (283, 'E172', '2023-03-11', 9000),
	   (347, 'E172', '2023-06-11', 11000),
	   (235, 'E172', '2023-06-15', 15000),
	   (394, 'E172', '2023-07-17', 3000)

--Viewing the sales table
SELECT *
FROM sales;

--Creating the employees table
CREATE TABLE employees (
			employee_id VARCHAR(4),
			employee_name VARCHAR(15),
			email VARCHAR(25),
			department VARCHAR(15),
			quota INTEGER,
			manager_id VARCHAR(4)
			)

--Inserting values into employees table
INSERT INTO employees (employee_id, employee_name, email, department, quota, manager_id)
VALUES ('E738', 'Joe Burns', 'jburns18@mail.ru', 'Sales', 50000, 'E429'),
	   ('E429', 'Bonnie Clark', 'bclark6@bing.com', 'Sales', 80000, 'null'),
	   ('E192', 'Lori Fields', 'lfieldsq@smh.com.au', 'Sales', 60000, 'E429'),
	   ('E837', 'Emily Hayes', 'ehayes1@ox.ac.uk', 'Data Analytics', null, 'E172'),
	   ('E102', 'Amy Hunter', 'ahunter@intel.com', 'Marketing', null, 'E172'),
	   ('E172', 'Roy Martin', 'rmartin@delicious.com', 'Sales', 50000, 'null'),
	   ('E473', 'Norma Ray', 'nray1l@columbia.edu', 'Strategy', null, 'null'),
	   ('E029', 'Tori Welch', 'twelch1u@yahoo.co.jp', 'Data Analytics', null, 'E192')
		
--Viewing the employees table
SELECT *
FROM employees;


--Answering Questions
--QUESTION ONE

--Creating a temporary table using common table expression to create an overview of revenue generated from basic and expert product in 2022
WITH overview_table AS (
				SELECT 
					subscriptions.subscription_id,
					subscriptions.customer_id,
					subscriptions.product_id,
					products.product_name,
					subscriptions.order_date,
					EXTRACT (MONTH FROM subscriptions.order_date) AS month_of_order,
	 				subscriptions.revenue AS revenue
				FROM 
					subscriptions
				LEFT JOIN 
					products
				ON subscriptions.product_id = products.product_id
				WHERE EXTRACT (YEAR FROM order_date) = 2022
				GROUP BY 1,2,3,4,5,6
				ORDER BY EXTRACT (MONTH FROM subscriptions.order_date) 
						),
--Creating another temporary table using common table expression to have the sum of revenue per month og each product	
  monthly_overview_table AS (
  				SELECT 
	  				product_id,
	  				product_name,
	  				month_of_order,
	 				SUM(revenue) AS monthly_revenue
  				FROM 
	  				overview_table
  				GROUP BY 1,2,3)
--Now, extracting the minimum, maximum, average, standard deviation				
SELECT 
	   product_name,
	   MIN(monthly_revenue) AS minimum_revenue,
	   MAX(monthly_revenue) AS maximum_revenue,
	   AVG(monthly_revenue) AS average_revenue,
	   STDDEV(monthly_revenue) AS standard_deviation_revenue
FROM 
	   monthly_overview_table
GROUP BY 
	   product_name;
	  
	  
--QUESTION_TWO
--Creating a temporary table using common table expression to get a table of users that clicked the link in the email 
WITH users_that_clicked_link AS (
	SELECT 
		frontend_event_log.user_id,
		COUNT(*) AS number_of_link_click
	FROM 
		users
	LEFT JOIN 
		frontend_event_log
	ON users.user_id = frontend_event_log.user_id
	WHERE frontend_event_log.event_id = 5
	GROUP BY 1
				)

SELECT 
	DISTINCT number_of_link_click,
	COUNT(*) AS number_of_users 
FROM 
	users_that_clicked_link
GROUP BY 1;


--QUESTION THREE:
WITH subscription_maximum_status AS (
	SELECT 
		payment_status_log.subscription_id,
	MAX(payment_status_log.status_id) AS maximum_status_reached
	FROM 
		payment_status_log
	GROUP BY 1
	),
	
 maximum_and_current_status AS (
 	SELECT
	 	subscriptions.subscription_id,
	 maximum_status_reached,
	 subscriptions.current_status,
 		CASE WHEN maximum_status_reached = 1 THEN 'Payment Widget Opened'
 			 WHEN maximum_status_reached = 2 THEN 'Payment Entered'
 			 WHEN maximum_status_reached = 3 AND subscriptions.current_status != 0 THEN 'Payment Submitted'
 			 WHEN maximum_status_reached = 3 AND subscriptions.current_status = 0 THEN 'User Error with Payment Submission'
 			 WHEN maximum_status_reached = 4 AND subscriptions.current_status != 0 THEN 'Payment Success'		
 			 WHEN maximum_status_reached = 4 AND subscriptions.current_status = 0 THEN 'Payment Processing Error with Vendor'
	         WHEN maximum_status_reached = 5 THEN 'Complete'
	 		 WHEN  maximum_status_reached IS NULL  THEN 'User did not start payment process'
	 	END AS payment_funnel_stage
 	FROM 
	 	subscriptions
	LEFT JOIN 
	 	subscription_maximum_status
	ON subscriptions.subscription_id = subscription_maximum_status.subscription_id 
	GROUP BY 1,2
 	 )

SELECT 
	payment_funnel_stage,
	COUNT(*) AS subcriptions
FROM 
	maximum_and_current_status
GROUP BY 1
ORDER BY 2 DESC;


--QUESTION FOUR
SELECT 
	customer_id,
	COUNT(DISTINCT product_id) AS number_of_product,
	SUM(number_of_users) AS total_users,
	CASE WHEN COUNT(DISTINCT product_id) = 1 OR SUM(number_of_users) >= 5000 THEN 1 ELSE 0 END AS upsell_opportunity 
FROM
	subscriptions
GROUP BY 1;

--QUESTION_5
SELECT 
	user_id,
	SUM(CASE WHEN frontend_event_log.event_id = 1 THEN 1 ELSE 0 END) AS viewed_help_center_page,
	SUM(CASE WHEN frontend_event_log.event_id = 2 THEN 1 ELSE 0 END) AS clicked_faqs,
	SUM(CASE WHEN frontend_event_log.event_id = 3 THEN 1 ELSE 0 END) AS customer_contact_support,
	SUM(CASE WHEN frontend_event_log.event_id = 4 THEN 1 ELSE 0 END) AS submitted_ticket
FROM
	frontend_event_log
LEFT JOIN 
	frontend_event_definitions
ON frontend_event_log.event_id  = CAST(frontend_event_definitions.event_id AS INTEGER)
WHERE frontend_event_definitions.event_type = 'Customer Support'
GROUP BY 1;

--QUESTION SIX:
WITH all_subcriptions AS (
		SELECT *
		FROM subscriptions_product_1
		WHERE active = 1
		UNION 
		SELECT *
		FROM subscriptions_product_2
		WHERE active = 1
		)
		
SELECT 
	DATE_TRUNC('YEAR', expiration_date) AS expiration_year,
	COUNT(active) AS subscriptions
FROM 
	all_subcriptions
GROUP BY 1;

--QUESTION SEVEN:
WITH all_cancelation_reasons AS (
	SELECT 
		subscription_id,
		cancelation_reason_1 AS cancelation_reason
	FROM 
		cancelations
	UNION ALL
	SELECT 
		subscription_id,
		cancelation_reason_2 AS cancelation_reason
	FROM 
		cancelations
	UNION ALL
	SELECT 
		subscription_id,
		cancelation_reason_3 AS cancelation_reason
	FROM 
		cancelations

	)

SELECT 
	CAST(SUM(CASE WHEN cancelation_reason = 'Expensive' THEN 1 ELSE 0 END) AS FLOAT) *100 / COUNT(DISTINCT subscription_id) AS percent_expensive
FROM 
	all_cancelation_reasons;

--QUESTION EIGHT
SELECT 
	employees.employee_id,
	employees.employee_name,
	manager.employee_name AS manager_name,
	COALESCE(manager.email, employees.email) AS contact_email
FROM 
	employees
LEFT JOIN 
	employees AS manager
ON employees.manager_id = manager.employee_id
WHERE employees.department = 'Sales';

--QUESTION NINE
WITH monthly_revenue AS (
	SELECT 
		DATE_TRUNC('month', order_date) AS order_month,
		SUM(revenue) AS total_revenue
	FROM
		subscriptions
	GROUP BY  1
	ORDER BY 1
	),
	
	previous_current_month AS (
	SELECT 
		previous_monthly.order_month AS previous_month,
		previous_monthly.total_revenue AS previous_revenue,
		LEAD(current_monthly.order_month) OVER (ORDER BY current_monthly.order_month) AS current_month,
		LEAD(current_monthly.total_revenue) OVER (ORDER BY current_monthly.order_month) AS current_revenue
		
	FROM 
		monthly_revenue AS previous_monthly
	LEFT JOIN 
			monthly_revenue AS current_monthly
	ON previous_monthly.order_month = current_monthly.order_month)

SELECT 
	previous_month,
	current_month,
	previous_revenue,
	current_revenue
FROM 
	previous_current_month
WHERE EXTRACT(MONTH FROM current_month) - EXTRACT(MONTH FROM previous_month) = 1 
AND current_revenue > previous_revenue;

--QUESTION TEN
SELECT 
	sale_employee_id,
	sale_date,
	sale_amount,
	SUM(CAST(sale_amount AS INTEGER)) OVER (PARTITION BY sale_employee_id ORDER BY sale_date) AS running_total,
	CAST(SUM(CAST(sale_amount AS INTEGER)) OVER (PARTITION BY sale_employee_id ORDER BY sale_date) AS FLOAT) / quota AS percent_quota
FROM sales
INNER JOIN employees
ON sales.sale_employee_id = employees.employee_id;

--QUESTION ELEVEN
SELECT 
	status_movement_id,
	subscription_id,
	status_id,
	movement_date,
	LEAD(movement_date) OVER (ORDER BY movement_date) AS next_status_movement_date,
	LEAD(movement_date) OVER (ORDER BY movement_date) - movement_date AS time_in_status
FROM payment_status_log
WHERE CAST(subscription_id AS INTEGER) = 38844
ORDER BY movement_date;

--END OF PROJECT
