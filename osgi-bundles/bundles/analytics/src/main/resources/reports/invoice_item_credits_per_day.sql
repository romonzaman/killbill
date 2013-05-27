create or replace view v_invoice_item_credits_per_day as
select
  currency as pivot
, date_format(created_date, '%Y-%m-%d') as day
, sum(amount) as count
from biic
where report_group = 'default'
group by 1, 2
order by 1, 2 asc
;
