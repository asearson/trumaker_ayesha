- view: colors
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: code
    sql: ${TABLE}.code

  - dimension: fabric_id
    type: int
    # hidden: true
    sql: ${TABLE}.fabric_id

  - dimension: hue
    sql: ${TABLE}.hue

  - dimension: name
    sql: ${TABLE}.name

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
    - fabrics.count
    - variants.count

