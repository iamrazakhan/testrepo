view: job_order_skill_tag {
  sql_table_name: api.JobOrderSkillTag ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: skill_tag {
    type: string
    sql: ${TABLE}.SkillTag ;;
  }

  measure: count {
    type: count
    drill_fields: [job_order.job_order_id]
  }
}
