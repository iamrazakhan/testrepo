view: job_order_statistics {
  sql_table_name: api.JobOrderStatistics ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_applications_active {
    type: number
    sql: ${TABLE}.JobApplicationsActive ;;
  }

  dimension: job_applications_new {
    type: number
    sql: ${TABLE}.JobApplicationsNew ;;
  }

  dimension: job_applications_total {
    type: number
    sql: ${TABLE}.JobApplicationsTotal ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_order.job_order_id]
  }
}
