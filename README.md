# dbt + Snowflake: Session Project

This project demonstrates how to build, test, and snapshot analytical models using **dbt (Data Build Tool)** on **Snowflake**.  
It was developed as part of a data engineering assignment to model user sessions and timestamps into a unified analytics layer.

---

## Project Overview

The dbt project connects to a Snowflake warehouse and performs the following:

1. **Extracts input data** from raw Snowflake tables:
   - `RAW.USER_SESSION_CHANNEL`
   - `RAW.SESSION_TIMESTAMP`
2. **Transforms** and standardizes data into dbt models:
   - `user_session_channel`
   - `session_timestamp`
3. **Joins** both inputs to create a consolidated `session_summary` output view.
4. **Applies data quality tests** (uniqueness, non-null checks).
5. **Captures versioned snapshots** for historical analysis.

---

## Project Structure
session_project/
├── dbt_project.yml
├── models/
│   ├── input/
│   │   ├── user_session_channel.sql
│   │   └── session_timestamp.sql
│   ├── output/
│   │   └── session_summary.sql
│   └── schema.yml
├── snapshots/
│   └── snapshot_session_summary.sql
└── target/

---

## Configuration

### `profiles.yml` (local)
Located in `~/.dbt/profiles.yml`:
