view: job_application_custom_field {
  sql_table_name: api.JobApplicationCustomField ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: job_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobApplicationId ;;
  }

  dimension: search_value {
    type: string
    sql: ${TABLE}.SearchValue ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [job_application.job_application_id, job_application.submitted_first_name, job_application.submitted_last_name]
  }
}
