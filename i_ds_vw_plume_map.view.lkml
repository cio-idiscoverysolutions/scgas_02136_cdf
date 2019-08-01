view: i_ds_vw_plume_map {
  sql_table_name: dbo.iDS_vw_PlumeMap ;;

  dimension: color_1 {
#    type: string
    sql: ${TABLE}.Color_1
    map_layer_name: October ;;
  }

  dimension: ppm {
    type: number
    sql: ${TABLE}.PPM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
