- view: shipments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: address_id
    type: int
    sql: ${TABLE}.address_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: include_in_batch
    type: yesno
    sql: ${TABLE}.include_in_batch

  - dimension: mark_for_move
    type: yesno
    sql: ${TABLE}.mark_for_move

  - dimension: number
    sql: ${TABLE}.number

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension_group: receiving
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.receiving_at

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.shipped_at

  - dimension: shipping_carrier_rate_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipping_carrier_rate_id

  - dimension: shipping_method_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipping_method_id

  - dimension: signature
    type: yesno
    sql: ${TABLE}.signature

  - dimension: state
    sql: ${TABLE}.state

  - dimension: tracking
    sql: ${TABLE}.tracking

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - shipping_methods.id
    - shipping_methods.name
    - shipping_carrier_rates.easypost_name
    - shipping_carrier_rates.name
    - shipping_carrier_rates.id
    - orders.id
    - order_items.count

