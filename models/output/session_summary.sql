with joined as (
    select
        c."user_id",
        c."session_id",
        c."channel",
        t."created_at"
    from {{ ref('user_session_channel') }} c
    join {{ ref('session_timestamp') }} t
        on c."session_id" = t."session_id"
)
select
    "user_id",
    "session_id",
    "channel",
    "created_at"
from joined
