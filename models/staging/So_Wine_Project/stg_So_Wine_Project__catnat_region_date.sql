with 

source as (

    select * from {{ source('So_Wine_Project', 'catnat_region_date') }}

),

renamed as (

    select
        departement,
        communes,
        perils,
        date_debut

    from source

)

select * from renamed
