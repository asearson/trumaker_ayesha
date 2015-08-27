- view: order_calculation_revisions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: admin_id
    type: int
    sql: ${TABLE}.admin_id

  - dimension: commissionable_amount
    type: number
    sql: ${TABLE}.commissionable_amount

  - dimension: coupon_discount
    type: number
    sql: ${TABLE}.coupon_discount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_total
    type: number
    sql: ${TABLE}.customer_total

  - dimension: deal_discount
    type: number
    sql: ${TABLE}.deal_discount

  - dimension: merchandise_total
    type: number
    sql: ${TABLE}.merchandise_total

  - dimension: note
    sql: ${TABLE}.note

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension: sales_amount
    type: number
    sql: ${TABLE}.sales_amount

  - dimension: taxable_total
    type: number
    sql: ${TABLE}.taxable_total

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, orders.id]

