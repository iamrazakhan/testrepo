view: job_ad_screening_question_list_value {
  sql_table_name: api.JobAdScreeningQuestionListValue ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: list_value {
    type: string
    sql: ${TABLE}.ListValue ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.QuestionId ;;
  }

  dimension: screen_id {
    type: number
    sql: ${TABLE}.ScreenId ;;
  }

  measure: count {
    type: count
    drill_fields: [job_ad.job_ad_id]
  }
}
