with 

source as (

    select * from {{ source('gz_raw_data', 'navire_brut_gwz') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
       CAST(ship_cost AS INTEGER)

    from source

)

select * from renamed
