view: job_application_custom_field_list_value {
  sql_table_name: api.JobApplicationCustomFieldListValue ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: list_value {
    type: string
    sql: ${TABLE}.ListValue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
