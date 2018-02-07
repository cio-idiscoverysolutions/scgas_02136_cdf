view: 006_plaintiff_search {
  sql_table_name: dbo.iDS_vw_006_Plaintiff_Search ;;

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

  dimension: duplicate_response_received {
    type: number
    sql: ${TABLE}.Duplicate_Response_Received ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: inconsistent_response_received {
    type: number
    sql: ${TABLE}.Inconsistent_Response_Received ;;
  }

  dimension: ingested_record {
    type: number
    sql: ${TABLE}.Ingested_Record ;;
  }

  dimension: plaintiff_name {
    type: string
    sql: ${TABLE}.Plaintiff_Name ;;
  }

  dimension: plaintiff_number {
    type: string
    sql: ${TABLE}.Plaintiff_Number ;;
  }

  dimension: xml_vol {
    type: string
    sql: ${TABLE}.XML_Vol ;;
  }

  measure: count {
    type: count
    drill_fields: [plaintiff_name, file_name]
  }

  dimension: Firm_of_Record {
    type:  string
    sql: ${TABLE}.Firm_of_Record ;;
  }
}
