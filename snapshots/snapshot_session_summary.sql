{% snapshot snapshot_session_summary %}
{{ config(
    target_database='USER_DB_MONGOOSE',
    target_schema='SNAPSHOTS',
    unique_key='"session_id"',
    strategy='timestamp',
    updated_at='"created_at"'
) }}

select * from {{ ref('session_summary') }}

{% endsnapshot %}
