- view: products
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension_group: available
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.available_at

  - dimension: cached_tag_list
    sql: ${TABLE}.cached_tag_list

  - dimension: category
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: description_markup
    sql: ${TABLE}.description_markup

  - dimension_group: dropped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dropped_at

  - dimension: featured
    type: yesno
    sql: ${TABLE}.featured

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: list_order
    type: int
    sql: ${TABLE}.list_order

  - dimension: meta_description
    sql: ${TABLE}.meta_description

  - dimension: meta_keywords
    sql: ${TABLE}.meta_keywords

  - dimension: name
    sql: ${TABLE}.name

  - dimension: occasion
    sql: ${TABLE}.occasion

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: price_point
    type: int
    sql: ${TABLE}.price_point

  - dimension: product_keywords
    sql: ${TABLE}.product_keywords

  - dimension: product_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.product_type_id

  - dimension: prototype_id
    type: int
    # hidden: true
    sql: ${TABLE}.prototype_id

  - dimension_group: released
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.released_at

  - dimension: remake_percent_rate
    type: number
    sql: ${TABLE}.remake_percent_rate

  - dimension: season
    sql: ${TABLE}.season

  - dimension: shipping_category_id
    type: int
    sql: ${TABLE}.shipping_category_id

  - dimension: status
    sql: ${TABLE}.status

  - dimension: tagline
    sql: ${TABLE}.tagline

  - dimension: tagline_markup
    sql: ${TABLE}.tagline_markup

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension: total_remade
    type: int
    sql: ${TABLE}.total_remade

  - dimension: total_returned
    type: int
    sql: ${TABLE}.total_returned

  - dimension: total_sold
    type: int
    sql: ${TABLE}.total_sold

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: variants_count
    type: int
    sql: ${TABLE}.variants_count

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - product_types.name
    - product_types.id
    - prototypes.name
    - prototypes.id
    - product_properties.count
    - user_products.count
    - variants.count

