-- Include table data insertion, updation, deletion and select scripts
-- -------------------------------------------------------

-- Adding Menu Mtem in menu item table
-- -----------------------------------
insert into menu_item
values
	(1, 'Sandwich', 99.00, 'Yes', '2017-03-15','Main Course', 'Yes'),
	(2, 'Burger', 129.00, 'Yes', '2017-12-23','Main Course','Yes'),
	(3, 'Pizza', 149.00,  'Yes','2018-08-21','Main Course', 'No'),
	(4, 'Frinch Fries', 57.00, 'No', '2017-07-02','Main Course',  'Yes'),
	(5, 'Chocolate Brownie', 32.0,  'Yes', '2022-11-02','Main Course', 'Yes');

select * from menu_item;
-- -------------------------------------------------------
-- Updating menu item in menu item table------------------
-- -------------------------------------------------------

update menu_item
set me_name='pani puri',me_price=30,me_active='yes',me_date_of_launch='2018-09-07',me_category='main course',me_free_delivery='yes'
where me_id=2;
-- -------------------------------------------------------
-- user details in user table------------------
-- -------------------------------------------------------

insert into user(us_id,us_name)
values
(1,'maddy'),(2,'priya');
select * from user;

 -- -------------------------------------------------------
-- menu item table------------------
-- -------------------------------------------------------

 select me_name,me_price,me_category,me_free_delivery
 from menu_item
 where me_active='yes'
 and me_date_of_launch<(select(current_date()));
 -- -------------------------------------------------------
-- adding cart item in cart table------------------
-- -------------------------------------------------------
insert into cart(ct_id,ct_us_id,ct_pr_id)
values
	(101,1,3),(102,1,4);

 select * from cart;
 -- -------------------------------------------------------
-- -------view cart------------------
-- -------------------------------------------------------
 select me_name,me_price,me_free_delivery
 from menu_item
 inner join cart 
 on ct_pr_id=me_id
 where ct_us_id=1;
 
 select sum(me_price) as "total_price"
 from menu_item
 inner join cart
 on ct_pr_id=me_id
 where ct_us_id=1;
  -- -------------------------------------------------------
-- -------remove item from cart------------------
-- -------------------------------------------------------
 delete from cart
 where  ct_us_id=1 
 and ct_pr_id=3;
  -- -------------------------------------------------------
-- -------after deleting from the cart------------------
-- -------------------------------------------------------
 
 select * from cart;
 
 