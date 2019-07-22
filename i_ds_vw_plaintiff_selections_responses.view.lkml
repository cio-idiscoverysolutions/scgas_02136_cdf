view: i_ds_vw_plaintiff_selections_responses {
  sql_table_name: dbo.iDS_vw_PlaintiffSelections_Responses ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension: curated_answer {
    type: string
    sql: ${TABLE}.CuratedAnswer ;;
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

  dimension: question_cat {
    type: string
    sql: ${TABLE}.Question_Cat ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QuestionText ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }


  measure: count {
    type: count
    drill_fields: [plaintiff_name]
  }
}
