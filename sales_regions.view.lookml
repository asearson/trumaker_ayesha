- view: sales_regions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: is_active
    type: yesno
    sql: ${TABLE}.is_active

  - dimension: manager_id
    type: int
    sql: ${TABLE}.manager_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: state_id
    type: int
    # hidden: true
    sql: ${TABLE}.state_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - states.id
    - states.name
    - leads.count
    - orders.count
    - sales_places.count
    - sales_teams.count
    - users.count

