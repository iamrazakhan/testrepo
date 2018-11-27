view: job_board {
  sql_table_name: api.JobBoard ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardId ;;
  }

  dimension: board_name {
    type: string
    sql: ${TABLE}.BoardName ;;
  }

  dimension: partner_board_id {
    type: string
    sql: ${TABLE}.PartnerBoardId ;;
  }

  measure: count {
    type: count
    drill_fields: [board_name]
  }
}
