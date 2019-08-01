view: i_ds_vw_plume_map_112015 {
  sql_table_name: dbo.iDS_vw_PlumeMap_112015 ;;

  dimension: id {
  #  primary_key: yes
   # type: number
    sql: ${TABLE}.ID ;;
    map_layer_name: November
  }

  dimension: ppm {
    type: number
    sql: ${TABLE}.PPM ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
