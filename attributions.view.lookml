- view: attributions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: active
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.active_at

  - dimension: agent_id
    type: int
    sql: ${TABLE}.agent_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expires_at

  - dimension: sales_team_role_id
    type: int
    # hidden: true
    sql: ${TABLE}.sales_team_role_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, sales_team_roles.system_name, sales_team_roles.id, sales_team_roles.name]

