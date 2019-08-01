view: i_ds_vw_plume_map {
  sql_table_name: dbo.iDS_vw_PlumeMap ;;

  dimension: ID {
#    type: string
    sql: ${TABLE}.ID;;
    map_layer_name: October
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
