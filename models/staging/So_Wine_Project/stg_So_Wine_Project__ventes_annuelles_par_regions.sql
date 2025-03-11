with 

source as (

    select * from {{ source('So_Wine_Project', 'ventes_annuelles_par_regions') }}

),

renamed as (

    select
        annee,
        region,
        volume,
        valeur

    from source

)

select * from renamed
