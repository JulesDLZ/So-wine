with 

source as (

    select * from {{ source('So_Wine_Project', 'ventes_annuelles_par_couleurs') }}

),

renamed as (

    select
        annees,
        volume,
        valeur,
        couleurs

    from source

)

select * from renamed
