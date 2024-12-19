with orders as (
    select month(order_date) as mes, year(order_date) as ano, freight as total_frete
    from {{ref("stg_orders")}}
),

vendas as (
    select mes, ano, sum(total_frete) as total_frete
    from orders
    group by mes, ano
)

select *
from vendas