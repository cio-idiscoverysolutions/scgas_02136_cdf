view: i_ds_vw_plaintiff_full_q_text_search {
  sql_table_name: dbo.iDS_vw_Plaintiff_Full_Q_Text_Search ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension_group: date_logged {
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
    sql: ${TABLE}.Date_Logged ;;
  }

  dimension: firm_of_record {
    type: string
    sql: ${TABLE}.Firm_Of_Record ;;
  }

  dimension: ids_question_ref {
    type: string
    sql: ${TABLE}.ids_Question_Ref ;;
  }

  dimension: plaintiff_name {
    type: string
    sql: ${TABLE}.PlaintiffName ;;
  }

  dimension: plaintiff_number {
    type: string
    sql: ${TABLE}.PlaintiffNumber ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QuestionText ;;
  }

  dimension: search_answer {
    type: string
    sql: ${TABLE}.Search_Answer ;;
  }

  dimension: search_question {
    type: string
    sql: ${TABLE}.Search_Question ;;
  }

  measure: count {
    type: count
    drill_fields: [plaintiff_name]
  }
}
