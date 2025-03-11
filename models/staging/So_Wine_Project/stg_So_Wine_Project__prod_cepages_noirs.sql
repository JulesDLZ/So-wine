with 

source as (

    select * from {{ source('So_Wine_Project', 'prod_cepages_noirs') }}

),

renamed as (

    select
        region,
        couleur,
        annee,
        cepage,
        hectare

    from source

)

select * from renamed
