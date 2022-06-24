select * 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.year_name, av.time_dim.month_name, av.sales_fact.sales, av.sales_fact.units, 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.year_name, av.time_dim.month_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select * 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_name, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.month_id;

select av.time_dim.month_name, av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_name,av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id;

select av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
where rownum >= 5;

select av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
where rownum <= 5;

select av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
where rownum <= 5 
order by av.sales_fact.sales desc;

select av.time_dim.year_id, av.time_dim.month_long_name, av.sales_fact.sales, av.sales_fact.units 
from av.sales_fact 
right join av.time_dim on av.sales_fact.month_id = av.sales_fact.month_id 
order by av.sales_fact.sales desc;

select av.time_dim.month_long_name, round(avg(av.sales_fact.sales), 0) as SalesAvg, round(avg(av.sales_fact.units)) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by av.time_dim.month_long_name desc;

select av.time_dim.month_long_name, sum(av.sales_fact.sales) as SalesAvg, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by av.time_dim.month_long_name desc;

select av.time_dim.month_long_name, sum(av.sales_fact.sales) as SalesAvg, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by av.time_dim.month_long_name desc;

select av.time_dim.month_long_name, sum(av.sales_fact.sales) as SalesTotal, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by SalesTotal desc;

select av.time_dim.month_long_name,sum(av.sales_fact.sales) as SalesTotal, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by SalesTotal desc;

select av.time_dim.month_long_name,sum(av.sales_fact.sales) as SalesTotal, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.month_long_name  
order by SalesTotal desc;

select av.time_dim.year_id,sum(av.sales_fact.sales) as SalesTotal, sum(av.sales_fact.units) as UnitTotal  
from av.sales_fact  
left join av.time_dim on av.sales_fact.month_id = av.time_dim.month_id  
group by av.time_dim.year_id  
order by SalesTotal desc;

