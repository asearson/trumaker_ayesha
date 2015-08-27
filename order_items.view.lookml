- view: order_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: bonus_rate
    type: number
    sql: ${TABLE}.bonus_rate

  - dimension: build
    type: int
    sql: ${TABLE}.build

  - dimension_group: canceled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.canceled_at

  - dimension: cart_item_id
    type: int
    # hidden: true
    sql: ${TABLE}.cart_item_id

  - dimension: commission_rate
    type: number
    sql: ${TABLE}.commission_rate

  - dimension: commissionable_value
    type: number
    sql: ${TABLE}.commissionable_value

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: delivered
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delivered_at

  - dimension: factory_awb
    sql: ${TABLE}.factory_awb

  - dimension_group: factory_confirm
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.factory_confirm_at

  - dimension_group: factory_confirmed_finished
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.factory_confirmed_finished_at

  - dimension_group: factory_confirmed_production
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.factory_confirmed_production_at

  - dimension: factory_error_msg
    sql: ${TABLE}.factory_error_msg

  - dimension: factory_item_type
    sql: ${TABLE}.factory_item_type

  - dimension: factory_name
    sql: ${TABLE}.factory_name

  - dimension_group: factory_received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.factory_received_at

  - dimension: factory_status
    sql: ${TABLE}.factory_status

  - dimension_group: factory_status
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.factory_status_date

  - dimension_group: factory_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.factory_updated

  - dimension: factory_updated_hash
    sql: ${TABLE}.factory_updated_hash

  - dimension: final_price
    type: int
    sql: ${TABLE}.final_price

  - dimension_group: fit_approved
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.fit_approved_at

  - dimension: fit_id
    type: int
    # hidden: true
    sql: ${TABLE}.fit_id

  - dimension: item_type
    sql: ${TABLE}.item_type

  - dimension_group: on_hold
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.on_hold_at

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: priority
    sql: ${TABLE}.priority

  - dimension: purchase_immediately
    type: yesno
    sql: ${TABLE}.purchase_immediately

  - dimension_group: ready_to_ship
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ready_to_ship_at

  - dimension_group: release_to_factory
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.release_to_factory_at

  - dimension: remake_num
    type: int
    sql: ${TABLE}.remake_num

  - dimension: shipment_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipment_id

  - dimension_group: shipped_from_factory
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.shipped_from_factory_at

  - dimension: shipper_id
    type: int
    # hidden: true
    sql: ${TABLE}.shipper_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: stylist_id
    type: int
    sql: ${TABLE}.stylist_id

  - dimension: test_only
    sql: ${TABLE}.test_only

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

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
    - factory_name
    - cart_items.id
    - shippers.id
    - orders.id
    - variants.id
    - variants.name
    - shipments.id
    - fits.id
    - fits.name
    - gift_cards.count
    - order_item_customizations.count
    - order_item_factory_statuses.count
    - order_item_notations.count
    - return_items.count

