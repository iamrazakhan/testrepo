view: job_ad_job_board {
  sql_table_name: api.JobAdJobBoard ;;

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

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: portal_hot_job {
    type: string
    sql: ${TABLE}.PortalHotJob ;;
  }

  dimension: portal_salary_details {
    type: string
    sql: ${TABLE}.PortalSalaryDetails ;;
  }

  dimension: portal_salary_rate_high {
    type: number
    sql: ${TABLE}.PortalSalaryRateHigh ;;
  }

  dimension: portal_salary_rate_low {
    type: number
    sql: ${TABLE}.PortalSalaryRateLow ;;
  }

  dimension: portal_salary_unit {
    type: string
    sql: ${TABLE}.PortalSalaryUnit ;;
  }

  dimension: portal_template {
    type: string
    sql: ${TABLE}.PortalTemplate ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.UpdatedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [board_name, job_ad.job_ad_id]
  }
}
