/**
 * User Table
 */
Create table users (
	id int primary key auto_increment, 
	username varchar(40),
	password varchar(100),
	nickname varchar(40),
	email varchar(100),
	role varchar(100), 
	state int, 
	activecode varchar(100),
	updatetime timestamp
);

/**
 * Product Table
 */
Create table products (
	id varchar(100) primary key,
	name varchar(40), 
	price double, 
	category varchar(40), 
	pnum int, 
	imgurl varchar(100),
	description varchar(255)
);


/**
 * Order Table
 */
Create table orders(
	id varchar(100) primary key,
	money double,
	receiverinfo varchar(255),
	paystate int, 
	ordertime timestamp,
	user_id int, 
	foreign key(user_id) references users(id)
);


/**
 * Order item
 */
Create table orderitem(
	order_id varchar(100),
	product_id varchar(100), 
	buynum int,
	/*A table can have only one primary key, which may consist of single or multiple fields.
	 * When multiple fields are used as a primary key, they are called a composite key.*/
	primary key(order_id, product_id),
	foreign key(order_id) references orders(id),
	foreign key(product_id) references products(id)
);

/**
 * Create database
 */
Create database estoresystem;




