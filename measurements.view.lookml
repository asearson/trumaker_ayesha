- view: measurements
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: confirmed
    type: yesno
    sql: ${TABLE}.confirmed

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: dimension_id
    type: int
    sql: ${TABLE}.dimension_id

  - dimension: measurement_section_id
    type: int
    # hidden: true
    sql: ${TABLE}.measurement_section_id

  - dimension: note
    sql: ${TABLE}.note

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: updated_by
    type: int
    sql: ${TABLE}.updated_by

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - measurement_sections.xml_name
    - measurement_sections.id
    - measurement_sections.name
    - users.id
    - users.first_name
    - users.last_name
    - users.nickname

