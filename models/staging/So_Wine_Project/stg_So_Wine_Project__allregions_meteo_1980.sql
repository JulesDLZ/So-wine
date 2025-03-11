with 

source as (

    select * from {{ source('So_Wine_Project', 'allregions_meteo_1980') }}

),

renamed as (

    select
        num_poste,
        nom_usuel,
        lat,
        lon,
        alti,
        aaaamm,
        rr,
        rr_me,
        rrab,
        rrabdat,
        nbjrr10,
        nbjrr30,
        nbjrr50,
        nbjrr100,
        tx,
        tx_me,
        nbjtx0,
        nbjtx30,
        nbjtx35,
        tn,
        tn_me,
        nbjtn5,
        nbjgelee,
        ffm,
        glot,
        dirt,
        nbjneig,
        nbjsolng,
        nbjgrel,
        nbjorag,
        departement,
        region,
        aaaa,
        m

    from source

)

select * from renamed
