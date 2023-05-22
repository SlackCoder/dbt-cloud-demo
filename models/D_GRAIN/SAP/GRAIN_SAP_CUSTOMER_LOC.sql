with Cust as (
select *FROM {{ ref('stg_SAP_CUSTOMER_CC') }}),

LOCATION as
(
    select *FROM {{ ref('stg_SAP_LOCATION') }}
),

CUST_LOC as 
(
    select 
        customer_number,
        domiciled_site,
        site_name
    from Cust c 
    LEFT OUTER JOIN LOCATION L 
    on c.domiciled_site = L.site_code
)

select *from CUST_LOC