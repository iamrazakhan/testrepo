view: job_order_status_log {
  sql_table_name: api.JobOrderStatusLog ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: new_status {
    type: string
    sql: ${TABLE}.NewStatus ;;
  }

  dimension: new_status_id {
    type: number
    sql: ${TABLE}.NewStatusId ;;
  }

  dimension: old_status {
    type: string
    sql: ${TABLE}.OldStatus ;;
  }

  dimension: old_status_id {
    type: number
    sql: ${TABLE}.OldStatusId ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.UniqueId ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.UpdatedAt ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_order.job_order_id]
  }
}
