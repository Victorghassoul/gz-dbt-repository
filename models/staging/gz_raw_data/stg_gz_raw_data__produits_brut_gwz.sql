with 

source as (

    select * from {{ source('gz_raw_data', 'produits_brut_gwz') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT)

    from source

)

select * from renamed
