select sb.user_id,
       sb.plan,
       sb.status,
       sb.payment_term,
       sb.payment_method,
       sb.subscription_term
from workshop.mssql_subscriptions as sb