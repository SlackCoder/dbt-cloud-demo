{{
    config(
        materialized='view'
    )
}}
    

with 


 stg_M360_JSON_DATA  as (

    select
        CLIENTID                                            as CLIENTID,
        FILE_DATA_STRING                                    as FILE_DATA_STRING,
        UPDATE_TIME	                                        as UPDATE_TIME,
        FILENAME                                            as FILENAME,
        FILE_LOCATION	                                    as FILE_LOCATION,
        LINE_M360_ID	                                    as LINE_M360_ID,
        LINE_M360_MD5_ID                                    as LINE_M360_MD5_ID

    from {{ source('M360', 'M360_DATA') }}
--    where UPDATE_TIME > dateadd(day, -3, CURRENT_DATE)


)

select * from  stg_M360_JSON_DATA  