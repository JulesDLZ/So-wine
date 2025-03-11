with 

source as (

    select * from {{ source('So_Wine_Project', 'Consommation_globale_par_habitant') }}

),

renamed as (

    select
        annee,
        population_totale,
        population_plus_de_15_ans,
        consommation_totale,
        consommation_par_habitant,
        consommation_par_habitant_de_plus_de_15_ans

    from source

)

select * from renamed
