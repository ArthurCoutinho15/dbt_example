with source as (
      select * from {{ source('commodities', 'commodities') }}
),
renamed as (
    select
        {{ adapter.quote("Date") }},
        {{ adapter.quote("Close") }},
        {{ adapter.quote("simbolo") }}

    from source
)
select * from renamed
  