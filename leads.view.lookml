- view: leads
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: acquisition_landing_url
    sql: ${TABLE}.acquisition_landing_url

  - dimension: acquisition_referrer_url
    sql: ${TABLE}.acquisition_referrer_url

  - dimension_group: acquisition_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.acquisition_timestamp

  - dimension: ask
    sql: ${TABLE}.ask

  - dimension_group: assigned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.assigned_at

  - dimension_group: assigned_region
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.assigned_region_at

  - dimension: client_referrer_id
    type: int
    sql: ${TABLE}.client_referrer_id

  - dimension: company
    sql: ${TABLE}.company

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: credits_applied
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.credits_applied_at

  - dimension: current_landing_url
    sql: ${TABLE}.current_landing_url

  - dimension: current_referrer_url
    sql: ${TABLE}.current_referrer_url

  - dimension_group: current_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."current_timestamp"

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: email
    sql: ${TABLE}.email

  - dimension: first_added_by_id
    type: int
    sql: ${TABLE}.first_added_by_id

  - dimension_group: first_contact
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_contact_at

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: first_outfitter_lead_id
    type: int
    sql: ${TABLE}.first_outfitter_lead_id

  - dimension_group: first_purchased
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_purchased_at

  - dimension_group: fitted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.fitted_at

  - dimension: gift_card_id
    type: int
    # hidden: true
    sql: ${TABLE}.gift_card_id

  - dimension: in_area
    type: yesno
    sql: ${TABLE}.in_area

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension_group: last_notified
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_notified_on

  - dimension: lead_type
    sql: ${TABLE}.lead_type

  - dimension: mailchimp_leid
    sql: ${TABLE}.mailchimp_leid

  - dimension_group: needs_reassignment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.needs_reassignment_at

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: num_emails
    type: int
    sql: ${TABLE}.num_emails

  - dimension: outfitter_referrer_id
    type: int
    sql: ${TABLE}.outfitter_referrer_id

  - dimension: outfitter_source_id
    type: int
    sql: ${TABLE}.outfitter_source_id

  - dimension_group: outfitter_sourced
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.outfitter_sourced_at

  - dimension_group: owned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.owned_at

  - dimension: owner_id
    type: int
    sql: ${TABLE}.owner_id

  - dimension_group: ownership_expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ownership_expires_at

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: prefered_contact_method
    sql: ${TABLE}.prefered_contact_method

  - dimension_group: qualified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.qualified_at

  - dimension_group: referred
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.referred_at

  - dimension: referrer_code
    sql: ${TABLE}.referrer_code

  - dimension: referrer_email
    sql: ${TABLE}.referrer_email

  - dimension_group: removed_mailchimp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.removed_mailchimp_at

  - dimension: sales_region_id
    type: int
    # hidden: true
    sql: ${TABLE}.sales_region_id

  - dimension: source
    sql: ${TABLE}.source

  - dimension: source_id
    sql: ${TABLE}.source_id

  - dimension: source_user_name
    sql: ${TABLE}.source_user_name

  - dimension: state
    sql: ${TABLE}.state

  - dimension: subscribe
    type: yesno
    sql: ${TABLE}.subscribe

  - dimension: sync_to_desk_com
    type: yesno
    sql: ${TABLE}.sync_to_desk_com

  - dimension_group: synced_mailchimp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.synced_mailchimp_at

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

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
    - source_user_name
    - users.id
    - users.first_name
    - users.last_name
    - users.nickname
    - sales_regions.id
    - sales_regions.name
    - gift_cards.id
    - appointment_leads.count
    - external_lead_messages.count
    - external_lead_posts.count
    - gift_cards.count
    - outfitter_leads.count
    - quiz_results.count

