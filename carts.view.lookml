- view: carts
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id

  - dimension: deprecated_billing_address_id
    type: int
    sql: ${TABLE}.deprecated_billing_address_id

  - dimension: outfitter_id
    type: int
    sql: ${TABLE}.outfitter_id

  - dimension: shipping_address_id
    type: int
    sql: ${TABLE}.shipping_address_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, cart_items.count, orders.count]

