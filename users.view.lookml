- view: users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: about
    sql: ${TABLE}.about

  - dimension: access_token
    sql: ${TABLE}.access_token

  - dimension: ancestry
    sql: ${TABLE}.ancestry

  - dimension: ancestry_depth
    type: int
    sql: ${TABLE}.ancestry_depth

  - dimension_group: approved_fit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.approved_fit_at

  - dimension: approved_fit_status
    sql: ${TABLE}.approved_fit_status

  - dimension_group: approved_for_company_generated_appts
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.approved_for_company_generated_appts_at

  - dimension_group: approved_to_sell_blazers
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.approved_to_sell_blazers_at

  - dimension: authentication_token
    sql: ${TABLE}.authentication_token

  - dimension: avatar_url
    sql: ${TABLE}.avatar_url

  - dimension_group: birth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.birth_date

  - dimension_group: blazer_approved_fit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.blazer_approved_fit_at

  - dimension: cached_tag_list
    sql: ${TABLE}.cached_tag_list

  - dimension: client_blazer_measurements_complete
    type: yesno
    sql: ${TABLE}.client_blazer_measurements_complete

  - dimension: client_shirt_measurements_complete
    type: yesno
    sql: ${TABLE}.client_shirt_measurements_complete

  - dimension: cohort
    sql: ${TABLE}.cohort

  - dimension: commission_rate_id
    type: int
    # hidden: true
    sql: ${TABLE}.commission_rate_id

  - dimension_group: confirmation_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmation_sent_at

  - dimension: confirmation_token
    sql: ${TABLE}.confirmation_token

  - dimension_group: confirmed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmed_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: current_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.current_sign_in_at

  - dimension: current_sign_in_ip
    sql: ${TABLE}.current_sign_in_ip

  - dimension_group: customer_since
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_since

  - dimension: default_payment_profile_id
    type: int
    sql: ${TABLE}.default_payment_profile_id

  - dimension: desk_com_href
    sql: ${TABLE}.desk_com_href

  - dimension: email
    sql: ${TABLE}.email

  - dimension: email_count
    type: int
    sql: ${TABLE}.email_count

  - dimension: encrypted_password
    sql: ${TABLE}.encrypted_password

  - dimension: facebook
    sql: ${TABLE}.facebook

  - dimension: failed_attempts
    type: int
    sql: ${TABLE}.failed_attempts

  - dimension: fb_token
    sql: ${TABLE}.fb_token

  - dimension: finished_orders_count
    type: int
    sql: ${TABLE}.finished_orders_count

  - dimension_group: first_delivered
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_delivered_at

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: has_desk_com_interactions
    type: yesno
    sql: ${TABLE}.has_desk_com_interactions

  - dimension: hometown
    sql: ${TABLE}.hometown

  - dimension: instagram
    sql: ${TABLE}.instagram

  - dimension: items_purchased_count
    type: int
    sql: ${TABLE}.items_purchased_count

  - dimension_group: last_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_activity_at

  - dimension_group: last_fetch_facebook
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_fetch_facebook

  - dimension_group: last_fetch_google_oauth2
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_fetch_google_oauth2

  - dimension_group: last_fetch_instagram
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_fetch_instagram

  - dimension_group: last_fetch_linkedin
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_fetch_linkedin

  - dimension_group: last_fetch_twitter
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_fetch_twitter

  - dimension_group: last_first_order_sale
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_first_order_sale_at

  - dimension_group: last_iphone_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_iphone_activity_at

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension_group: last_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_request_at

  - dimension_group: last_sale
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_sale_at

  - dimension_group: last_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_sign_in_at

  - dimension: last_sign_in_ip
    sql: ${TABLE}.last_sign_in_ip

  - dimension: location
    sql: ${TABLE}.location

  - dimension_group: locked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.locked_at

  - dimension: mailchimp_leid
    sql: ${TABLE}.mailchimp_leid

  - dimension: manager_id
    type: int
    sql: ${TABLE}.manager_id

  - dimension: measurements_count
    type: int
    sql: ${TABLE}.measurements_count

  - dimension: measurements_note
    sql: ${TABLE}.measurements_note

  - dimension: measurements_status
    sql: ${TABLE}.measurements_status

  - dimension: message
    sql: ${TABLE}.message

  - dimension: mobile_version
    sql: ${TABLE}.mobile_version

  - dimension: monogram_str
    sql: ${TABLE}.monogram_str

  - dimension: nickname
    sql: ${TABLE}.nickname

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: parent_gets_commission
    type: yesno
    sql: ${TABLE}.parent_gets_commission

  - dimension: password_salt
    sql: ${TABLE}.password_salt

  - dimension: pinterest
    sql: ${TABLE}.pinterest

  - dimension: product_count
    type: int
    sql: ${TABLE}.product_count

  - dimension: profile_url
    sql: ${TABLE}.profile_url

  - dimension: provider
    sql: ${TABLE}.provider

  - dimension: referral_count
    type: int
    sql: ${TABLE}.referral_count

  - dimension: referral_token
    sql: ${TABLE}.referral_token

  - dimension: remake_count
    type: int
    sql: ${TABLE}.remake_count

  - dimension_group: remember_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.remember_created_at

  - dimension: remember_token
    sql: ${TABLE}.remember_token

  - dimension_group: removed_mailchimp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.removed_mailchimp_at

  - dimension_group: reset_password_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reset_password_sent_at

  - dimension: reset_password_token
    sql: ${TABLE}.reset_password_token

  - dimension: sales_region_id
    type: int
    # hidden: true
    sql: ${TABLE}.sales_region_id

  - dimension: secondary_email
    sql: ${TABLE}.secondary_email

  - dimension: sign_in_count
    type: int
    sql: ${TABLE}.sign_in_count

  - dimension: source
    sql: ${TABLE}.source

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension: state
    sql: ${TABLE}.state

  - dimension: stylist_id
    type: int
    sql: ${TABLE}.stylist_id

  - dimension: sync_to_desk_com
    type: yesno
    sql: ${TABLE}.sync_to_desk_com

  - dimension_group: synced_mailchimp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.synced_mailchimp_at

  - dimension_group: team_qualified
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.team_qualified_on

  - dimension: team_qualifing_amount
    type: int
    sql: ${TABLE}.team_qualifing_amount

  - dimension: test_only
    sql: ${TABLE}.test_only

  - dimension: time_zone_area_id
    type: int
    # hidden: true
    sql: ${TABLE}.time_zone_area_id

  - dimension: twitter
    sql: ${TABLE}.twitter

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension: unconfirmed_email
    sql: ${TABLE}.unconfirmed_email

  - dimension: unlock_token
    sql: ${TABLE}.unlock_token

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_domain_id
    type: int
    sql: ${TABLE}.user_domain_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: zip_code
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - first_name
    - last_name
    - nickname
    - time_zone_areas.name
    - time_zone_areas.id
    - commission_rates.id
    - sales_regions.id
    - sales_regions.name
    - access_tokens.count
    - appointments.count
    - approve_fits.count
    - case_photos.count
    - comments.count
    - commissions.count
    - deprecated_user_fit_statuses.count
    - easements.count
    - external_connections.count
    - external_lead_messages.count
    - external_lead_posts.count
    - inbound_emails.count
    - leader_boards.count
    - leads.count
    - measurement_images.count
    - measurements.count
    - orders.count
    - outfits.count
    - outfitter_banking_infos.count
    - payment_profiles.count
    - pg_stat_statements.count
    - question_answers.count
    - return_authorizations.count
    - store_credits.count
    - user_auths.count
    - user_bonus_plans.count
    - user_customizations.count
    - user_products.count
    - user_promotions.count
    - user_roles.count
    - user_showrooms.count
    - user_team_bonus_plans.count

