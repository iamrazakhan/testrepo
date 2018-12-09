view: skill {
  sql_table_name: api.Skill ;;

  dimension: skill_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SkillId ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: display_index {
    type: number
    sql: ${TABLE}.DisplayIndex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.SubCategoryId ;;
  }

  measure: count {
    type: count
    drill_fields: [skill_id, name]
  }
}
