view: questionnairedata_split {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
   dimension: filepath {
     type: string
     sql: ${TABLE}.filepath ;;
   }
  #
   dimension: PlaintiffNumber {
     type: number
     sql: ${TABLE}.PlaintiffNumber ;;
   }
  #
   dimension: QuestionID {
     type: string
     sql: ${TABLE}.QuestionID ;;
   }
  #
  dimension: QuestionText {
    type: string
    sql: ${TABLE}.QuestionText ;;
  }
  #
  dimension: Answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }
  #
  dimension: ids_Question_Ref {
    type: string
    sql: ${TABLE}.ids_Question_Ref ;;
  }
  #
  dimension: Date_Logged {
    type: date
    sql: ${TABLE}.Date_Logged ;;
  }
  #
  dimension: CuratedAnswer {
    type: string
    sql: ${TABLE}.CuratedAnswer ;;
  }
  #
  dimension: IDS_Dupe {
    type: string
    sql: ${TABLE}.IDS_Dupe ;;
  }
  #
  dimension: BasicCuration {
    type: string
    sql: ${TABLE}.BasicCuration ;;
  }
  #
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
