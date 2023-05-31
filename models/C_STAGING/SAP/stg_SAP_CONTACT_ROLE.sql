<<<<<<< HEAD


=======
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
with source as (

    select * from {{ source('SAP_HANA', 'CONTACT_ROLE') }}

),

renamed as (

    select
        source_system,
        contact_partner,
        customer_number,
        person_number,
        department_code,
        department,
        func_code,
        func,
        update_time

    from source

)

<<<<<<< HEAD
select * from renamed
=======
select * from renamed
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
