view: job_order_custom_field {
  sql_table_name: api.JobOrderCustomField ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
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
    drill_fields: [job_order.job_order_id]
  }
}
