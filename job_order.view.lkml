view: job_order {
  sql_table_name: api.JobOrder ;;

  dimension: job_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: category_id1 {
    type: number
    sql: ${TABLE}.CategoryId1 ;;
  }

  dimension: closed_at {
    type: string
    sql: ${TABLE}.ClosedAt ;;
  }

  dimension: closed_by_user_id {
    type: number
    sql: ${TABLE}.ClosedByUserId ;;
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

  dimension: days_per_week {
    type: number
    sql: ${TABLE}.DaysPerWeek ;;
  }

  dimension: duration_period {
    type: number
    sql: ${TABLE}.DurationPeriod ;;
  }

  dimension: duration_unit {
    type: string
    sql: ${TABLE}.DurationUnit ;;
  }

  dimension: fee_estimated_total {
    type: number
    sql: ${TABLE}.FeeEstimatedTotal ;;
  }

  dimension: fee_rate {
    type: number
    sql: ${TABLE}.FeeRate ;;
  }

  dimension: fee_rate_type {
    type: string
    sql: ${TABLE}.FeeRateType ;;
  }

  dimension: hours_per_week {
    type: number
    sql: ${TABLE}.HoursPerWeek ;;
  }

  dimension: job_description {
    type: string
    sql: ${TABLE}.JobDescription ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.JobTitle ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.LocationId ;;
  }

  dimension: location_id1 {
    type: number
    sql: ${TABLE}.LocationId1 ;;
  }

  dimension: number_of_jobs {
    type: number
    sql: ${TABLE}.NumberOfJobs ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OwnerUserId ;;
  }

  dimension: salary_rate_high {
    type: number
    sql: ${TABLE}.SalaryRateHigh ;;
  }

  dimension: salary_rate_low {
    type: number
    sql: ${TABLE}.SalaryRateLow ;;
  }

  dimension: salary_unit {
    type: string
    sql: ${TABLE}.SalaryUnit ;;
  }

  dimension: skill_tag_operator {
    type: string
    sql: ${TABLE}.SkillTagOperator ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: start_immediate {
    type: string
    sql: ${TABLE}.StartImmediate ;;
  }

  dimension: start_relative_period {
    type: number
    sql: ${TABLE}.StartRelativePeriod ;;
  }

  dimension: start_relative_unit {
    type: string
    sql: ${TABLE}.StartRelativeUnit ;;
  }

  dimension_group: start_specific {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.StartSpecificDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.SubCategoryId ;;
  }

  dimension: sub_location_id {
    type: number
    sql: ${TABLE}.SubLocationId ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.UpdatedAt ;;
  }

  dimension: updated_by_user_id {
    type: number
    sql: ${TABLE}.UpdatedByUserId ;;
  }

  dimension: user_favourite {
    type: string
    sql: ${TABLE}.UserFavourite ;;
  }

  dimension: work_type_id {
    type: number
    sql: ${TABLE}.WorkTypeId ;;
  }

  dimension: workplace_address_id {
    type: string
    sql: ${TABLE}.WorkplaceAddressId ;;
  }

  dimension: workplace_company_id {
    type: number
    sql: ${TABLE}.WorkplaceCompanyId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      job_order_id,
      job_ad.count,
      job_application.count,
      job_order_attachment.count,
      job_order_attachment_latest.count,
      job_order_custom_field.count,
      job_order_note.count,
      job_order_note_explicit.count,
      job_order_recruiter.count,
      job_order_skill_tag.count,
      job_order_statistics.count,
      job_order_status_log.count,
      job_order_user_task.count
    ]
  }
}
