view: company {
  sql_table_name: api.Company ;;

  dimension: parent_company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ParentCompanyId ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }
  dimension: accountid_companyid {
    type: number
    sql:  CONCAT(${account_id},${company_id}) ;;
  }


  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CompanyId ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension: created_by_user_id {
    type: number
    sql: ${TABLE}.CreatedByUserId ;;
  }

  dimension: has_logo {
    type: string
    sql: ${TABLE}.HasLogo ;;
  }

  dimension: name {
    label: "Company Name"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OwnerUserId ;;
  }

  dimension: primary_address_company_id {
    type: number
    sql: ${TABLE}.PrimaryAddressCompanyId ;;
  }

  dimension: primary_address_id {
    type: string
    sql: ${TABLE}.PrimaryAddressId ;;
  }

  dimension: primary_contact_id {
    type: number
    sql: ${TABLE}.PrimaryContactId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
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
    drill_fields: [parent_company_id, name, company.name, company.parent_company_id, company.count]
  }
}
