with 

source as (

    select * from {{ source('So_Wine_Project', 'ventes_par_categorie') }}

),

renamed as (

    select
        annee,
        volume,
        valeur,
        cat_vin

    from source

)

select * from renamed
