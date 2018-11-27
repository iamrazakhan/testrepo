view: job_order_source {
  sql_table_name: api.JobOrderSource ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
