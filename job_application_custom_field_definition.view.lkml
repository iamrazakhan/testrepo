view: job_application_custom_field_definition {
  sql_table_name: api.JobApplicationCustomFieldDefinition ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: list_multi_select {
    type: string
    sql: ${TABLE}.ListMultiSelect ;;
  }

  dimension: mandatory {
    type: string
    sql: ${TABLE}.Mandatory ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: text_max_length {
    type: number
    sql: ${TABLE}.TextMaxLength ;;
  }

  dimension: text_multi_line {
    type: string
    sql: ${TABLE}.TextMultiLine ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
