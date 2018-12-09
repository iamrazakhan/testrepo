connection: "import_db_for_poc"

# include all the views
include: "*.view"

explore: job_order {
  label: "Jobs Explore"
  join: job_ad {
    type:  left_outer
    sql_on:  ${job_order.job_order_id}=${job_ad.job_order_id} ;;
    relationship: one_to_many
}
  join: company {
    type: left_outer
    sql_on: ${company.company_id} = ${job_order.company_id} ;;
    relationship: one_to_many
    }
join: job_order_statistics {
  type: left_outer
  sql_on: ${job_order.account_id} = ${job_order_statistics.account_id}   ;;
  relationship:  many_to_many
}
  }
