view: job_ad_description {
  sql_table_name: api.JobAdDescription ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: html {
    type: string
    sql: ${TABLE}.Html ;;
  }

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_ad.job_ad_id]
  }
}
