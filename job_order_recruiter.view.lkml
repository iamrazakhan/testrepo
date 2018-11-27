view: job_order_recruiter {
  sql_table_name: api.JobOrderRecruiter ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
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
