view: job_board_portal_field {
  sql_table_name: api.JobBoardPortalField ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardId ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: field_type {
    type: string
    sql: ${TABLE}.FieldType ;;
  }

  dimension: parent_board_id {
    type: number
    sql: ${TABLE}.ParentBoardId ;;
  }

  dimension: parent_field_id {
    type: number
    sql: ${TABLE}.ParentFieldId ;;
  }

  measure: count {
    type: count
    drill_fields: [field_name]
  }
}
