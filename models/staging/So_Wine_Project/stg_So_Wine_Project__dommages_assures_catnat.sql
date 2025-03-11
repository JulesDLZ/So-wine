with 

source as (

    select * from {{ source('So_Wine_Project', 'dommages_assures_catnat') }}

),

renamed as (

    select
        annee,
        inondations,
        secheresse,
        autres

    from source

)

select * from renamed
