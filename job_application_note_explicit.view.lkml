view: job_application_note_explicit {
  sql_table_name: api.JobApplicationNote_Explicit ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobApplicationId ;;
  }

  dimension: note_id {
    type: string
    sql: ${TABLE}.NoteId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_application.job_application_id, job_application.submitted_first_name, job_application.submitted_last_name]
  }
}
