view: job_order_note_type {
  sql_table_name: api.JobOrderNoteType ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: email_default {
    type: string
    sql: ${TABLE}.EmailDefault ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: note_default {
    type: string
    sql: ${TABLE}.NoteDefault ;;
  }

  dimension: sms_default {
    type: string
    sql: ${TABLE}.SmsDefault ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
