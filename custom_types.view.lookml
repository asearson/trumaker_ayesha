- view: custom_types
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

  - dimension: description
    sql: ${TABLE}.description

  - dimension: name
    sql: ${TABLE}.name

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: short
    sql: ${TABLE}.short

  - dimension: sku
    sql: ${TABLE}.sku

  - dimension: user_choice
    type: yesno
    sql: ${TABLE}.user_choice

  - dimension: xml_name
    sql: ${TABLE}.xml_name

  - measure: count
    type: count
    drill_fields: [id, xml_name, name, customizations.count, user_customizations.count]

