with source as (
    select * from raw.user_session_channel
)
select
    USERID    as "user_id",
    SESSIONID as "session_id",
    CHANNEL   as "channel"
from source
