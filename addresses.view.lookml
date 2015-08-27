- view: addresses
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: addressable_id
    type: int
    sql: ${TABLE}.addressable_id

  - dimension: addressable_type
    sql: ${TABLE}.addressable_type

  - dimension: billing_default
    type: yesno
    sql: ${TABLE}.billing_default

  - dimension: business
    type: yesno
    sql: ${TABLE}.business

  - dimension: city
    sql: ${TABLE}.city

  - dimension: company_name
    sql: ${TABLE}.company_name

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default
    type: yesno
    sql: ${TABLE}."default"

  - dimension: name
    sql: ${TABLE}.name

  - dimension: nickname
    sql: ${TABLE}.nickname

  - dimension: state_id
    type: int
    # hidden: true
    sql: ${TABLE}.state_id

  - dimension: state_name
    sql: ${TABLE}.state_name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zip_code
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - company_name
    - nickname
    - state_name
    - states.id
    - states.name

