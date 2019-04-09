view: i_ds_vw_documents_received {
  sql_table_name: dbo.iDS_vw_Documents_Received ;;

  dimension: date_received {
    type: string
    sql: ${TABLE}.Date_Received ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.File_Name ;;
  }

  dimension: plaintiff_name {
    type: string
    sql: ${TABLE}.Plaintiff_Name ;;
  }

  dimension: plaintiff_number {
    type: string
    sql: ${TABLE}.Plaintiff_Number ;;
  }

  dimension_group: staged {
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
    sql: ${TABLE}.Staged_Date ;;
  }

dimension: Date_Served {
  type:  date
  sql: ${TABLE}.Date_Served ;;
}



  measure: count {
    type: count
    drill_fields: [plaintiff_name, file_name]
  }
}
