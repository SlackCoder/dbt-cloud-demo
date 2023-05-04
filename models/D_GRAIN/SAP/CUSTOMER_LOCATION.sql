With customer_cc as
(
    Select * FROM {{ ref('stg_SAP_CUSTOMER_CC') }}
),

LOCATION AS 
(
    Select * from {{ ref('stg_SAP_LOCATION') }}
)

Select *
FROM
(
    Select customer_number,
           domiciled_site,
           site_name
        FROM customer_cc AS A
        LEFT OUTER JOIN LOCATION AS B
        ON A.domiciled_site =B.site_code
)