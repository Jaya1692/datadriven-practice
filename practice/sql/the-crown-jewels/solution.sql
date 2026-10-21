select p.product_id, p.product_name,
 sum(t.total_amount) AS total_revenue
from transactions t
JOIN products p on p.product_id = t.product_id
group by p.product_id, p.product_name
ORDER BY total_revenue desc
LIMIT(5);
