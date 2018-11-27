view: job_order_note {
  sql_table_name: api.JobOrderNote ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: note_id {
    type: string
    sql: ${TABLE}.NoteId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_order.job_order_id]
  }
}
