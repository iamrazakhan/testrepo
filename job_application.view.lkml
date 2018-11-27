view: job_application {
  sql_table_name: api.JobApplication ;;

  dimension: job_application_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.JobApplicationId ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardId ;;
  }

  dimension: board_job_ad_id {
    type: number
    sql: ${TABLE}.BoardJobAdId ;;
  }

  dimension: candidate_id {
    type: number
    sql: ${TABLE}.CandidateId ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension_group: created_at_indexed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedAtIndexed ;;
  }

  dimension: created_by_user_id {
    type: number
    sql: ${TABLE}.CreatedByUserId ;;
  }

  dimension: has_cover_letter {
    type: number
    sql: ${TABLE}.HasCoverLetter ;;
  }

  dimension: has_resume {
    type: number
    sql: ${TABLE}.HasResume ;;
  }

  dimension: job_ad_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobAdId ;;
  }

  dimension: job_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobOrderId ;;
  }

  dimension: job_reference {
    type: string
    sql: ${TABLE}.JobReference ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.JobTitle ;;
  }

  dimension: manual {
    type: string
    sql: ${TABLE}.Manual ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OwnerUserId ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: review_stage {
    type: string
    sql: ${TABLE}.ReviewStage ;;
  }

  dimension: reviewed_at {
    type: string
    sql: ${TABLE}.ReviewedAt ;;
  }

  dimension: reviewed_by_contact_id {
    type: number
    sql: ${TABLE}.ReviewedByContactId ;;
  }

  dimension: reviewed_by_contact_id_indexed {
    type: number
    sql: ${TABLE}.ReviewedByContactIdIndexed ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: status_id_indexed {
    type: number
    sql: ${TABLE}.StatusIdIndexed ;;
  }

  dimension: submitted_email {
    type: string
    sql: ${TABLE}.SubmittedEmail ;;
  }

  dimension: submitted_first_name {
    type: string
    sql: ${TABLE}.SubmittedFirstName ;;
  }

  dimension: submitted_for_review_at {
    type: string
    sql: ${TABLE}.SubmittedForReviewAt ;;
  }

  dimension: submitted_for_review_by_user_id {
    type: number
    sql: ${TABLE}.SubmittedForReviewByUserId ;;
  }

  dimension: submitted_last_name {
    type: string
    sql: ${TABLE}.SubmittedLastName ;;
  }

  dimension: submitted_mobile {
    type: string
    sql: ${TABLE}.SubmittedMobile ;;
  }

  dimension: submitted_phone {
    type: string
    sql: ${TABLE}.SubmittedPhone ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.UpdatedAt ;;
  }

  dimension: updated_by_user_id {
    type: number
    sql: ${TABLE}.UpdatedByUserId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      job_application_id,
      submitted_first_name,
      submitted_last_name,
      job_order.job_order_id,
      job_ad.job_ad_id,
      job_application_attachment.count,
      job_application_custom_field.count,
      job_application_note.count,
      job_application_note_explicit.count,
      job_application_status_log.count,
      job_application_user_task.count
    ]
  }
}
