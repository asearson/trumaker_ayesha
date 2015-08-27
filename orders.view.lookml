- view: orders
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: billing_information_finished
    sql: ${TABLE}.billing_information_finished

  - dimension_group: calculated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.calculated_at

  - dimension: calculated_commissionable_amount
    type: number
    sql: ${TABLE}.calculated_commissionable_amount

  - dimension: calculated_coupon_discount
    type: number
    sql: ${TABLE}.calculated_coupon_discount

  - dimension: calculated_customer_total
    type: number
    sql: ${TABLE}.calculated_customer_total

  - dimension: calculated_deal_discount
    type: number
    sql: ${TABLE}.calculated_deal_discount

  - dimension: calculated_merchandise_total
    type: number
    sql: ${TABLE}.calculated_merchandise_total

  - dimension: calculated_sales_amount
    type: number
    sql: ${TABLE}.calculated_sales_amount

  - dimension: calculated_taxable_total
    type: number
    sql: ${TABLE}.calculated_taxable_total

  - dimension: cart_id
    type: int
    # hidden: true
    sql: ${TABLE}.cart_id

  - dimension_group: closed_ok
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.closed_ok_at

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at

  - dimension: configurations_finished
    sql: ${TABLE}.configurations_finished

  - dimension: coupon_code_id
    type: int
    # hidden: true
    sql: ${TABLE}.coupon_code_id

  - dimension: coupon_id
    type: int
    # hidden: true
    sql: ${TABLE}.coupon_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: credit_card_information_finished
    sql: ${TABLE}.credit_card_information_finished

  - dimension: credited_amount
    type: number
    sql: ${TABLE}.credited_amount

  - dimension: credited_order
    type: yesno
    sql: ${TABLE}.credited_order

  - dimension: customer_information_finished
    sql: ${TABLE}.customer_information_finished

  - dimension: deal_id
    type: int
    # hidden: true
    sql: ${TABLE}.deal_id

  - dimension_group: delivered_all
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delivered_all_at

  - dimension_group: delivered
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delivered_at

  - dimension: deprecated_bill_address_id
    type: int
    sql: ${TABLE}.deprecated_bill_address_id

  - dimension: email
    sql: ${TABLE}.email

  - dimension: exception_message
    sql: ${TABLE}.exception_message

  - dimension: exception_type
    sql: ${TABLE}.exception_type

  - dimension_group: factory_received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.factory_received_at

  - dimension_group: factory_released
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.factory_released_at

  - dimension: factory_status
    sql: ${TABLE}.factory_status

  - dimension: final_ship_address_id
    type: int
    sql: ${TABLE}.final_ship_address_id

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: measurements_finished
    sql: ${TABLE}.measurements_finished

  - dimension: number
    sql: ${TABLE}.number

  - dimension_group: on_hold
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.on_hold_at

  - dimension: order_domain_id
    type: int
    sql: ${TABLE}.order_domain_id

  - dimension: order_flow
    sql: ${TABLE}.order_flow

  - dimension: order_items_count
    type: int
    sql: ${TABLE}.order_items_count

  - dimension: packager_id
    type: int
    sql: ${TABLE}.packager_id

  - dimension: payment_method_id
    type: int
    sql: ${TABLE}.payment_method_id

  - dimension: payment_type
    sql: ${TABLE}.payment_type

  - dimension: product_selection_finished
    sql: ${TABLE}.product_selection_finished

  - dimension: questions_finished
    sql: ${TABLE}.questions_finished

  - dimension: revisions
    type: int
    sql: ${TABLE}.revisions

  - dimension: sales_region_id
    type: int
    # hidden: true
    sql: ${TABLE}.sales_region_id

  - dimension: ship_address_id
    type: int
    sql: ${TABLE}.ship_address_id

  - dimension: shipments_count
    type: int
    sql: ${TABLE}.shipments_count

  - dimension: shipped
    type: yesno
    sql: ${TABLE}.shipped

  - dimension: shipping_information_finished
    sql: ${TABLE}.shipping_information_finished

  - dimension: shipping_rate_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipping_rate_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: test_only
    sql: ${TABLE}.test_only

  - dimension: tracking_email
    type: int
    sql: ${TABLE}.tracking_email

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - deals.id
    - users.id
    - users.first_name
    - users.last_name
    - users.nickname
    - coupons.id
    - coupons.name
    - shipping_rates.id
    - coupon_codes.id
    - sales_regions.id
    - sales_regions.name
    - carts.id
    - approve_fits.count
    - case_photos.count
    - invoices.count
    - order_calculation_revisions.count
    - order_coupons.count
    - order_deals.count
    - order_items.count
    - return_authorizations.count
    - shipments.count

