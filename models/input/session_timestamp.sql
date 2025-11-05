with source as (
    select * from raw.session_timestamp
)
select
    SESSIONID as "session_id",
    TS        as "created_at"
from source
