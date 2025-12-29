 
select item_purchased,ROUND(AVG(review_rating),2) as "aa"
from table_name_in_mysql
group by item_purchased
order by aa desc
limit 5;

select gender,SUM(purchase_amount) as r
from table_name_in_mysql
group by gender;

select customer_id,purchase_amount
from table_name_in_mysql
where promo_code_used='Yes' and purchase_amount>=(select AVG(purchase_amount) from table_name_in_mysql);

with customer_type as(
select customer_id,previous_purchases,
CASE
   WHEN previous_purchases=1 THEN 'new'
   WHEN previous_purchases BETWEEN 2 AND 10 THEN 'REURNING'
   ELSE 'REGUSLAR'
   END AS customer_segment
from table_name_in_mysql
)
select customer_segment,count(*)
from customer_type
group by customer_segment;

select subscription_status,
 sum(customer_id) as a,
 avg(purchase_amount) as b,
 sum(purchase_amount) as c
 from table_name_in_mysql
 group by subscription_status
 order by b,c desc;
 
SELECT 
    item_purchased,
    ROUND(100 * SUM(CASE WHEN promo_code_used = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS d
FROM table_name_in_mysql
GROUP BY item_purchased
ORDER BY d
LIMIT 5;
 
 select age_group,SUM(purchase_amount) as a
 from table_name_in_mysql
 group by age_group
 order by a desc;
 
 select subscription_status,
 count(customer_id)
 from table_name_in_mysql
 where previous_purchases > 5
 group by subscription_status;
 
