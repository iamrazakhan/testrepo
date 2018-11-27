view: job_order_attachment_latest {
  sql_table_name: api.JobOrderAttachmentLatest ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: attachment_id {
    type: number
    sql: ${TABLE}.AttachmentId ;;
  }

  dimension: attachment_type {
    type: string
    sql: ${TABLE}.AttachmentType ;;
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
