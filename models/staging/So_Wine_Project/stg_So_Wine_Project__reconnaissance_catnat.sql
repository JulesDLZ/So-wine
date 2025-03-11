with 

source as (

    select * from {{ source('So_Wine_Project', 'reconnaissance_catnat') }}

),

renamed as (

    select
        peril,
        nombre_de_reconnaissances_etat_de_catastrophe_naturelle

    from source

)

select * from renamed
