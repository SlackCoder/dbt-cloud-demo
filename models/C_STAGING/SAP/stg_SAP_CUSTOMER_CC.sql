

with source as (

    select * from {{ source('SAP_HANA', 'CUSTOMER_CC') }}

),

renamed as (

    select
        source_system,
        customer_number,
        company_code,
        deletion_flag_cc,
        posting_block_cc,
        reconciliation_account,
        reconciliation_account_desc,
        domiciled_site,
        livestock_indicator,
        interest_calc_ind,
        interest_calc_desc,
        intercompany_ind,
        finance_ind,
        prepay_ind,
        li_ind,
        legal_ind,
        customer_type,
        acc_number_at_customer,
        natl_ls_ind,
        credit_control_area,
        independents_division,
        independents_region,
        independents_region_desc,
        last_transaction_date,
        credit_limit,
        risk_rating,
        customer_classification,
        customer_classf_desc,
        update_time,
        naspay_status,
        naspay_status_desc,
        naspay_tc_cc

    from source

)

select * from renamed
