- view: cart_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: cart_id
    type: int
    # hidden: true
    sql: ${TABLE}.cart_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customization_ids
    # hidden: true
    sql: ${TABLE}.customization_ids

  - dimension: fit_id
    type: int
    # hidden: true
    sql: ${TABLE}.fit_id

  - dimension: item_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.item_type_id

  - dimension: monogram_initials
    sql: ${TABLE}.monogram_initials

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: shipping_rate_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipping_rate_id

  - dimension: tax_rate_id
    type: int
    # hidden: true
    sql: ${TABLE}.tax_rate_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: variant_id
    type: int
    # hidden: true
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - carts.id
    - tax_rates.id
    - shipping_rates.id
    - fits.id
    - fits.name
    - variants.id
    - variants.name
    - item_types.id
    - item_types.name
    - customizations.identifing_name
    - customizations.tal_name
    - customizations.order_name
    - customizations.option_name
    - customizations.id
    - customizations.name
    - order_items.count

