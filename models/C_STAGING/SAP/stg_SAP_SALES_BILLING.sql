with
    source as (select * from {{ source("SAP_HANA", "SALES_BILLING") }}),

    renamed as (

        select

            source_system,

            bill_doc,

            bill_item,

            so_doc,

            so_item,

            posting_date,

            bill_cat,

            bill_type,

            bill_type_desc,

            so_type,

            so_type_desc,

            pricing_proc,

            pricing_proc_desc,

            sold_to,

            payer,

            material,

            plant,

            comp_code,

            sales_org,

            dist_channel,

            profit_center,

            profit_center_desc,

            sales_division,

            sales_channel_desc,

            sales_grp,

            sales_grp_desc,

            sales_office,

            sales_office_desc,

            cus_sales_office,

            cus_sales_office_desc,

            pay_term,

            pay_term_desc,

            storage_loc,

            item_cat,

            local_currency,

            doc_currency,

            sales_uom,

            base_uom,

            wt_uom,

            basic_uom,

            reverse_posting_indicator,

            time_date_sql,

            time_year,

            time_quarter,

            time_month,

            time_day,

            time_calmonth,

            org_dist_channel,

            org_division_desc,

            org_sales_org_desc,

            org_comp_code_desc,

            vend_vendor,

            inv_sales_qty,

            inv_base_qty,

            inv_basic_qty,

            revenue_lc_val,

            cost_of_sales_lc_val,

            bac_margin_lc_val,

            margin_lc_val,

            cost_lc_val,

            bac_lc_val,

            rebate_lc_val,

            freight_lc_val,

            turnover_lc_val,

            revenue_dc_val,

            cost_of_sales_dc_val,

            bac_margin_dc_val,

            margin_dc_val,

            cost_dc_val,

            bac_dc_val,

            rebate_dc_val,

            freight_dc_val,

            turnover_dc_val,

            exch_rate_factor,

            net_wt,

            onesteel_direct_sales,

            update_time

        from source

    )

select *
from renamed
