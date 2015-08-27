- view: variants
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: color_id
    type: int
    # hidden: true
    sql: ${TABLE}.color_id

  - dimension: commissionable_value
    type: number
    sql: ${TABLE}.commissionable_value

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customizable
    type: yesno
    sql: ${TABLE}.customizable

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: fabric_id
    type: int
    # hidden: true
    sql: ${TABLE}.fabric_id

  - dimension: inventory_id
    type: int
    sql: ${TABLE}.inventory_id

  - dimension: low_stock_num
    type: int
    sql: ${TABLE}.low_stock_num

  - dimension: master
    type: yesno
    sql: ${TABLE}.master

  - dimension: name
    sql: ${TABLE}.name

  - dimension: no_stock_num
    type: int
    sql: ${TABLE}.no_stock_num

  - dimension: out_of_stock_num
    type: int
    sql: ${TABLE}.out_of_stock_num

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: primary
    type: yesno
    sql: ${TABLE}."primary"

  - dimension: product_id
    type: int
    # hidden: true
    sql: ${TABLE}.product_id

  - dimension: remake_percent_rate
    type: number
    sql: ${TABLE}.remake_percent_rate

  - dimension: returns
    type: int
    sql: ${TABLE}.returns

  - dimension: size_id
    type: int
    # hidden: true
    sql: ${TABLE}.size_id

  - dimension: sku
    sql: ${TABLE}.sku

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
    - name
    - fabrics.id
    - fabrics.name
    - colors.id
    - colors.name
    - sizes.id
    - sizes.name
    - products.id
    - products.name
    - cart_items.count
    - order_items.count
    - outfit_variants.count
    - purchase_order_variants.count
    - variant_customizations.count
    - variant_properties.count
    - variant_suppliers.count

