{{
    config(
        materialized='view'
    )
}}
    

with 

stg_M360_JSON_DATA as (
  select *,parse_json(FILE_DATA_STRING) as Account from {{ref('stg_M360_JSON_DATA')}}
),


 stg_M360_Policy  as (

    select
        Policy.value:policyNumber::nvarchar(256)                    as policyNumber,
        Policy.value:policyLastModifiedDatetime::datetime           as policyLastModifiedDatetime,
        Policy.value:insuranceClass::nvarchar(256)                  as InsuranceClass,
        Policy.value:policyRenewable::nvarchar(256)                 as policyRenewable,
        Policy.value:policyStatus::nvarchar(256)                    as policyStatus,
        Policy.value:policyVersionCount::number(18,0)               as policyVersionCount,
        Account:clientId::nvarchar(256)                             as clientId,
        Account:clientReference::nvarchar(256)                      as clientReference,
        'M360-' || clientId                                                    as Customer_M360_ID,
        MD5(Customer_M360_ID)                                       as Customer_M360_MD5_ID,
        coalesce(policyNumber, '-')                                 as Policy_M360_ID,
        MD5(Policy_M360_ID)                                               as Policy_M360_MD5_ID,
        stg_M360_JSON_DATA.UPDATE_TIME || '_' || coalesce(policyNumber, '-')           as Policy_Ref_ID,
        MD5(Policy_Ref_ID)                                          as Policy_Ref_MD5_ID,
        stg_M360_JSON_DATA.UPDATE_TIME                              as UPDATE_TIME

    FROM stg_M360_JSON_DATA
    , table(flatten(input =>Account:policies)) Policy


),

MARK_REAL_DIFFS as (

  select
      *,
      coalesce(
          lag(Policy_Ref_MD5_ID) over (partition by Policy_Ref_ID order by UPDATE_TIME desc),
          'first_record'
      ) as previous_grain_id_Raw,
      case
          when Policy_Ref_MD5_ID != previous_grain_id_Raw then true 
          else false
      end as is_real_diff_Raw

  from stg_M360_Policy

),

FILTER_REAL_DIFFS as (

    select *
  
    from MARK_REAL_DIFFS
  
    where is_real_diff_Raw = true

)


--SELECT * FROM FILTER_REAL_DIFFS 
SELECT Account FROM stg_M360_JSON_DATA