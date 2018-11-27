view: job_board_portal_field_value {
  sql_table_name: api.JobBoardPortalFieldValue ;;

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

  dimension: external_value {
    type: string
    sql: ${TABLE}.ExternalValue ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: parent_board_id {
    type: number
    sql: ${TABLE}.ParentBoardId ;;
  }

  dimension: parent_field_id {
    type: number
    sql: ${TABLE}.ParentFieldId ;;
  }

  dimension: parent_value_id {
    type: number
    sql: ${TABLE}.ParentValueId ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.ValueId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
