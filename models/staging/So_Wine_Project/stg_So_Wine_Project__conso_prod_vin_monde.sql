with 

source as (

    select * from {{ source('So_Wine_Project', 'conso_prod_vin_monde') }}

),

renamed as (

    select
        continent,
        region_country,
        product,
        variable,
        year,
        unit,
        quantity

    from source

)

select * from renamed
