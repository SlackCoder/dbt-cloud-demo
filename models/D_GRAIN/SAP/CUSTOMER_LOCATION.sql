With Customer_CC as 
(Select * from {{ ref('stg_SAP_CUSTOMER_CC')}}
),

Location as 
(Select * from {{ ref('stg_SAP_LOCATION')}}
)

Select * FROM
(
    Select customer_number,
            domiciled_site,
            site_name
            FROM Customer_CC AS A
            Left Outer join Location AS B
            ON A.domiciled_site = B.site_code
)