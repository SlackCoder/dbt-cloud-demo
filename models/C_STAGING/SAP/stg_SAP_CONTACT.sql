<<<<<<< HEAD


=======
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
with source as (

    select * from {{ source('SAP_HANA', 'CONTACT') }}

),

renamed as (

    select
        source_system,
        customer_number,
        person_number,
        title,
        name_first,
        name_last,
        name_text,
        pers_type,
        default_comm,
        tel_number,
        fax_number,
        email,
        update_time

    from source

)

<<<<<<< HEAD
select * from renamed
=======
select * from renamed
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
