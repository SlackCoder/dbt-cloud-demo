with 
    customer_cc as (
    select * from {{ ref('stg_SAP_CUSTOMER_CC') }}
    ),
location as(
    select * from {{ ref('stg_SAP_LOCATION') }}
)

select * from (
    select customer_number,
    domiciled_site,
    site_name
    from customer_cc as a
    left outer join location as b
    where a.domiciled_site = b.site_code
)