view: job_board_job_ad_portal_field {
  sql_table_name: api.JobBoardJobAdPortalField ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardId ;;
  }

  dimension: external_value {
    type: string
    sql: ${TABLE}.ExternalValue ;;
  }

  dimension: field_id {
    type: number
    sql: ${TABLE}.FieldId ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: parent_field_id {
    type: number
    sql: ${TABLE}.ParentFieldId ;;
  }

  dimension: parent_value_id {
    type: number
    sql: ${TABLE}.ParentValueId ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.UniqueId ;;
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
    drill_fields: [field_name, job_ad.job_ad_id]
  }
}
