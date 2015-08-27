- view: variant_customizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: customization_id
    type: int
    # hidden: true
    sql: ${TABLE}.customization_id

  - dimension: default
    type: yesno
    sql: ${TABLE}."default"

  - dimension: value
    sql: ${TABLE}.value

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
    - customizations.identifing_name
    - customizations.tal_name
    - customizations.order_name
    - customizations.option_name
    - customizations.id
    - customizations.name
    - variants.id
    - variants.name

