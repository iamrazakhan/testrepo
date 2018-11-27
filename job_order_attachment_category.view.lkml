view: job_order_attachment_category {
  sql_table_name: api.JobOrderAttachmentCategory ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: attachment_type {
    type: string
    sql: ${TABLE}.AttachmentType ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
