- view: d_role
  derived_table:
    sql: |
      select
        attributions.agent_id,
        (users.first_name || ' ' || users.last_name) as name,
        attributions.customer_id,
        attributions.sales_team_role_id,
        orders.id as order_id,
        cast(orders.id::varchar || attributions.sales_team_role_id::varchar as int) as u_id
      from
        orders
      inner join
        order_calculation_revisions
          on order_calculation_revisions.order_id = orders.id
      inner join
        attributions
          on attributions.customer_id = orders.user_id 
      left join
        users
          on attributions.agent_id = users.id 
      where
        (attributions.expires_at IS NULL
          or
        orders.completed_at <= attributions.expires_at)
      and
        orders.completed_at >= attributions.active_at
      group by 
        attributions.agent_id,
        (users.first_name || ' ' || users.last_name),
        attributions.customer_id,
        attributions.sales_team_role_id,
        orders.id

  fields:
    
  - dimension: id
    type: int
    sql: ${TABLE}.u_id
    primary_key: true

  - dimension: agent_id
    type: number
    sql: ${TABLE}.agent_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: customer_id
    type: number
    sql: ${TABLE}.customer_id

  - dimension: sales_team_role_id
    type: number
    sql: ${TABLE}.sales_team_role_id

  - dimension: order_id
    type: number
    sql: ${TABLE}.order_id
    
  - measure: count
    type: count
    drill_fields: detail*

  sets:
    detail:
      - agent_id
      - name
      - customer_id
      - sales_team_role_id
      - order_id
