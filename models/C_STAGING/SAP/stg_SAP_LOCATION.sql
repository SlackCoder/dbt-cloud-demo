<<<<<<< HEAD


=======
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
with source as (

    select * from {{ source('SAP_HANA', 'LOCATION') }}

),

renamed as (

    select
        source_system,
        site_code,
        val_area,
        site_name,
        address_line1,
        address_suburb,
        address_state,
        address_postcode,
        address_country_code,
        full_address,
        full_address_map,
        cost_centre,
        profit_centre,
        profit_centre_desc,
        mgt_group_code,
        mgt_group_name,
        region_code,
        region_name,
        division_code,
        division_name,
        sales_district,
        site_purch_org,
        site_sales_org,
        site_tel_number,
        site_company_code,
        update_time

    from source

)

select * from renamed
