- view: user_customizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: custom_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.custom_type_id

  - dimension: customization_id
    type: int
    # hidden: true
    sql: ${TABLE}.customization_id

  - dimension: default
    sql: ${TABLE}."default"

  - dimension: state
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - customizations.identifing_name
    - customizations.tal_name
    - customizations.order_name
    - customizations.option_name
    - customizations.id
    - customizations.name
    - users.id
    - users.first_name
    - users.last_name
    - users.nickname
    - custom_types.xml_name
    - custom_types.name
    - custom_types.id

