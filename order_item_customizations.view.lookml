- view: order_item_customizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: customization_id
    type: int
    # hidden: true
    sql: ${TABLE}.customization_id

  - dimension: order_item_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_item_id

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - customizations.identifing_name
    - customizations.tal_name
    - customizations.order_name
    - customizations.option_name
    - customizations.id
    - customizations.name
    - order_items.factory_name
    - order_items.id

