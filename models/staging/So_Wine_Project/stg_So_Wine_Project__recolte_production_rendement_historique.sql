with 

source as (

    select * from {{ source('So_Wine_Project', 'recolte_production_rendement_historique') }}

),

renamed as (

    select
        ann__e,
        niveau,
        region,
        segment,
        couleur_produit,
        mode_de_vinification,
        nombre_d_exploitations,
        recolte_de_raisins__en_hl_,
        production_vins_commercialsalisables__en_hl_,
        superficie_en_production__en_ha_,
        rendement_en_prodcution__en_hl_ha_

    from source

)

select * from renamed
