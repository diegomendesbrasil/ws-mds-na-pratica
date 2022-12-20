with users as (

    select * from {{ ref('cleansed_user') }}

),

payments as (

    select * from {{ ref('cleansed_payments') }}

),

    credit_card_usage_per_country as (

        select ps.country, ps.currency, ps.credit_card_type, count(*) as amount
        from users as pu
        inner join payments as ps using(user_id)
        group by ps.country, ps.currency, ps.credit_card_type
    )

select *
from credit_card_usage_per_country