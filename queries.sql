select count(OrderId) as 总订单量,sum(TotalAmount) as 总销售额
from first_db.amazon_sales ;
select sum(TotalAmount) as 总销售额,date_format(OrderDate,'%Y-%m') as 月份
from first_db.amazon_sales
group by date_format(OrderDate,'%Y-%m') 
order by 月份;
select Category as 商品品类,sum(TotalAmount) as 总销售额
from first_db.amazon_sales
group by Category
order by 总销售额 desc 
limit 3;
select City as 城市,sum(TotalAmount)/count(OrderId) as 客单价
from first_db.amazon_sales
group by City 
order by 客单价 desc
limit 1;
