view: questionnairedata_split {
  label: "Raw Questionnaire Data"
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
   dimension: filepath {
    label: "XML File Path"
    type: string
     sql: ${TABLE}.filepath ;;
   }
  #
   dimension: PlaintiffNumber {
    label: "Plaintiff No."
    type: number
    value_format: "0"
     sql: ${TABLE}.PlaintiffNumber ;;
   }
  #
  dimension: PlaintiffName {
    label: "Plaintiff Name"
    type:  string
    sql:  ${TABLE}.PlaintiffName ;;
  }
  #
   dimension: QuestionID {
    label: "Question XML ID"
    type: string
     sql: ${TABLE}.QuestionID ;;
   }
  #
  dimension: QuestionText {
    label: "Question Text"
    type: string
    sql: ${TABLE}.QuestionText ;;
  }
  #
  dimension: Answer {
    label: "Original Answer"
    type: string
    sql: ${TABLE}.Answer ;;
  }
  #
  dimension: ids_Question_Ref {
    label: "iDS Question ID"
    type: string
    suggestable: yes
    sql: ${TABLE}.ids_Question_Ref ;;
  }
  #
  dimension: Date_Logged {
    label: "Date of Load"
    type: date
    sql: ${TABLE}.Date_Logged ;;
  }
  #
  dimension: CuratedAnswer {
    label: "Curated Answer"
    type: string
    sql: ${TABLE}.CuratedAnswer ;;
  }
  #
   #
  dimension: BasicCuration {
    label: "Basic Curation"
    type: string
    sql: ${TABLE}.BasicCuration ;;
  }
  #
  dimension: AnswerLength {
    label: "Answer Length"
    type: number
    sql: ${TABLE}.AnswerLength ;;
  }
  #
  dimension: HasCuratedAnswer {
    label: "Has Curated Answer"
    type: number
    sql: ${TABLE}.HasCuratedAnswer ;;
  }
  #
  dimension: CuratedOn {
    label: "Curated On"
    type: string
    sql: ${TABLE}.CuratedOn ;;
  }
  #
  dimension: CuratedBy {
    label: "Curated By"
    type: string
    sql: ${TABLE}.CuratedBy ;;
  }
  #
  dimension: iDS_SpecialHandling {
    label: "iDS Special Handling (NULL = No issues, 1 = Exact Dupe, 2 = Inconsistent)"
    type: number
    sql: ${TABLE}.iDS_SpecialHandling ;;
  }
  measure: same_answer_count {
    type: count
   }

  measure: Distinct_Plaintiffs {
    type: count_distinct
    sql: ${TABLE}.PlaintiffNumber ;;
   }

  measure: Distinct_QuestionID {
    type: count_distinct
    sql: ${TABLE}.ids_Question_Ref ;;
  }

  dimension: Firm_Of_Record {
    type:  string
    sql: ${TABLE}.Firm_Of_Record ;;
  }

dimension: LatestResponse {
  type:  string
  sql: ${TABLE}.LatestResponse ;;
}


  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: questionnairedata_split {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
