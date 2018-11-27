view: job_application_user_task {
  sql_table_name: api.JobApplicationUserTask ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobApplicationId ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_application.job_application_id, job_application.submitted_first_name, job_application.submitted_last_name]
  }
}
