- view: customizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: blurb
    sql: ${TABLE}.blurb

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: custom_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.custom_type_id

  - dimension: description
    sql: ${TABLE}.description

  - dimension: fit_id
    type: int
    # hidden: true
    sql: ${TABLE}.fit_id

  - dimension: identifing_name
    sql: ${TABLE}.identifing_name

  - dimension: name
    sql: ${TABLE}.name

  - dimension: option_name
    sql: ${TABLE}.option_name

  - dimension: order_name
    sql: ${TABLE}.order_name

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: product_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.product_type_id

  - dimension: sku
    sql: ${TABLE}.sku

  - dimension: sku_code
    sql: ${TABLE}.sku_code

  - dimension: tal_name
    sql: ${TABLE}.tal_name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - identifing_name
    - tal_name
    - order_name
    - option_name
    - name
    - product_types.name
    - product_types.id
    - fits.id
    - fits.name
    - custom_types.xml_name
    - custom_types.name
    - custom_types.id
    - cart_items.count
    - order_item_customizations.count
    - user_customizations.count
    - variant_customizations.count

