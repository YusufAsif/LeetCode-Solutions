select v.customer_id, Count(customer_id ) as
count_no_trans
from Visits v
left Join Transactions t
on v.visit_id = t.visit_id 
where t.transaction_id is Null
group by v.customer_id