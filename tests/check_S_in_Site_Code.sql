Select site_code from {{ source('SAP_HANA', 'LOCATION') }}
where Left(site_code,1) = 'Z' 