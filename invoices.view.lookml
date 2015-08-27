- view: invoices
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: amount_refunded
    type: number
    sql: ${TABLE}.amount_refunded

  - dimension: card_token
    sql: ${TABLE}.card_token

  - dimension: charge_token
    sql: ${TABLE}.charge_token

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: credited_amount
    type: number
    sql: ${TABLE}.credited_amount

  - dimension: customer_token
    sql: ${TABLE}.customer_token

  - dimension: invoice_type
    sql: ${TABLE}.invoice_type

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: token_amount
    type: int
    sql: ${TABLE}.token_amount

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, orders.id, payments.count, stylist_ledgers.count]

