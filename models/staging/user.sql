select 
    pu.id, 
    pu.user_id, 
    pu.username, 
    pu.gender, 
    pu.employment, 
    pu.credit_card, 
    pu.subscription
from workshop.mongodb_user as pu