with source as (

    select * from {{ source('SAP_HANA', 'COMPANY') }}

),

renamed as (

    select
        source_system,
        source_system||'-'||company_code,
        company_code,
        company_code_desc,
        chart_of_accounts,
        fiscal_year_variant,
        currency,
        credit_control_area,
        update_time

    from source

)

select * from renamed
