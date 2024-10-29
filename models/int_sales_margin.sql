select
 *
 ,ROUND((quantity * purchase_price),2) AS purchase_cost
 ,ROUND((revenue - purchase_price),2) AS margin 
from {{ref("stg_raw__sales")}}
INNER JOIN {{ref("stg_raw__products")}}
USING (products_id)
