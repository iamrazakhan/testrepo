view: job_application_status {
  sql_table_name: api.JobApplicationStatus ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: default {
    type: string
    sql: ${TABLE}."Default" ;;
  }

  dimension: default_rejected {
    type: string
    sql: ${TABLE}.DefaultRejected ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: rejected {
    type: string
    sql: ${TABLE}.Rejected ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: workflow_forecast {
    type: number
    sql: ${TABLE}.WorkflowForecast ;;
  }

  dimension: workflow_progress {
    type: string
    sql: ${TABLE}.WorkflowProgress ;;
  }

  dimension: workflow_stage {
    type: string
    sql: ${TABLE}.WorkflowStage ;;
  }

  dimension: workflow_step {
    type: number
    sql: ${TABLE}.WorkflowStep ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
