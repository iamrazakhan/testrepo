view: job_ad_screening_question {
  sql_table_name: api.JobAdScreeningQuestion ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: field_type {
    type: string
    sql: ${TABLE}.FieldType ;;
  }

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: list_multi_select {
    type: string
    sql: ${TABLE}.ListMultiSelect ;;
  }

  dimension: mandatory {
    type: string
    sql: ${TABLE}.Mandatory ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.QuestionId ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QuestionText ;;
  }

  dimension: screen_id {
    type: number
    sql: ${TABLE}.ScreenId ;;
  }

  dimension: text_max_length {
    type: number
    sql: ${TABLE}.TextMaxLength ;;
  }

  measure: count {
    type: count
    drill_fields: [job_ad.job_ad_id]
  }
}
