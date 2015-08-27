- view: fabrics
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: code
    sql: ${TABLE}.code

  - dimension: color_id
    type: int
    # hidden: true
    sql: ${TABLE}.color_id

  - dimension: content
    sql: ${TABLE}.content

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: fab_px
    sql: ${TABLE}.fab_px

  - dimension: finish
    sql: ${TABLE}.finish

  - dimension: name
    sql: ${TABLE}.name

  - dimension: num
    type: int
    sql: ${TABLE}.num

  - dimension: number
    sql: ${TABLE}.number

  - dimension: options
    sql: ${TABLE}.options

  - dimension: product_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.product_type_id

  - dimension: remake_percent_rate
    type: number
    sql: ${TABLE}.remake_percent_rate

  - dimension: supplier_id
    type: int
    # hidden: true
    sql: ${TABLE}.supplier_id

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: weight
    sql: ${TABLE}.weight

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - colors.id
    - colors.name
    - product_types.name
    - product_types.id
    - suppliers.id
    - suppliers.name
    - colors.count
    - variants.count

