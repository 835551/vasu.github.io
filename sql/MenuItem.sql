
-- -------------------------------------------------------
-- Updating menu item in menu item table------------------
-- -------------------------------------------------------
update menu_item
set me_name='pani puri',me_price=30,me_active='yes',me_date_of_launch='2018-09-07',me_category='main course',me_free_delivery='yes'
where me_id=2;
-- -------------------------------------------------------
-- adding cart item in cart table------------------
-- -------------------------------------------------------
insert into user(us_name)
values
('maddy'),('priya');
select * from user;
delete from user 
where us_name='priya'and us_id=10;
 -- -------------------------------------------------------
-- menu item table------------------
-- -------------------------------------------------------
 select me_name,me_price,me_category,me_free_delivery
 from menu_item
 where me_active='yes'and me_date_of_launch<(select(current_date()));