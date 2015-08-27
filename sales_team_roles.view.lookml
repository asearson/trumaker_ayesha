- view: sales_team_roles
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: hierarchy
    sql: ${TABLE}.hierarchy

  - dimension: level
    type: int
    sql: ${TABLE}.level

  - dimension: name
    sql: ${TABLE}.name

  - dimension: system_name
    sql: ${TABLE}.system_name

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - system_name
    - name
    - attributed_commission_rates.count
    - attributions.count
    - sales_teams.count

