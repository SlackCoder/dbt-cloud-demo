

with source as (

    select * from {{ source('SAP_HANA', 'VENDOR') }}

),

renamed as (

    select
        source_system,
        vendor_number,
        vendor_number_trimmed,
        vendor_name1,
        vendor_name2,
        nominated_vendor_number,
        nominated_vendor_name,
        nominated_vendor_srcsys,
        nominated_vendor_flag,
        abn,
        creation_date,
        deletion_flag,
        gst_liability_flag,
        posting_block_code,
        purchasing_block_code,
        vendor_account_group_code,
        vendor_account_group_desc,
        trading_partner_company_id,
        address_line1,
        address_line2,
        postcode,
        city,
        state,
        po_box,
        po_box_postcode,
        full_address_map,
        telephone1,
        telephone2,
        fax,
        email,
        country_code,
        vendor_sort_field,
        vendor_industry,
        vendor_industry_desc,
        group_key,
        transportation_zone_code,
        customer_number,
        district,
        created_by,
        nominated_vendor_number_trimmed,
        update_time

    from source

)

select * from renamed
