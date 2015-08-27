- view: inventories
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: count_on_hand
    type: int
    sql: ${TABLE}.count_on_hand

  - dimension: count_pending_from_supplier
    type: int
    sql: ${TABLE}.count_pending_from_supplier

  - dimension: count_pending_to_customer
    type: int
    sql: ${TABLE}.count_pending_to_customer

  - measure: count
    type: count
    drill_fields: [id]

