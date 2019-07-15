view: i_ds_vw_plaintiff_selections_20190713 {
  sql_table_name: dbo.iDS_vw_PlaintiffSelections_20190713 ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: correct_bucket {
    type: string
    sql: ${TABLE}."Correct Bucket" ;;
  }

  dimension: draw {
    type: string
    sql: ${TABLE}.Draw ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: ids_id {
    type: number
    sql: ${TABLE}.ids_ID ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.Lat ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.Long ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: plaintiff_id {
    type: string
    sql: ${TABLE}."Plaintiff ID" ;;
  }

  dimension: plaintiffs_counsel {
    type: string
    sql: ${TABLE}."Plaintiff's Counsel" ;;
  }

  dimension: random_selection_number {
    type: string
    sql: ${TABLE}."Random Selection Number" ;;
  }

  dimension: response_to_q14 {
    type: string
    sql: ${TABLE}."Response to Q14" ;;
  }

  dimension: response_to_q15 {
    type: string
    sql: ${TABLE}."Response to Q15" ;;
  }

  dimension: response_to_q47 {
    type: string
    sql: ${TABLE}."Response to Q47" ;;
  }

  dimension: response_to_q47_g {
    type: string
    sql: ${TABLE}."Response to Q47G" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
