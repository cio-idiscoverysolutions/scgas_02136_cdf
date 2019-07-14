view: i_ds_vw_plaintiff_selections_map_20190713 {
  sql_table_name: dbo.iDS_vw_PlaintiffSelectionsMap_20190713 ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
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

  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }

  dimension: plaintiffs {
    type: string
    sql: ${TABLE}."Plaintiff(s)" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
