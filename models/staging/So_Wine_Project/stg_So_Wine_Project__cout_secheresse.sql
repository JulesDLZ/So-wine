with 

source as (

    select * from {{ source('So_Wine_Project', 'cout_secheresse') }}

),

renamed as (

    select
        annee,
        cout_secheresse_geotechnique_en_million

    from source

)

select * from renamed
