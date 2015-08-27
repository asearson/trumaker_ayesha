- connection: trumaker

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: attributed_orders
  from: order_calculation_revisions
  joins:
    - join: orders
      sql_on: attributed_orders.order_id = orders.id
      relationship: many_to_one
    
    - join: attributions
      sql_on: ${orders.user_id} = attributions.customer_id
      relationship: many_to_many
      
    - join: users
      sql_on: ${orders.user_id} = users.id
      relationship: many_to_one
    
    - join: selling_outfitter
      from: d_role
      sql_on: |
        selling_outfitter.order_id = ${orders.id}
        and selling_outfitter.sales_team_role_id = 6
      relationship: one_to_one
      
    - join: sourcing_outfitter
      from: d_role
      sql_on: |
        sourcing_outfitter.order_id = ${orders.id}
        and sourcing_outfitter.sales_team_role_id = 10
      relationship: one_to_one
      
    - join: senior_mentor
      from: d_role
      sql_on: |
        senior_mentor.order_id = ${orders.id}
        and senior_mentor.sales_team_role_id = 4
      relationship: one_to_one
      
    - join: mentor
      from: d_role
      sql_on: |
        mentor.order_id = ${orders.id}
        and mentor.sales_team_role_id = 5
      relationship: one_to_one
      
    - join: field_sales_director
      from: d_role
      sql_on: |
        field_sales_director.order_id = ${orders.id}
        and field_sales_director.sales_team_role_id = 2
      relationship: one_to_one
      
    - join: field_sales_leader
      from: d_role
      sql_on: |
        field_sales_leader.order_id = ${orders.id}
        and field_sales_leader.sales_team_role_id = 3
      relationship: one_to_one
      
    - join: regional_manager
      from: d_role
      sql_on: |
        regional_manager.order_id = ${orders.id}
        and regional_manager.sales_team_role_id = 1
      relationship: one_to_one


