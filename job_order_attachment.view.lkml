view: job_order_attachment {
  sql_table_name: api.JobOrderAttachment ;;

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

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension: created_by_user_id {
    type: number
    sql: ${TABLE}.CreatedByUserId ;;
  }

  dimension_group: expiry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Expiry ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.FileType ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.UpdatedAt ;;
  }

  dimension: updated_by_user_id {
    type: number
    sql: ${TABLE}.UpdatedByUserId ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name, job_order.job_order_id]
  }
}
