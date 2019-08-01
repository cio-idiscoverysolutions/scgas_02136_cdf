view: i_ds_vw_plaintiff_selections_map_20190713 {
  sql_table_name: dbo.iDS_vw_PlaintiffSelectionsMap_20190713 ;;

  dimension: Address {
    type: string
    sql: ${TABLE}.Address ;;

  }

  dimension: accuracy_score {
    type: number
    sql: ${TABLE}."Accuracy Score" ;;
  }



  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }


  dimension: loc {
    type: location
    sql_latitude:${TABLE}.Lat ;;
    sql_longitude:${TABLE}.Long ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: October {
  #  sql: ${TABLE}.geometry ;;
    map_layer_name: October
  }



dimension: Coordinates {
  type:  string
  sql: ${TABLE}.Coordinates ;;
  html:  <a href="https://idssda.looker.com/dashboards/327?Coordinates=%22{{Coordinates._value | encode_url }}%22" target="_new">{{value}} ;;
}

  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }

  dimension: plaintiffs {
    type: string
    sql: ${TABLE}."Plaintiff(s)" ;;
  }

dimension: Plaintiff_count {
  type:  number
  sql: ${TABLE}."Plaintiff_Count" ;;
}

  dimension: AcuteInjury_count {
    type:  number
    sql: ${TABLE}."AcuteInjury_Count" ;;
  }

  dimension: ChronicInjury_count {
    type:  number
    sql: ${TABLE}."ChronicInjury_Count" ;;
  }


  dimension: PropertyDamage_count {
    type:  number
    sql: ${TABLE}."PropertyDamage_Count" ;;
  }

  dimension: LostValue_count {
    type:  number
    sql: ${TABLE}."LostValue_Count" ;;
  }

  dimension: LostWages_count {
    type:  number
    sql: ${TABLE}."LostWages_Count" ;;
  }



  dimension: PhysicalInjury_count {
    type:  number
    sql: ${TABLE}."PhysicalInjury_Count" ;;
  }


  dimension: MentalInjury_count {
    type:  number
    sql: ${TABLE}."MentalInjury_Count" ;;
  }

  dimension: MedicalMonitoring_count {
    type:  number
    sql: ${TABLE}."MedicalMonitoring_Count" ;;
  }

  dimension: WrongfulDeath_count {
    type:  number
    sql: ${TABLE}."WrongfulDeath_Count" ;;
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
