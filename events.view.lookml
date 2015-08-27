- view: events
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: actor_id
    type: int
    sql: ${TABLE}.actor_id

  - dimension: actor_type
    type: int
    sql: ${TABLE}.actor_type

  - dimension: category
    type: int
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: event_type
    sql: ${TABLE}.event_type

  - dimension: eventable_id
    type: int
    sql: ${TABLE}.eventable_id

  - dimension: eventable_type
    sql: ${TABLE}.eventable_type

  - dimension: identifier
    sql: ${TABLE}.identifier

  - dimension: level
    type: int
    sql: ${TABLE}.level

  - dimension: meta
    sql: ${TABLE}.meta

  - dimension: text
    sql: ${TABLE}.text

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

