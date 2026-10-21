select DISTINCT amount 
from cloud_costs
where amount IS NOT NULL
order by amount DESC
LIMIT(3);
