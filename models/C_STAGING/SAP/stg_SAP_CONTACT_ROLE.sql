

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

select * from renamed