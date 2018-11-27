view: job_order_user_task {
  sql_table_name: api.JobOrderUserTask ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_order.job_order_id]
  }
}
