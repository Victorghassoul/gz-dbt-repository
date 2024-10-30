SELECT 
 *
, ROUND((margin + shipping_fee - logcost - ship_cost),2) AS Operational_margin
FROM {{ ref('int_sales_margin') }}
INNER JOIN {{ ref('stg_raw__ship') }}
USING(orders_id)