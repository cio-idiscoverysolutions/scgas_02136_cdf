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

  dimension: coordinates {
    type:  string
    sql: ${TABLE}."Coordinates" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: plaintiffid {
    type: string
    sql: ${TABLE}.PlaintiffID ;;
    html:  <a href="https://idssda.looker.com/dashboards/258?Plaintiff%20Number.:={{Plaintiffid._value | encode_url }}" target="_blank">{{value}}  ;;

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

dimension: accuracy_score {
  type: number
  sql: ${TABLE}."Accuracy Score" ;;
}

dimension: Q24_AcuteInjury {
  type:  string
  sql: ${TABLE}."Q24_AcuteInjury" ;;
}

  dimension: Q25_ChronicInjury {
    type:  string
    sql: ${TABLE}."Q25_ChronicInjury" ;;
  }

  dimension: Q48_PropertyDamage {
    type:  string
    sql: ${TABLE}."Q48_PropertyDamage" ;;
  }

  dimension: Q49_LostValue {
    type:  string
    sql: ${TABLE}."Q49_LostValue" ;;
  }

  dimension: Q53_LostWages {
    type:  string
    sql: ${TABLE}."Q53_LostWages" ;;
  }


  dimension: Q56_PhysicalInjury {
    type:  string
    sql: ${TABLE}."Q56_PhysicalInjury" ;;
  }


  dimension: Q59_MentalInjury {
    type:  string
    sql: ${TABLE}."Q59_MentalInjury" ;;
  }


  dimension: Q63_MedicalMonitoring {
    type:  string
    sql: ${TABLE}."Q63_MedicalMonitoring" ;;
  }


  dimension: Q64_WrongfulDeath {
    type:  string
    sql: ${TABLE}."Q64_WrongfulDeath" ;;
  }























  measure: count {
    type: count
    drill_fields: [name]
  }
}
