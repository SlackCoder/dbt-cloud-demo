with source as (

    select * from {{ source('SAP_HANA', 'CUSTOMER') }}

),

renamed as (

    select
        source_system,
        customer_number,
        customer_name1,
        customer_name2,
        nominated_customer_number,
        nominated_customer_name,
        nominated_customer_srcsys,
        nominated_customer_flag,
        abn,
        creation_date,
        deletion_flag,
        gst_liability_flag,
        sales_block_code,
        posting_block_code,
        order_block_code,
        order_block_desc,
        delivery_block_code,
        delivery_block_desc,
        billing_block_code,
        billing_block_desc,
        customer_account_group_code,
        customer_account_group_desc,
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
        customer_sort_field,
        customer_industry,
        customer_industry_desc,
        group_key,
        transportation_zone_code,
        transportation_zone_desc,
        customer_number_trimmed,
        nominated_customer_number_trimmed,
        entity_type,
        anzsic_code,
        update_time,
        uci,
        uci_name,
        uci_l2,
        naspay_eligibility,
        naspay_eligibility_desc,
        naspay_tc,
        uci_type

    from source

)

<<<<<<< HEAD
select * from renamed
=======
select * from renamed

>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
