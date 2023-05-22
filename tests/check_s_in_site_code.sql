select site_code from {{ source('SAP_HANA', 'LOCATION') }}
where LEFT(site_code,1) = 'Z'