with 

source as (

    select * from {{ source('So_Wine_Project', 'recensement_pays_europe') }}

),

renamed as (

    select
        pays,
        inondations,
        cyclones_et_tempetes,
        seismes,
        feux_de_foret,
        glissements_et_mouvements_de_terrain,
        autres,
        ensemble,
        part_percentage,
        part_des_inondations_pour_chaque_pays_percentage

    from source

)

select * from renamed
