view: job_ad {
  sql_table_name: api.JobAd ;;

  dimension: job_ad_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: bullet_point1 {
    type: string
    sql: ${TABLE}.BulletPoint1 ;;
  }

  dimension: bullet_point2 {
    type: string
    sql: ${TABLE}.BulletPoint2 ;;
  }

  dimension: bullet_point3 {
    type: string
    sql: ${TABLE}.BulletPoint3 ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyId ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.ContactId ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension: created_by_user_id {
    type: number
    sql: ${TABLE}.CreatedByUserId ;;
  }

  dimension: expire_at {
    type: string
    sql: ${TABLE}.ExpireAt ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OwnerUserId ;;
  }

  dimension: post_at {
    type: string
    sql: ${TABLE}.PostAt ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      job_ad_id,
      job_order.job_order_id,
      job_ad_description.count,
      job_ad_job_board.count,
      job_ad_screening_question.count,
      job_ad_screening_question_list_value.count,
      job_application.count,
      job_board_job_ad.count,
      job_board_job_ad_portal_field.count
    ]
  }
}
