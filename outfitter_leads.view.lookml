- view: outfitter_leads
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: actions_taken
    type: int
    sql: ${TABLE}.actions_taken

  - dimension: all_info
    sql: ${TABLE}.all_info

  - dimension_group: assigned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.assigned_at

  - dimension: bucket
    sql: ${TABLE}.bucket

  - dimension: city
    sql: ${TABLE}.city

  - dimension: client_referrer_id
    type: int
    sql: ${TABLE}.client_referrer_id

  - dimension: company
    sql: ${TABLE}.company

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: deleted
    type: yesno
    sql: ${TABLE}.deleted

  - dimension: email
    sql: ${TABLE}.email

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension_group: follow_up
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.follow_up_on

  - dimension: ignored
    type: yesno
    sql: ${TABLE}.ignored

  - dimension_group: last_contacted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_contacted_at

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension: lead_id
    type: int
    # hidden: true
    sql: ${TABLE}.lead_id

  - dimension: nick
    sql: ${TABLE}.nick

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: outfitter_id
    type: int
    sql: ${TABLE}.outfitter_id

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: profile_picture_url
    sql: ${TABLE}.profile_picture_url

  - dimension: qualification
    sql: ${TABLE}.qualification

  - dimension_group: referred
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.referred_at

  - dimension: source
    sql: ${TABLE}.source

  - dimension: source_id
    sql: ${TABLE}.source_id

  - dimension_group: step1
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.step1_at

  - dimension: step1_type
    sql: ${TABLE}.step1_type

  - dimension_group: step2
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.step2_at

  - dimension: step2_type
    sql: ${TABLE}.step2_type

  - dimension_group: step3
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.step3_at

  - dimension: step3_type
    sql: ${TABLE}.step3_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zip_code
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - last_name
    - first_name
    - leads.last_name
    - leads.first_name
    - leads.id
    - leads.source_user_name

