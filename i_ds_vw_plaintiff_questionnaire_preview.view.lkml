view: i_ds_vw_plaintiff_questionnaire_preview {
  sql_table_name: dbo.iDS_vw_Plaintiff_Questionnaire_Preview ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension_group: date_logged {
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
    sql: ${TABLE}.Date_Logged ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: ids_question_ref {
    type: string
    sql: ${TABLE}.ids_Question_ref ;;
  }

  dimension: ingested_record {
    type: number
    sql: ${TABLE}.Ingested_Record ;;
  }

  dimension: ingested_record_text {
    sql: case
      WHEN ${TABLE}.ingested_record = 0 THEN 'N'
                   ELSE 'Y'
            END ;;
  }

  dimension: plaintiff_number {
    type: string
    sql: ${TABLE}.PlaintiffNumber ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QuestionText ;;
  }

  dimension: xml_vol {
    type: string
    sql: ${TABLE}.XML_Vol ;;
  }

  dimension: Plaintiff_Name {
    type:  string
    sql: ${TABLE}.Plaintiff_Name ;;
  }

  dimension: Firm_of_record {
    type:  string
    sql: ${TABLE}.Firm_of_Record ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name]
  }
}
